import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';
import '../../shared/gps.dart';
import '../tasks/sync_status_card.dart';
import '../tasks/work_actions.dart';
import '../tasks/work_providers.dart';

/// Detail patrol (PRD §13, WF-002): urutan checkpoint, scan QR / manual, temuan, insiden, selesai.
class PatrolDetailPage extends ConsumerStatefulWidget {
  const PatrolDetailPage({super.key, required this.taskId});
  final String taskId;
  @override
  ConsumerState<PatrolDetailPage> createState() => _PatrolDetailPageState();
}

class _PatrolDetailPageState extends ConsumerState<PatrolDetailPage> {
  bool _busy = false;

  Future<void> _run(Future<bool> Function() f) async {
    setState(() => _busy = true);
    try {
      await f();
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<bool> _manualScan(WorkItem task, CheckpointScan cp) async {
    final note = await showReasonDialog(context, title: 'Verifikasi manual — ${cp.checkpointName}', hint: 'Alasan QR tidak dapat dipindai (wajib)', confirm: 'Verifikasi');
    if (note == null) return false;
    final fix = await const GpsService().capture();
    await ref.read(localRepoProvider).scanCheckpoint(task.id, ScanInput(scanMethod: ScanMethod.manual, checkpointId: cp.checkpointId, note: note, gpsStatus: fix.status, gpsLat: fix.lat, gpsLng: fix.lng));
    ref.read(syncControllerProvider.notifier).afterMutation();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final key = (objectType: 'task', id: widget.taskId);
    final task = ref.watch(localWorkItemProvider(widget.taskId)).value ?? ref.watch(workItemDetailProvider(key)).value;
    final cps = ref.watch(localCheckpointsProvider(widget.taskId)).value ?? const <CheckpointScan>[];
    final session = ref.watch(currentSessionProvider);
    if (task == null) {
      return Scaffold(appBar: AppBar(title: const Text('Patrol')), body: const LoadingState());
    }
    final actions = WorkActions(ref, context);
    final scanned = cps.where((c) => c.isScanned).length;
    final nextCp = cps.where((c) => c.isPending).firstOrNull;
    final canScan = task.isInProgress && session.can(Perm.patrolStart);

    return Scaffold(
      appBar: AppBar(
        title: Text(task.number),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) {
              switch (v) {
                case 'finding':
                  context.push('/new/finding?object_type=task&object_id=${task.id}&location_id=${task.location.id ?? ''}');
                case 'incident':
                  context.push('/new/incident?task_id=${task.id}&location_id=${task.location.id ?? ''}');
                case 'detail':
                  context.push('/tasks/${task.id}');
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: 'finding', child: ListTile(leading: const Icon(Icons.flag_outlined), title: Text(s.addFinding))),
              PopupMenuItem(value: 'incident', child: ListTile(leading: const Icon(Icons.report_gmailerrorred_outlined), title: Text(s.reportIncident))),
              const PopupMenuItem(value: 'detail', child: ListTile(leading: Icon(Icons.info_outline), title: Text('Detail task & evidence'))),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          SyncStatusCard(objectId: task.id),
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const KindIcon('patrol', size: 48),
                  const SizedBox(width: 12),
                  Expanded(child: Text(task.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18))),
                  StatusBadge('task', task.status, dense: true),
                ]),
                const SizedBox(height: 10),
                LocationPath(task.location.pathText),
                const SizedBox(height: 6),
                Text('Jadwal ${BvFormat.dateTime(task.scheduledStartAt)} · tempo ${BvFormat.dateTime(task.dueAt)}', style: const TextStyle(color: BvTokens.neutral500, fontSize: 13)),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(value: cps.isEmpty ? 0 : scanned / cps.length, minHeight: 8, backgroundColor: BvTokens.neutral100, color: BvTokens.success600),
                ),
                const SizedBox(height: 6),
                Text('$scanned dari ${cps.length} checkpoint terverifikasi', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          SectionHeader(title: 'Urutan Checkpoint', trailing: nextCp == null ? null : 'Berikutnya: ${nextCp.checkpointName}', dotColor: BvTokens.info600),
          SectionCard(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                for (final cp in cps)
                  ListTile(
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundColor: cp.isScanned ? BvTokens.success600 : cp.isMissed ? BvTokens.critical600 : (cp == nextCp ? BvTokens.brand500 : BvTokens.neutral200),
                      foregroundColor: cp.isPending && cp != nextCp ? BvTokens.neutral600 : Colors.white,
                      child: cp.isScanned ? const Icon(Icons.check, size: 18) : cp.isMissed ? const Icon(Icons.close, size: 18) : Text('${cp.sortOrder}', style: const TextStyle(fontWeight: FontWeight.w800)),
                    ),
                    title: Text(cp.checkpointName, style: const TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(cp.isScanned
                        ? '${cp.scanMethod == ScanMethod.manual ? 'Manual' : 'QR'} · ${BvFormat.time(cp.scannedAt)}${cp.note != null ? ' · ${cp.note}' : ''}'
                        : cp.isMissed
                            ? 'Terlewat${cp.missedReason != null ? ' · ${cp.missedReason}' : ''}'
                            : cp.locationPath),
                    trailing: cp.isPending && canScan
                        ? IconButton(
                            tooltip: 'Verifikasi manual',
                            icon: const Icon(Icons.edit_note, color: BvTokens.neutral500),
                            onPressed: _busy ? null : () => _run(() => _manualScan(task, cp)),
                          )
                        : StatusBadge('checkpoint', cp.status, dense: true),
                  ),
                if (cps.isEmpty) const Padding(padding: EdgeInsets.all(16), child: Text('Checkpoint belum dimuat — perlu koneksi untuk mengambil rute patrol.', style: TextStyle(color: BvTokens.neutral500))),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: BottomActionBar(
        children: [
          if (task.can(WorkAction.start))
            BvPrimaryButton(label: s.startPatrol, icon: Icons.play_arrow, loading: _busy, onPressed: () => _run(() => actions.start(task)))
          else if (task.isInProgress) ...[
            BvPrimaryButton(label: 'Scan Checkpoint', icon: Icons.qr_code_scanner, loading: _busy, onPressed: canScan ? () => context.push('/scan/full?patrol_task_id=${task.id}') : null),
            BvSecondaryButton(label: s.complete, icon: Icons.check, onPressed: _busy ? null : () => _run(() => _completePatrol(task, cps, actions))),
          ] else if (task.can(WorkAction.resume))
            BvPrimaryButton(label: s.resume, icon: Icons.play_arrow, loading: _busy, onPressed: () => _run(() => actions.resume(task)))
          else
            BvSecondaryButton(label: 'Lihat detail', icon: Icons.info_outline, onPressed: () => context.push('/tasks/${task.id}')),
        ],
      ),
    );
  }

  Future<bool> _completePatrol(WorkItem task, List<CheckpointScan> cps, WorkActions actions) async {
    final pending = cps.where((c) => c.isPending).length;
    if (pending > 0) {
      final ok = await showConfirmDialog(context, title: 'Masih ada $pending checkpoint belum diverifikasi', message: 'Checkpoint yang belum diverifikasi akan ditandai Terlewat (Missed) oleh sistem. Lanjutkan selesai patrol?', confirm: 'Selesaikan', danger: true);
      if (!ok) return false;
    }
    if (!mounted) return false;
    return actions.complete(task);
  }
}
