import 'package:bv_core/bv_core.dart';

/// Overlay lokal: state server + mutasi yang belum diterima server ("immediate local
/// acknowledgement", PRD §31). Server tetap otoritas — overlay hanya untuk tampilan sampai
/// pull berikutnya (TAD §8.4 langkah 2–3). Tidak ada merge: mutasi conflict/rejected tidak di-overlay.
class LocalOverlay {
  LocalOverlay._();

  /// Status efektif setelah transisi pending diterapkan berurutan.
  static WorkItem applyToWorkItem(WorkItem item, Iterable<Mutation> pending) {
    var status = item.status;
    var startedAt = item.startedAt;
    var completedAt = item.completedAt;
    var completionNotes = item.completionNotes;
    var attachments = item.attachmentCount;
    var comments = item.commentCount;
    for (final m in pending) {
      switch (m.action) {
        case WorkAction.start:
        case WorkAction.resume:
          status = 'in_progress';
          startedAt ??= m.clientTime;
        case WorkAction.hold:
          status = 'on_hold';
        case WorkAction.complete:
          status = 'completed';
          completedAt = m.clientTime;
          completionNotes = m.payload['completion_notes'] as String? ?? completionNotes;
        case WorkAction.attachPhoto:
          attachments++;
        case WorkAction.addComment:
          comments++;
      }
    }
    if (status == item.status && attachments == item.attachmentCount && comments == item.commentCount) return item;
    return item.copyWith(
      status: status,
      startedAt: startedAt,
      completedAt: completedAt,
      completionNotes: completionNotes,
      attachmentCount: attachments,
      commentCount: comments,
      // aksi berikutnya mengikuti status lokal; server yang memutuskan saat sync.
      // Bila status tidak berubah (hanya foto/komentar pending), allowed_actions server tetap dipakai —
      // sebelumnya dihitung ulang sehingga tombol Mulai/Tugaskan/Verifikasi hilang setelah tambah foto.
      allowedActions: status == item.status ? item.allowedActions : _allowedFor(status, item),
    );
  }

  /// Aksi worker yang masuk akal dari status lokal (subset workflow.go). Aksi non-transisi
  /// (`comment`, `attach`, `update`, `view`) dipertahankan dari server.
  static List<String> allowedForStatus(String status, WorkItem item) => _allowedFor(status, item);

  static List<String> _allowedFor(String status, WorkItem item) {
    final transitions = switch (status) {
      'assigned' || 'scheduled' => const [WorkAction.start],
      'in_progress' => const [WorkAction.hold, WorkAction.complete],
      'on_hold' => const [WorkAction.resume],
      _ => const <String>[],
    };
    final keep = item.allowedActions.where((a) => !WorkAction.transitions.contains(a) && a != WorkAction.assign);
    return [...transitions, ...keep];
  }

  /// Jawaban checklist pending diterapkan ke run (C7: jawaban terbaru menang).
  static ChecklistRun applyToRun(ChecklistRun run, Iterable<Mutation> pending) {
    var items = run.items;
    var changed = false;
    for (final m in pending.where((m) => m.action == WorkAction.checklistItemResult)) {
      final itemId = m.payload['item_id'] as String?;
      final idx = items.indexWhere((i) => i.id == itemId);
      if (idx < 0) continue;
      final p = m.payload;
      items = [...items];
      items[idx] = items[idx].copyWith(
        resultValue: p['result_value'] as String? ?? items[idx].resultValue,
        resultNumber: (p['result_number'] as num?)?.toDouble() ?? items[idx].resultNumber,
        resultText: p['result_text'] as String? ?? items[idx].resultText,
        note: p['note'] as String? ?? items[idx].note,
        attachmentId: p['attachment_id'] as String? ?? p['client_attachment_id'] as String? ?? items[idx].attachmentId,
        answeredAt: m.clientTime,
        answeredSource: 'mobile',
      );
      changed = true;
    }
    if (!changed) return run;
    final answered = items.where((i) => i.isAnswered).length;
    final notOk = items.where((i) => i.isNotOk).length;
    return run.copyWith(items: items, answeredItems: answered, notOkItems: notOk);
  }

  /// Scan checkpoint pending → status `scanned` lokal.
  static List<CheckpointScan> applyToCheckpoints(List<CheckpointScan> cps, Iterable<Mutation> pending) {
    var out = cps;
    for (final m in pending.where((m) => m.action == WorkAction.checkpointScan)) {
      final cpId = m.payload['checkpoint_id'] as String?;
      final qr = m.payload['qr_code'] as String?;
      final idx = out.indexWhere((c) => c.checkpointId == cpId || (qr != null && c.qrCode == qr));
      if (idx < 0) continue;
      out = [...out];
      out[idx] = out[idx].copyWith(
        status: 'scanned',
        scannedAt: m.clientTime,
        scanMethod: m.payload['scan_method'] as String?,
        gpsStatus: m.payload['gps_status'] as String?,
        note: m.payload['note'] as String?,
      );
    }
    return out;
  }
}
