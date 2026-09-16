import 'dart:async';
import 'dart:math' as math;

import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'database.dart';
import 'local_repository.dart';

enum SyncPhase { idle, pulling, pushing, uploading, error }

class SyncStatus {
  const SyncStatus({this.phase = SyncPhase.idle, this.lastPullAt, this.lastPushAt, this.lastError, this.online = true});
  final SyncPhase phase;
  final DateTime? lastPullAt;
  final DateTime? lastPushAt;
  final AppError? lastError;
  final bool online;
  bool get isBusy => phase == SyncPhase.pulling || phase == SyncPhase.pushing || phase == SyncPhase.uploading;

  SyncStatus copyWith({SyncPhase? phase, DateTime? lastPullAt, DateTime? lastPushAt, AppError? lastError, bool? online, bool clearError = false}) =>
      SyncStatus(
        phase: phase ?? this.phase,
        lastPullAt: lastPullAt ?? this.lastPullAt,
        lastPushAt: lastPushAt ?? this.lastPushAt,
        lastError: clearError ? null : (lastError ?? this.lastError),
        online: online ?? this.online,
      );
}

/// Mesin sync single-flight (TAD §8.4 langkah 3–4): push mutasi berurutan per seq, terapkan hasil
/// C1–C10, unggah foto setelah `attach_photo` diterima, pull bundle. Client tidak pernah menimpa
/// state server — hanya mengirim aksi.
class SyncEngine {
  SyncEngine({
    required this.db,
    required this.repo,
    required this.syncApi,
    required this.attachmentsApi,
    this.batchSize = 200,
    this.maxAttempts = 8,
    Duration Function(int attempts)? backoff,
    DateTime Function()? now,
    Uuid? uuid,
  })  : _backoff = backoff ?? defaultBackoff,
        _now = now ?? DateTime.now,
        _uuid = uuid ?? const Uuid();

  final BvDatabase db;
  final LocalWorkRepository repo;
  final SyncApi syncApi;
  final AttachmentsApi attachmentsApi;
  final int batchSize;
  final int maxAttempts;
  final Duration Function(int attempts) _backoff;
  final DateTime Function() _now;
  final Uuid _uuid;

  final _status = StreamController<SyncStatus>.broadcast();
  SyncStatus _current = const SyncStatus();
  Future<void>? _inflight;
  bool _again = false;

  Stream<SyncStatus> get status => _status.stream;
  SyncStatus get current => _current;

  /// Retry exponential: 5 s, 10 s, 20 s … maks 1 jam (TAD §8.4).
  static Duration defaultBackoff(int attempts) {
    final secs = math.min(3600, 5 * math.pow(2, math.max(0, attempts - 1)).toInt());
    return Duration(seconds: secs);
  }

  void _emit(SyncStatus s) {
    _current = s;
    if (!_status.isClosed) _status.add(s);
  }

  void setOnline(bool online) {
    if (online != _current.online) _emit(_current.copyWith(online: online));
  }

  /// Push → upload foto → pull. Single-flight: panggilan saat berjalan dijadwalkan sekali lagi setelah selesai.
  /// `force`: abaikan jadwal backoff (tarik-refresh / "Sinkronkan sekarang").
  Future<void> syncNow({bool pull = true, bool force = false}) {
    final running = _inflight;
    if (running != null) {
      _again = true;
      return running;
    }
    final f = _run(pull: pull, force: force).whenComplete(() {
      _inflight = null;
      if (_again) {
        _again = false;
        unawaited(syncNow(pull: pull));
      }
    });
    _inflight = f;
    return f;
  }

  Future<void> _run({required bool pull, bool force = false}) async {
    try {
      await push(force: force);
      await uploadPhotos();
      if (pull) await this.pull();
      _emit(_current.copyWith(phase: SyncPhase.idle, online: true, clearError: true));
    } on AppError catch (e) {
      _emit(_current.copyWith(phase: e.isNetwork ? SyncPhase.idle : SyncPhase.error, lastError: e, online: !e.isNetwork));
    }
  }

  // ------------------------------------------------------------------ pull

  /// `GET /sync/work-bundle?since=` → simpan ke drift; item `removed` dihapus lokal.
  Future<void> pull({bool full = false}) async {
    _emit(_current.copyWith(phase: SyncPhase.pulling));
    final since = full ? null : await repo.cursor();
    final bundle = await syncApi.workBundle(since: since);
    await repo.applyBundle(bundle);
    _emit(_current.copyWith(phase: SyncPhase.idle, lastPullAt: _now(), online: true, clearError: true));
  }

  // ------------------------------------------------------------------ push

  /// Kirim mutasi `pending` yang sudah waktunya, batch ≤ [batchSize], urut seq per object.
  Future<void> push({bool force = false}) async {
    while (true) {
      final now = _now();
      final rows = await (db.select(db.mutations)
            ..where((t) => t.status.equals('pending') & (force ? const Constant(true) : (t.nextAttemptAt.isNull() | t.nextAttemptAt.isSmallerOrEqualValue(now))))
            ..orderBy([(t) => OrderingTerm.asc(t.createdAt), (t) => OrderingTerm.asc(t.seq)])
            ..limit(batchSize))
          .get();
      if (rows.isEmpty) return;
      // Jangan kirim mutasi yang seq-nya menunggu mutasi lebih awal (failed/backoff) untuk object yang sama (C9).
      final blocked = <String>{};
      final ordered = <MutationRow>[];
      for (final r in rows) {
        if (blocked.contains(r.objectId)) continue;
        final earlier = await (db.select(db.mutations)
              ..where((t) => t.objectId.equals(r.objectId) & t.seq.isSmallerThanValue(r.seq) & t.status.isIn(const ['pending', 'failed', 'sending']))
              ..limit(1))
            .getSingleOrNull();
        if (earlier != null && !rows.any((x) => x.clientMutationId == earlier.clientMutationId)) {
          blocked.add(r.objectId);
          continue;
        }
        ordered.add(r);
      }
      if (ordered.isEmpty) return;
      _emit(_current.copyWith(phase: SyncPhase.pushing));
      final ids = ordered.map((r) => r.clientMutationId).toList();
      await (db.update(db.mutations)..where((t) => t.clientMutationId.isIn(ids))).write(const MutationsCompanion(status: Value('sending')));

      SyncPushOutput out;
      try {
        out = await syncApi.pushMutations(ordered.map(_toMutation).toList(), idempotencyKey: _uuid.v4());
      } on AppError catch (e) {
        // Jaringan/server: kembalikan ke pending dengan backoff; tetap "Pending Sync".
        await db.transaction(() async {
          for (final r in ordered) {
            final attempts = r.attempts + 1;
            await (db.update(db.mutations)..where((t) => t.clientMutationId.equals(r.clientMutationId))).write(MutationsCompanion(
              status: const Value('pending'),
              attempts: Value(attempts),
              nextAttemptAt: Value(now.add(_backoff(attempts))),
              lastError: Value(e.message),
            ));
          }
        });
        rethrow;
      }

      final touched = <String>{};
      await db.transaction(() async {
        final byId = {for (final r in ordered) r.clientMutationId: r};
        final seen = <String>{};
        for (final res in out.results) {
          final row = byId[res.clientMutationId];
          if (row == null) continue;
          seen.add(res.clientMutationId);
          touched.add(row.objectId);
          await _applyResult(row, res, out.serverTime);
        }
        // Mutasi yang tidak ada di hasil (mis. dilewati server karena SEQ_GAP object yang sama) → pending lagi.
        for (final r in ordered.where((r) => !seen.contains(r.clientMutationId))) {
          await (db.update(db.mutations)..where((t) => t.clientMutationId.equals(r.clientMutationId)))
              .write(const MutationsCompanion(status: Value('pending')));
          touched.add(r.objectId);
        }
        for (final id in touched) {
          await repo.refreshSyncState(id);
        }
      });
      _emit(_current.copyWith(phase: SyncPhase.idle, lastPushAt: _now(), online: true));
      if (rows.length < batchSize) return;
    }
  }

  Mutation _toMutation(MutationRow r) => Mutation(
        clientMutationId: r.clientMutationId,
        objectType: r.objectType,
        objectId: r.objectId,
        action: r.action,
        seq: r.seq,
        clientTime: r.clientTime,
        payload: r.payload,
      );

  Future<void> _applyResult(MutationRow row, MutationResult res, DateTime serverTime) async {
    final upd = db.update(db.mutations)..where((t) => t.clientMutationId.equals(row.clientMutationId));
    if (res.isApplied) {
      await upd.write(MutationsCompanion(
        status: const Value('synced'),
        response: Value(res.response),
        reasonCode: const Value(null),
        lastError: const Value(null),
        syncedAt: Value(_now()),
      ));
      if (row.action == WorkAction.attachPhoto) await _bindUpload(row, res.response, accepted: true);
      return;
    }
    if (res.isConflict) {
      // C2–C5: tidak di-retry; evidence tetap tersimpan di server; state lokal diganti saat pull.
      await upd.write(MutationsCompanion(
        status: const Value('conflict'),
        reasonCode: Value(res.reasonCode),
        lastError: Value(_conflictMessage(res)),
        response: Value(res.response),
        syncedAt: Value(_now()),
      ));
      if (row.action == WorkAction.attachPhoto) await _bindUpload(row, res.response, accepted: true);
      return;
    }
    // rejected
    if (res.isSeqGap) {
      // C9: kirim ulang dari mutasi yang hilang. Mutasi lebih awal yang `failed` dipulihkan ke pending.
      final attempts = row.attempts + 1;
      await (db.update(db.mutations)
            ..where((t) => t.objectId.equals(row.objectId) & t.seq.isSmallerThanValue(row.seq) & t.status.equals('failed')))
          .write(const MutationsCompanion(status: Value('pending'), nextAttemptAt: Value(null)));
      await upd.write(MutationsCompanion(
        status: Value(attempts >= maxAttempts ? 'failed' : 'pending'),
        attempts: Value(attempts),
        reasonCode: const Value('SEQ_GAP'),
        lastError: Value(res.detail ?? 'Urutan mutasi tidak lengkap'),
        nextAttemptAt: Value(_now().add(_backoff(attempts))),
      ));
      return;
    }
    // C10: VALIDATION_ERROR / FORBIDDEN / NOT_FOUND → buang dari antrean, tampilkan alasan.
    await upd.write(MutationsCompanion(
      status: const Value('failed'),
      reasonCode: Value(res.reasonCode),
      lastError: Value(res.detail ?? res.reasonCode ?? 'Ditolak server'),
      response: Value(res.response),
      syncedAt: Value(_now()),
    ));
    if (row.action == WorkAction.attachPhoto) await _bindUpload(row, res.response, accepted: false);
  }

  static String _conflictMessage(MutationResult res) => switch (res.reasonCode) {
        'INVALID_TRANSITION' => res.detail == 'EVIDENCE_REQUIRED'
            ? 'Foto wajib belum lengkap — lengkapi evidence lalu selesaikan lagi.'
            : 'Status di server sudah berubah; aksi tidak diterapkan. Evidence tetap tersimpan.',
        'OBJECT_TERMINAL' => 'Pekerjaan sudah ditutup di server. Evidence disimpan sebagai late evidence.',
        'REASSIGNED' => 'Pekerjaan sudah dialihkan ke orang lain. Hubungi supervisor.',
        'DUPLICATE_SESSION' => 'Aksi sudah dilakukan dari perangkat lain.',
        _ => res.detail ?? 'Konflik — ditinjau supervisor.',
      };

  /// Setelah `attach_photo` diterima (applied/conflict): simpan upload_url; ditolak → `rejected` (file tetap 7 hari).
  Future<void> _bindUpload(MutationRow row, Map<String, dynamic>? response, {required bool accepted}) async {
    final cid = row.payload['client_attachment_id'] as String?;
    if (cid == null) return;
    final upd = db.update(db.pendingFiles)..where((t) => t.clientAttachmentId.equals(cid));
    final uploadUrl = response?['upload_url'] as String?;
    final attachmentId = response?['attachment_id'] as String?;
    if (accepted && uploadUrl != null && attachmentId != null) {
      await upd.write(PendingFilesCompanion(
        attachmentId: Value(attachmentId),
        uploadUrl: Value(uploadUrl),
        uploadState: const Value('ready'),
        nextAttemptAt: const Value(null),
      ));
    } else {
      await upd.write(PendingFilesCompanion(uploadState: const Value('rejected'), lastError: Value(row.lastError ?? 'attach_photo ditolak')));
    }
  }

  // ------------------------------------------------------------------ photos

  /// PUT file ke `upload_url` lalu `confirm` (TAD §8.4 langkah 4). Tidak memblokir mutasi lain.
  Future<void> uploadPhotos() async {
    final now = _now();
    final files = await (db.select(db.pendingFiles)
          ..where((t) => t.uploadState.isIn(const ['ready', 'uploaded']) & (t.nextAttemptAt.isNull() | t.nextAttemptAt.isSmallerOrEqualValue(now)))
          ..orderBy([(t) => OrderingTerm.asc(t.createdAt)]))
        .get();
    if (files.isEmpty) return;
    _emit(_current.copyWith(phase: SyncPhase.uploading));
    for (final f in files) {
      final upd = db.update(db.pendingFiles)..where((t) => t.clientAttachmentId.equals(f.clientAttachmentId));
      try {
        if (f.uploadState == 'ready') {
          final bytes = await repo.photoStore.read(f.localPath);
          if (bytes == null) {
            await upd.write(const PendingFilesCompanion(uploadState: Value('rejected'), lastError: Value('File lokal hilang')));
            continue;
          }
          await upd.write(const PendingFilesCompanion(uploadState: Value('uploading')));
          await attachmentsApi.upload(
            PresignOutput(attachmentId: f.attachmentId!, uploadUrl: f.uploadUrl!, method: 'PUT'),
            bytes,
            f.contentType,
          );
          await upd.write(const PendingFilesCompanion(uploadState: Value('uploaded')));
        }
        await attachmentsApi.confirm(
          f.attachmentId!,
          ConfirmInput(
            gpsStatus: f.gpsStatus,
            capturedAt: f.capturedAt,
            gpsLat: f.gpsLat,
            gpsLng: f.gpsLng,
            width: f.width,
            height: f.height,
            caption: f.caption,
            sha256: f.sha256,
          ),
        );
        await upd.write(const PendingFilesCompanion(uploadState: Value('confirmed'), lastError: Value(null)));
        await repo.photoStore.delete(f.localPath);
      } on AppError catch (e) {
        final attempts = f.attempts + 1;
        final terminal = !e.isNetwork && e.kind != AppErrorKind.server && e.kind != AppErrorKind.unknown;
        await upd.write(PendingFilesCompanion(
          uploadState: Value(terminal ? 'rejected' : (f.uploadState == 'uploading' ? 'ready' : f.uploadState)),
          attempts: Value(attempts),
          nextAttemptAt: Value(now.add(_backoff(attempts))),
          lastError: Value(e.message),
        ));
        if (e.isNetwork) rethrow;
      } finally {
        await repo.refreshSyncState(f.objectId);
      }
    }
    _emit(_current.copyWith(phase: SyncPhase.idle));
  }

  Future<void> dispose() => _status.close();
}
