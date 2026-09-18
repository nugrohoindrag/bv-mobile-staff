import 'dart:async';
import 'dart:convert';

import 'package:bv_core/bv_core.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'database.dart';
import 'overlay.dart';
import 'photo_pipeline.dart';

DateTime _utcNow() => DateTime.now().toUtc();

/// Ringkasan status sync untuk UI (banner, profil).
class SyncSummary {
  const SyncSummary({this.pending = 0, this.failed = 0, this.conflict = 0, this.photosPending = 0, this.lastPullAt});
  final int pending;
  final int failed;
  final int conflict;
  final int photosPending;
  final DateTime? lastPullAt;
  bool get hasPending => pending > 0 || photosPending > 0;
}

/// Sumber data lokal (local-first untuk work item hari ini — TAD §8.2). Setiap aksi worker
/// ditulis ke tabel lokal **dan** ke antrean mutasi dalam satu transaksi SQLite (TAD §8.4).
class LocalWorkRepository {
  LocalWorkRepository(this.db, {required this.imageProcessor, required this.photoStore, Uuid? uuid, DateTime Function()? now}) : _uuid = uuid ?? const Uuid(), _now = now ?? _utcNow;

  final BvDatabase db;
  final ImageProcessor imageProcessor;
  final PhotoStore photoStore;
  final Uuid _uuid;
  final DateTime Function() _now;

  static const metaCursor = 'bundle_cursor';
  static const metaLastPull = 'last_pull_at';
  static const metaMe = 'me';
  static const metaMaster = 'master';

  // ------------------------------------------------------------------ bundle

  /// Terapkan work bundle: upsert item/run/checkpoint/referensi, hapus `removed` (TAD §8.4 langkah 1).
  Future<void> applyBundle(SyncBundle b) => db.transaction(() async {
    for (final w in [...b.tasks, ...b.workOrders, ...b.cleaningTasks]) {
      await _upsertWorkItem(w);
    }
    for (final pb in b.patrolTasks) {
      await _upsertWorkItem(pb.task, kind: 'patrol');
      await (db.delete(db.patrolCheckpoints)..where((t) => t.taskId.equals(pb.task.id))).go();
      for (final cp in pb.checkpoints) {
        await db
            .into(db.patrolCheckpoints)
            .insertOnConflictUpdate(
              PatrolCheckpointsCompanion.insert(
                id: cp.id,
                taskId: pb.task.id,
                checkpointId: cp.checkpointId,
                qrCode: Value(cp.qrCode),
                sortOrder: Value(cp.sortOrder),
                status: Value(cp.status),
                json: cp.toJson(),
              ),
            );
      }
    }
    for (final r in b.checklistRuns) {
      await db.into(db.checklistRuns).insertOnConflictUpdate(ChecklistRunsCompanion.insert(id: r.id, objectType: r.objectType, objectId: r.objectId, json: r.toJson(), updatedAt: b.serverTime));
    }
    for (final l in b.locations) {
      await db.into(db.locations).insertOnConflictUpdate(LocationsCompanion.insert(id: l.id, name: l.name, locationType: Value(l.locationType), pathText: Value(l.pathText), qrCode: Value(l.qrCode)));
    }
    for (final a in b.assets) {
      await db
          .into(db.assets)
          .insertOnConflictUpdate(AssetsCompanion.insert(id: a.id, assetCode: a.assetCode, name: a.name, status: Value(a.status), locationId: Value(a.locationId), qrCode: Value(a.qrCode)));
    }
    for (final r in b.removed) {
      await (db.delete(db.workItems)..where((t) => t.id.equals(r.objectId))).go();
      await (db.delete(db.checklistRuns)..where((t) => t.objectId.equals(r.objectId))).go();
      await (db.delete(db.patrolCheckpoints)..where((t) => t.taskId.equals(r.objectId))).go();
    }
    await db.setMeta(metaCursor, b.cursor);
    await db.setMeta(metaLastPull, b.serverTime.toIso8601String());
    await db.setMeta(metaMe, jsonEncode(b.me.toJson()));
    await db.setMeta(metaMaster, jsonEncode(b.master.toJson()));
    for (final id in {...b.tasks.map((e) => e.id), ...b.workOrders.map((e) => e.id), ...b.cleaningTasks.map((e) => e.id), ...b.patrolTasks.map((e) => e.task.id)}) {
      await refreshSyncState(id);
    }
  });

  Future<void> _upsertWorkItem(WorkItem w, {String? kind}) async {
    final k =
        kind ??
        (w.objectType == ObjectType.workOrder
            ? 'work_order'
            : switch (w.type) {
                'patrol' => 'patrol',
                'cleaning' => 'cleaning',
                'inspection' => 'inspection',
                _ => 'task',
              });
    await db
        .into(db.workItems)
        .insertOnConflictUpdate(
          WorkItemsCompanion.insert(
            id: w.id,
            objectType: w.objectType,
            kind: k,
            status: w.status,
            priority: w.priority,
            title: w.title,
            number: w.number,
            dueAt: Value(w.dueAt),
            scheduledStartAt: Value(w.scheduledStartAt),
            isOverdue: Value(w.isOverdue),
            assigneeUserId: Value(w.assignee.userId),
            assigneeTeamId: Value(w.assignee.teamId),
            json: w.toJson(),
            updatedAt: w.updatedAt,
          ),
        );
  }

  Future<MeLite?> me() async {
    final s = await db.meta(metaMe);
    return s == null ? null : MeLite.fromJson(jsonDecode(s) as Map<String, dynamic>);
  }

  Future<MasterData> master() async {
    final s = await db.meta(metaMaster);
    return s == null ? const MasterData() : MasterData.fromJson(jsonDecode(s) as Map<String, dynamic>);
  }

  Future<String?> cursor() => db.meta(metaCursor);

  // ------------------------------------------------------------------ queries

  Selectable<Mutation> _pendingMutationsQuery({String? objectId}) {
    final q = db.select(db.mutations)
      ..where((t) => t.status.isIn(const ['pending', 'sending']))
      ..orderBy([(t) => OrderingTerm.asc(t.seq)]);
    if (objectId != null) q.where((t) => t.objectId.equals(objectId));
    return q.map(_toMutation);
  }

  Mutation _toMutation(MutationRow r) =>
      Mutation(clientMutationId: r.clientMutationId, objectType: r.objectType, objectId: r.objectId, action: r.action, seq: r.seq, clientTime: r.clientTime, payload: r.payload);

  WorkItem _rowToItem(WorkItemRow r, List<Mutation> pending) => LocalOverlay.applyToWorkItem(WorkItem.fromJson(r.json), pending.where((m) => m.objectId == r.id));

  /// Daftar kerja lokal (hari ini + open/overdue), dengan overlay mutasi pending.
  /// `kinds`: task | work_order | cleaning | patrol | inspection.
  Stream<List<WorkItem>> watchWorkItems({Set<String>? kinds, String? assigneeUserId, bool openOnly = false}) {
    final q = db.select(db.workItems)..orderBy([(t) => OrderingTerm.asc(t.scheduledStartAt), (t) => OrderingTerm.asc(t.dueAt), (t) => OrderingTerm.desc(t.updatedAt)]);
    if (kinds != null && kinds.isNotEmpty) q.where((t) => t.kind.isIn(kinds));
    if (assigneeUserId != null) q.where((t) => t.assigneeUserId.equals(assigneeUserId));
    final rows$ = q.watch();
    final pending$ = _pendingMutationsQuery().watch();
    return _combine2(rows$, pending$, (rows, pending) {
      final items = rows.map((r) => _rowToItem(r, pending)).toList();
      return openOnly ? items.where((i) => i.isOpen).toList() : items;
    });
  }

  Stream<WorkItem?> watchWorkItem(String id) {
    final row$ = (db.select(db.workItems)..where((t) => t.id.equals(id))).watchSingleOrNull();
    final pending$ = _pendingMutationsQuery(objectId: id).watch();
    return _combine2(row$, pending$, (row, pending) => row == null ? null : _rowToItem(row, pending));
  }

  Future<WorkItem?> getWorkItem(String id) async {
    final row = await (db.select(db.workItems)..where((t) => t.id.equals(id))).getSingleOrNull();
    if (row == null) return null;
    return _rowToItem(row, await _pendingMutationsQuery(objectId: id).get());
  }

  Future<String?> syncStateOf(String id) async => (await (db.select(db.workItems)..where((t) => t.id.equals(id))).getSingleOrNull())?.syncState;

  Stream<ChecklistRun?> watchRun(String objectId) {
    final row$ = (db.select(db.checklistRuns)..where((t) => t.objectId.equals(objectId))).watchSingleOrNull();
    final pending$ = _pendingMutationsQuery(objectId: objectId).watch();
    return _combine2(row$, pending$, (row, pending) => row == null ? null : LocalOverlay.applyToRun(ChecklistRun.fromJson(row.json), pending));
  }

  Future<ChecklistRun?> getRun(String objectId) async {
    final row = await (db.select(db.checklistRuns)..where((t) => t.objectId.equals(objectId))).getSingleOrNull();
    if (row == null) return null;
    return LocalOverlay.applyToRun(ChecklistRun.fromJson(row.json), await _pendingMutationsQuery(objectId: objectId).get());
  }

  /// Simpan run yang diterima dari server (mis. setelah POST online).
  Future<void> saveRun(ChecklistRun run) =>
      db.into(db.checklistRuns).insertOnConflictUpdate(ChecklistRunsCompanion.insert(id: run.id, objectType: run.objectType, objectId: run.objectId, json: run.toJson(), updatedAt: _now()));

  Future<void> saveWorkItem(WorkItem w) => _upsertWorkItem(w);

  /// Pastikan item ada di tabel lokal sebelum aksi worker. Item yang dibuka dari server (jadwal hari
  /// lain, deep link push, hasil pencarian) tidak ada di bundle; tanpa baris lokal, overlay mutasi
  /// pending tidak punya tempat menempel sehingga UI tetap menampilkan status lama & tombol "Mulai".
  Future<void> ensureLocal(WorkItem w) async {
    final row = await (db.select(db.workItems)..where((t) => t.id.equals(w.id))).getSingleOrNull();
    if (row == null) await _upsertWorkItem(w);
  }

  /// Terapkan status hasil transisi yang sudah diterima server ke baris lokal (sebelum pull berikutnya),
  /// supaya UI tidak "mundur" ke status lama begitu mutasi keluar dari overlay pending.
  Future<void> applyServerStatus(String objectId, String status) async {
    final row = await (db.select(db.workItems)..where((t) => t.id.equals(objectId))).getSingleOrNull();
    if (row == null) return;
    final item = WorkItem.fromJson(row.json);
    if (item.status == status) return;
    final now = _now();
    final updated = item.copyWith(
      status: status,
      startedAt: status == 'in_progress' ? (item.startedAt ?? now) : item.startedAt,
      completedAt: status == 'completed' ? (item.completedAt ?? now) : item.completedAt,
      allowedActions: LocalOverlay.allowedForStatus(status, item),
    );
    await _upsertWorkItem(updated);
  }

  Stream<List<CheckpointScan>> watchCheckpoints(String taskId) {
    final rows$ =
        (db.select(db.patrolCheckpoints)
              ..where((t) => t.taskId.equals(taskId))
              ..orderBy([(t) => OrderingTerm.asc(t.sortOrder)]))
            .watch();
    final pending$ = _pendingMutationsQuery(objectId: taskId).watch();
    return _combine2(rows$, pending$, (rows, pending) => LocalOverlay.applyToCheckpoints(rows.map((r) => CheckpointScan.fromJson(r.json)).toList(), pending));
  }

  Future<CheckpointScan?> checkpointByQr(String taskId, String qrCode) async {
    final row = await (db.select(db.patrolCheckpoints)..where((t) => t.taskId.equals(taskId) & t.qrCode.equals(qrCode))).getSingleOrNull();
    return row == null ? null : CheckpointScan.fromJson(row.json);
  }

  Future<AssetLite?> assetByQr(String qrCode) async {
    final r = await (db.select(db.assets)..where((t) => t.qrCode.equals(qrCode))).getSingleOrNull();
    return r == null ? null : AssetLite(id: r.id, assetCode: r.assetCode, name: r.name, status: r.status, locationId: r.locationId, qrCode: r.qrCode);
  }

  Future<LocationLite?> locationByQr(String qrCode) async {
    final r = await (db.select(db.locations)..where((t) => t.qrCode.equals(qrCode))).getSingleOrNull();
    return r == null ? null : LocationLite(id: r.id, name: r.name, locationType: r.locationType, pathText: r.pathText, qrCode: r.qrCode);
  }

  Future<List<LocationLite>> locations({String? q}) async {
    final s = db.select(db.locations)..orderBy([(t) => OrderingTerm.asc(t.pathText)]);
    if (q != null && q.isNotEmpty) s.where((t) => t.name.like('%$q%') | t.pathText.like('%$q%'));
    return (await s.get()).map((r) => LocationLite(id: r.id, name: r.name, locationType: r.locationType, pathText: r.pathText, qrCode: r.qrCode)).toList();
  }

  Future<List<AssetLite>> assets({String? q}) async {
    final s = db.select(db.assets)..orderBy([(t) => OrderingTerm.asc(t.name)]);
    if (q != null && q.isNotEmpty) s.where((t) => t.name.like('%$q%') | t.assetCode.like('%$q%'));
    return (await s.get()).map((r) => AssetLite(id: r.id, assetCode: r.assetCode, name: r.name, status: r.status, locationId: r.locationId, qrCode: r.qrCode)).toList();
  }

  Stream<List<Mutation>> watchPendingMutations({String? objectId}) => _pendingMutationsQuery(objectId: objectId).watch();

  /// Mutasi terakhir per object (semua status) untuk panel "status sync" di detail.
  Stream<List<MutationRow>> watchMutationRows(String objectId) =>
      (db.select(db.mutations)
            ..where((t) => t.objectId.equals(objectId))
            ..orderBy([(t) => OrderingTerm.desc(t.seq)]))
          .watch();

  Stream<List<PendingFileRow>> watchPendingFiles(String objectId) => (db.select(db.pendingFiles)..where((t) => t.objectId.equals(objectId) & t.uploadState.isNotIn(const ['confirmed']))).watch();

  /// Jumlah foto lokal (termasuk yang sudah confirmed, selama belum di-prune) per tipe — untuk guard
  /// evidence "foto sesudah" sebelum complete walau offline.
  Future<int> countLocalPhotos(String objectId, {String? attachmentType}) async {
    final q = db.select(db.pendingFiles)..where((t) => t.objectId.equals(objectId) & t.uploadState.isNotIn(const ['rejected']));
    if (attachmentType != null) q.where((t) => t.attachmentType.equals(attachmentType));
    return (await q.get()).length;
  }

  Stream<SyncSummary> watchSummary() {
    final m$ = (db.select(db.mutations)..where((t) => t.status.isIn(const ['pending', 'sending', 'failed', 'conflict']))).watch();
    final f$ = (db.select(db.pendingFiles)..where((t) => t.uploadState.isNotIn(const ['confirmed', 'rejected']))).watch();
    return _combine2(m$, f$, (ms, fs) {
      return SyncSummary(
        pending: ms.where((m) => m.status == 'pending' || m.status == 'sending').length,
        failed: ms.where((m) => m.status == 'failed').length,
        conflict: ms.where((m) => m.status == 'conflict').length,
        photosPending: fs.length,
      );
    });
  }

  // ------------------------------------------------------------------ commands

  Future<int> _nextSeq(String objectId) async {
    final row = await (db.select(db.objectSeqs)..where((t) => t.objectId.equals(objectId))).getSingleOrNull();
    final next = (row?.lastSeq ?? 0) + 1;
    await db.into(db.objectSeqs).insertOnConflictUpdate(ObjectSeqsCompanion(objectId: Value(objectId), lastSeq: Value(next)));
    return next;
  }

  /// Antrekan mutasi (harus dipanggil di dalam transaksi bersama perubahan lokal lain).
  Future<Mutation> enqueue(String objectType, String objectId, String action, Map<String, dynamic> payload, {String? clientMutationId}) async {
    final seq = await _nextSeq(objectId);
    final now = _now();
    final id = clientMutationId ?? _uuid.v7();
    await db
        .into(db.mutations)
        .insert(MutationsCompanion.insert(clientMutationId: id, objectType: objectType, objectId: objectId, action: action, seq: seq, payload: payload, clientTime: now, createdAt: now));
    await refreshSyncState(objectId);
    return Mutation(clientMutationId: id, objectType: objectType, objectId: objectId, action: action, seq: seq, clientTime: now, payload: payload);
  }

  /// Transisi status (start/hold/resume/complete) — `client_recorded_at` = jam device (C8).
  Future<Mutation> transition(WorkItem item, String action, TransitionInput input) => db.transaction(() async {
    await ensureLocal(item);
    final payload = input.copyWith(clientRecordedAt: _now()).toJson();
    return enqueue(item.objectType, item.id, action, payload);
  });

  /// Jawab item checklist; foto opsional diantrekan lebih dulu sehingga `client_attachment_id`
  /// tersedia di payload jawaban (server menautkan saat attach_photo diterima).
  Future<Mutation> answerChecklist(ChecklistRun run, ChecklistRunItem item, AnswerInput input, {CapturedPhoto? photo}) => db.transaction(() async {
    String? clientAttachmentId;
    if (photo != null) {
      clientAttachmentId = await _queuePhoto(run.objectType, run.objectId, photo, attachmentType: AttachmentType.checklist, checklistItemId: item.id);
    }
    final payload = {'item_id': item.id, 'run_id': run.id, ...input.copyWith(clientAttachmentId: clientAttachmentId ?? input.clientAttachmentId, clientRecordedAt: _now()).toJson()};
    return enqueue(run.objectType, run.objectId, WorkAction.checklistItemResult, payload);
  });

  /// Foto evidence before/after/photo untuk Task/WO/Incident/Finding.
  Future<String> attachPhoto(String objectType, String objectId, CapturedPhoto photo, {String attachmentType = AttachmentType.photo}) =>
      db.transaction(() => _queuePhoto(objectType, objectId, photo, attachmentType: attachmentType));

  Future<String> _queuePhoto(String objectType, String objectId, CapturedPhoto photo, {required String attachmentType, String? checklistItemId}) async {
    final processed = await imageProcessor.process(photo.bytes);
    final id = _uuid.v7();
    final path = await photoStore.save(id, processed.bytes);
    final sha = processed.sha256Hex;
    final m = await enqueue(objectType, objectId, WorkAction.attachPhoto, {
      'client_attachment_id': id,
      'attachment_type': attachmentType,
      'content_type': 'image/jpeg',
      'size_bytes': processed.bytes.length,
      'sha256': sha,
      'captured_at': photo.capturedAt.toUtc().toIso8601String(),
      'gps_lat': ?photo.gpsLat,
      'gps_lng': ?photo.gpsLng,
      'gps_status': photo.gpsStatus,
      'caption': ?photo.caption,
      'checklist_item_id': ?checklistItemId,
    });
    await db
        .into(db.pendingFiles)
        .insert(
          PendingFilesCompanion.insert(
            clientAttachmentId: id,
            objectType: objectType,
            objectId: objectId,
            attachmentType: attachmentType,
            localPath: path,
            sizeBytes: processed.bytes.length,
            sha256: sha,
            width: Value(processed.width ?? photo.width),
            height: Value(processed.height ?? photo.height),
            capturedAt: photo.capturedAt,
            gpsLat: Value(photo.gpsLat),
            gpsLng: Value(photo.gpsLng),
            gpsStatus: Value(photo.gpsStatus),
            caption: Value(photo.caption),
            checklistItemId: Value(checklistItemId),
            mutationId: Value(m.clientMutationId),
            createdAt: _now(),
          ),
        );
    return id;
  }

  Future<Mutation> addComment(String objectType, String objectId, String body) =>
      db.transaction(() => enqueue(objectType, objectId, WorkAction.addComment, {'body': body, 'client_comment_id': _uuid.v7()}));

  /// Scan checkpoint patrol (QR offline dicocokkan ke bundle — TAD §8.6).
  Future<Mutation> scanCheckpoint(String taskId, ScanInput input) => db.transaction(() async {
    final payload = input.copyWith(clientScanId: input.clientScanId ?? _uuid.v7(), clientRecordedAt: _now()).toJson();
    return enqueue(ObjectType.task, taskId, WorkAction.checkpointScan, payload);
  });

  Future<Mutation> addFinding(String objectType, String objectId, CreateFindingInput input, {CapturedPhoto? photo}) => db.transaction(() async {
    String? attachmentClientId;
    if (photo != null) attachmentClientId = await _queuePhoto(objectType, objectId, photo, attachmentType: AttachmentType.photo);
    final payload = input.copyWith(clientRecordedAt: _now()).toJson();
    if (attachmentClientId != null) payload['client_attachment_id'] = attachmentClientId;
    return enqueue(objectType, objectId, WorkAction.addFinding, payload);
  });

  Future<Mutation> reportIncident(String taskId, CreateIncidentInput input) =>
      db.transaction(() => enqueue(ObjectType.task, taskId, WorkAction.reportIncident, input.copyWith(clientRecordedAt: _now()).toJson()));

  /// Coba lagi mutasi `failed` (CTA "Coba lagi") — memakai client_mutation_id yang sama (C6).
  Future<void> retryFailed(String objectId) => db.transaction(() async {
    await (db.update(db.mutations)..where((t) => t.objectId.equals(objectId) & t.status.equals('failed'))).write(
      const MutationsCompanion(status: Value('pending'), attempts: Value(0), nextAttemptAt: Value(null), lastError: Value(null)),
    );
    await refreshSyncState(objectId);
  });

  /// Buang mutasi `failed` (ditolak server: VALIDATION/FORBIDDEN/NOT_FOUND) supaya tidak memblokir
  /// mutasi berikutnya untuk object yang sama (C9) — state lokal kembali mengikuti server.
  Future<void> discardFailed(String objectId) => db.transaction(() async {
    final failed = await (db.select(db.mutations)..where((t) => t.objectId.equals(objectId) & t.status.equals('failed'))).get();
    for (final m in failed) {
      final cid = m.payload['client_attachment_id'] as String?;
      if (m.action == WorkAction.attachPhoto && cid != null) {
        await (db.update(
          db.pendingFiles,
        )..where((t) => t.clientAttachmentId.equals(cid))).write(const PendingFilesCompanion(uploadState: Value('rejected'), lastError: Value('Dibuang oleh pengguna')));
      }
    }
    await (db.update(db.mutations)..where((t) => t.objectId.equals(objectId) & t.status.equals('failed'))).write(MutationsCompanion(status: const Value('discarded'), syncedAt: Value(_now())));
    await refreshSyncState(objectId);
  });

  /// Tandai konflik sudah dilihat worker → item kembali `synced` (state server sudah dimuat saat pull).
  Future<void> dismissConflict(String objectId) => db.transaction(() async {
    await (db.update(db.mutations)..where((t) => t.objectId.equals(objectId) & t.status.equals('conflict'))).write(const MutationsCompanion(status: Value('conflict_seen')));
    await refreshSyncState(objectId);
  });

  /// Hitung ulang `sync_state` item dari mutasi & foto miliknya.
  Future<void> refreshSyncState(String objectId) async {
    final ms = await (db.select(db.mutations)..where((t) => t.objectId.equals(objectId))).get();
    final files = await (db.select(db.pendingFiles)..where((t) => t.objectId.equals(objectId) & t.uploadState.isNotIn(const ['confirmed', 'rejected']))).get();
    String state;
    String? msg;
    if (ms.any((m) => m.status == 'conflict')) {
      state = SyncState.conflict;
      final c = ms.lastWhere((m) => m.status == 'conflict');
      msg = c.lastError ?? c.reasonCode;
    } else if (ms.any((m) => m.status == 'failed')) {
      state = SyncState.failed;
      final f = ms.lastWhere((m) => m.status == 'failed');
      msg = f.lastError ?? f.reasonCode;
    } else if (ms.any((m) => m.status == 'pending' || m.status == 'sending') || files.isNotEmpty) {
      state = SyncState.pending;
    } else {
      state = SyncState.synced;
    }
    await (db.update(db.workItems)..where((t) => t.id.equals(objectId))).write(WorkItemsCompanion(syncState: Value(state), syncMessage: Value(msg)));
  }

  /// Hapus mutasi `synced` lebih dari [olderThan] (default 7 hari) dan file foto yang sudah confirmed.
  Future<void> prune({Duration olderThan = const Duration(days: 7)}) async {
    final cutoff = _now().subtract(olderThan);
    await (db.delete(db.mutations)..where((t) => t.status.isIn(const ['synced', 'conflict_seen', 'discarded']) & t.syncedAt.isSmallerThanValue(cutoff))).go();
    await (db.delete(db.pendingFiles)..where((t) => t.uploadState.equals('confirmed') & t.createdAt.isSmallerThanValue(cutoff))).go();
  }

  Future<void> clearAll() => db.wipe();
}

/// Gabungkan dua stream menjadi satu nilai terbaru (tanpa rxdart).
Stream<R> _combine2<A, B, R>(Stream<A> a, Stream<B> b, R Function(A, B) f) {
  late StreamController<R> c;
  StreamSubscription<A>? sa;
  StreamSubscription<B>? sb;
  A? va;
  B? vb;
  var ha = false, hb = false;
  void emit() {
    if (ha && hb) c.add(f(va as A, vb as B));
  }

  c = StreamController<R>(
    onListen: () {
      sa = a.listen((v) {
        va = v;
        ha = true;
        emit();
      }, onError: c.addError);
      sb = b.listen((v) {
        vb = v;
        hb = true;
        emit();
      }, onError: c.addError);
    },
    onCancel: () async {
      await sa?.cancel();
      await sb?.cancel();
    },
  );
  return c.stream;
}
