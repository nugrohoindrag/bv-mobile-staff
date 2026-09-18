import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../shared/dialogs.dart';
import '../../shared/gps.dart';
import '../../shared/photo_capture.dart';
import 'work_providers.dart';

/// Aksi worker atas Task/WO: ditulis ke antrean lokal (offline-first) lalu memicu sync.
/// Aksi supervisor (assign/close) online langsung ke server, lalu disimpan lokal.
class WorkActions {
  WorkActions(this.ref, this.context);
  final WidgetRef ref;
  final BuildContext context;

  LocalWorkRepository get _repo => ref.read(localRepoProvider);
  void _kick() => ref.read(syncControllerProvider.notifier).afterMutation();

  Future<bool> start(WorkItem item) async {
    final ok = await showBvConfirmDialog(context, title: 'Konfirmasi Memulai Pengerjaan', message: 'Saat pekerjaan dimulai, status pekerjaan akan berubah menjadi "on progress"', confirm: 'Mulai');
    if (!ok) return false;
    final fix = await const GpsService().capture();
    await _repo.transition(item, WorkAction.start, TransitionInput(gpsStatus: fix.status, gpsLat: fix.lat, gpsLng: fix.lng));
    _kick();
    if (context.mounted) showInfo(context, 'Pekerjaan dimulai${fix.status == GpsStatus.captured ? '' : ' (lokasi GPS tidak tersedia)'}');
    return true;
  }

  Future<bool> hold(WorkItem item) async {
    final reason = await showReasonDialog(context, title: 'Tunda pekerjaan', hint: 'Alasan penundaan (wajib)');
    if (reason == null) return false;
    await _repo.transition(item, WorkAction.hold, TransitionInput(reason: reason));
    _kick();
    if (context.mounted) showInfo(context, 'Pekerjaan ditunda');
    return true;
  }

  Future<bool> resume(WorkItem item) async {
    await _repo.transition(item, WorkAction.resume, const TransitionInput());
    _kick();
    if (context.mounted) showInfo(context, 'Pekerjaan dilanjutkan');
    return true;
  }

  /// Guard lokal sebelum complete (PRD §11.2): checklist wajib terjawab, foto wajib ada, evidence bila diminta.
  /// Server (`evidenceSatisfied`) menuntut **foto sesudah** (`photo_after`) untuk WO `requires_evidence`
  /// (ditangani [_ensureAfterPhoto]); Task menerima foto tipe apa pun (photo / checklist).
  Future<String?> completeBlocker(WorkItem item) async {
    final run = await _repo.getRun(item.id);
    if (run != null) {
      if (run.requiredUnanswered > 0) return 'Masih ada ${run.requiredUnanswered} item checklist wajib yang belum dijawab.';
      if (run.photoMissing > 0) return 'Foto wajib belum lengkap pada ${run.photoMissing} item checklist.';
    }
    if (item.requiresEvidence && !item.isWorkOrder) {
      final local = await _repo.countLocalPhotos(item.id);
      if (item.attachmentCount == 0 && local == 0) return 'Pekerjaan ini wajib menyertakan foto evidence.';
    }
    return null;
  }

  /// WO `requires_evidence`: pastikan ada foto sesudah pengerjaan (lokal/server); bila belum, minta ambil sekarang.
  Future<bool> _ensureAfterPhoto(WorkItem item) async {
    if (!item.isWorkOrder || !item.requiresEvidence) return true;
    if (await _repo.countLocalPhotos(item.id, attachmentType: AttachmentType.after) > 0) return true;
    try {
      final remote = await ref.read(attachmentsApiProvider).list(item.objectType, item.id);
      if (remote.any((a) => a.attachmentType == AttachmentType.after)) return true;
    } on AppError catch (_) {
      // offline: hanya bisa memastikan dari foto lokal
    }
    if (!context.mounted) return false;
    final take = await showBvConfirmDialog(
      context,
      title: 'Foto Sesudah Pengerjaan',
      message: 'Work order ini wajib menyertakan foto kondisi sesudah pengerjaan sebelum diselesaikan. Ambil foto sekarang?',
      confirm: 'Ambil Foto',
    );
    if (!take || !context.mounted) return false;
    final photo = await const PhotoCapture().pick(context);
    if (photo == null) return false;
    await _repo.ensureLocal(item);
    await _repo.attachPhoto(item.objectType, item.id, photo, attachmentType: AttachmentType.after);
    return true;
  }

  Future<bool> complete(WorkItem item) async {
    final blocker = await completeBlocker(item);
    if (!context.mounted) return false;
    if (blocker != null) {
      showError(context, AppError(AppErrorKind.validation, blocker));
      return false;
    }
    if (!await _ensureAfterPhoto(item)) return false;
    if (!context.mounted) return false;
    final ok = await showBvConfirmDialog(
      context,
      title: 'Konfirmasi Menyelesaikan Pengerjaan',
      message: 'Saat pekerjaan diselesaikan, status pekerjaan akan berubah menjadi "done"',
      confirm: 'Selesai',
    );
    if (!ok) return false;
    final fix = await const GpsService().capture();
    await _repo.transition(item, WorkAction.complete, TransitionInput(gpsStatus: fix.status, gpsLat: fix.lat, gpsLng: fix.lng));
    _kick();
    if (context.mounted) showInfo(context, 'Pekerjaan diselesaikan — menunggu verifikasi supervisor');
    return true;
  }

  Future<bool> addPhoto(WorkItem item, {String type = AttachmentType.photo}) async {
    final photo = await const PhotoCapture().pick(context);
    if (photo == null) return false;
    await _repo.ensureLocal(item);
    await _repo.attachPhoto(item.objectType, item.id, photo, attachmentType: type);
    _kick();
    if (context.mounted) showInfo(context, 'Foto ditambahkan — diunggah saat online');
    return true;
  }

  Future<bool> addComment(WorkItem item) async {
    final body = await showReasonDialog(context, title: 'Tambah komentar', hint: 'Tulis komentar', confirm: 'Kirim');
    if (body == null || body.isEmpty) return false;
    await _repo.ensureLocal(item);
    await _repo.addComment(item.objectType, item.id, body);
    _kick();
    return true;
  }

  // ---- supervisor (online) ----

  Future<bool> assign(WorkItem item) async {
    final api = ref.read(catalogApiProvider);
    final session = ref.read(currentSessionProvider);
    try {
      final teams = await api.teams(propertyId: item.propertyId.isEmpty ? null : item.propertyId);
      if (!context.mounted) return false;
      final mine = teams.where((t) => session.me.leadTeamIds.contains(t.id) || session.me.teamIds.contains(t.id)).toList();
      final options = mine.isEmpty ? teams : mine;
      final team = await showPickerSheet<Team>(context, title: 'Pilih tim', options: options, label: (t) => t.name, selected: options.where((t) => t.id == item.assignee.teamId).firstOrNull);
      if (team == null || !context.mounted) return false;
      final full = team.members.isEmpty ? await api.team(team.id) : team;
      if (!context.mounted) return false;
      final member = await showPickerSheet<TeamMember?>(
        context,
        title: 'Pilih anggota (opsional)',
        options: [null, ...full.members],
        label: (m) => m == null ? 'Hanya ke tim ${team.name}' : m.fullName,
      );
      if (!context.mounted) return false;
      final updated = await ref.read(workApiProvider).assign(item.objectType, item.id, AssignInput(assigneeTeamId: team.id, assigneeUserId: member?.userId));
      await _repo.saveWorkItem(updated);
      ref.invalidate(workItemDetailProvider);
      if (context.mounted) showInfo(context, 'Ditugaskan ke ${member?.fullName ?? team.name}');
      return true;
    } catch (e) {
      if (context.mounted) showError(context, e);
      return false;
    }
  }

  /// Verify = Completed → Closed (supervisor) — online.
  Future<bool> close(WorkItem item) async {
    final ok = await showConfirmDialog(context, title: 'Verifikasi & tutup ${item.number}?', message: 'Pastikan checklist dan foto evidence sudah sesuai.', confirm: 'Tutup');
    if (!ok) return false;
    return _onlineTransition(item, WorkAction.close, const TransitionInput());
  }

  Future<bool> reopen(WorkItem item) async {
    final reason = await showReasonDialog(context, title: 'Buka kembali', hint: 'Alasan (wajib)');
    if (reason == null) return false;
    return _onlineTransition(item, WorkAction.reopen, TransitionInput(reason: reason));
  }

  Future<bool> cancel(WorkItem item) async {
    final reason = await showReasonDialog(context, title: 'Batalkan ${item.number}', hint: 'Alasan pembatalan (wajib)', confirm: 'Batalkan');
    if (reason == null) return false;
    return _onlineTransition(item, WorkAction.cancel, TransitionInput(reason: reason));
  }

  Future<bool> _onlineTransition(WorkItem item, String action, TransitionInput input) async {
    try {
      final updated = await ref.read(workApiProvider).transition(item.objectType, item.id, action, input, ifMatchVersion: item.version);
      await _repo.saveWorkItem(updated);
      ref.invalidate(workItemDetailProvider);
      return true;
    } catch (e) {
      if (context.mounted) showError(context, e);
      return false;
    }
  }
}
