import 'dart:async';

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
import 'sync_status_card.dart';
import 'work_actions.dart';
import 'work_providers.dart';

/// Detail pekerjaan (Figma "Detail Jadwal Preventive / Corrective"): ikon besar, judul, status;
/// "Detail Pengerjaan" (baris ikon), "Detail Permasalahan" (foto + pelapor + deskripsi),
/// "Grup Member"; tombol Form Check List & Activity Report; CTA bawah sesuai status.
class TaskDetailPage extends ConsumerWidget {
  const TaskDetailPage({super.key, required this.objectType, required this.id});
  final String objectType;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = (objectType: objectType, id: id);
    final local = ref.watch(localWorkItemProvider(id));
    final remote = ref.watch(workItemDetailProvider(key));
    final item = local.value ?? remote.value;
    if (item == null) {
      return Scaffold(
        appBar: AppBar(title: Text(objectType == 'work_order' ? 'Detail Work Order' : 'Detail Task')),
        body: remote.when(
          loading: () => const LoadingState(),
          error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(workItemDetailProvider(key))),
          data: (_) => const EmptyState(title: 'Tidak ditemukan', icon: Icons.search_off),
        ),
      );
    }
    return _Detail(item: item);
  }
}

final _teamMembersProvider = FutureProvider.family<List<TeamMember>, String>((ref, teamId) async {
  try {
    return (await ref.watch(catalogApiProvider).team(teamId)).members;
  } on AppError catch (_) {
    return const [];
  }
});

class _Detail extends ConsumerStatefulWidget {
  const _Detail({required this.item});
  final WorkItem item;
  @override
  ConsumerState<_Detail> createState() => _DetailState();
}

class _DetailState extends ConsumerState<_Detail> {
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

  String _title(WorkItem item) {
    if (item.isCleaning) return 'Detail Jadwal Cleaning';
    if (item.isPatrol) return 'Detail Patrol';
    if (item.maintenanceScheduleId != null || item.type == 'preventive') return 'Detail Jadwal Preventive';
    if (item.isWorkOrder) return 'Detail Jadwal Pekerjaan Corrective';
    return 'Detail Task';
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final s = S.of(context);
    final session = ref.watch(currentSessionProvider);
    final actions = WorkActions(ref, context);
    final key = (objectType: item.objectType, id: item.id);
    final run = ref.watch(checklistRunProvider(key)).value;
    final photos = ref.watch(attachmentsProvider(key)).value ?? const <Attachment>[];
    final pending = ref.watch(pendingFilesProvider(item.id)).value ?? const [];
    final members = item.assignee.teamId == null ? null : ref.watch(_teamMembersProvider(item.assignee.teamId!)).value;
    final isSup = session.isSupervisor;
    final base = item.isWorkOrder ? '/work-orders' : '/tasks';
    final hasChecklist = run != null || item.checklistTemplateId != null || item.checklistSummary != null;
    final showProblem = item.isWorkOrder || (item.description != null && item.description!.isNotEmpty) || photos.isNotEmpty;

    // CTA bawah
    Widget? cta;
    if (item.can(WorkAction.start)) {
      cta = BvPrimaryButton(label: 'Mulai Pekerjaan', loading: _busy, onPressed: () => _run(() => actions.start(item)));
    } else if (item.can(WorkAction.resume)) {
      cta = BvPrimaryButton(label: 'Lanjutkan Pekerjaan', loading: _busy, onPressed: () => _run(() => actions.resume(item)));
    } else if (item.can(WorkAction.complete)) {
      cta = BvPrimaryButton(
        label: 'Selesaikan Pekerjaan',
        loading: _busy,
        onPressed: () => _run(() async {
          if (hasChecklist && run != null && run.answeredCount < run.totalItems) {
            // Figma: penyelesaian dari Form Check List
            unawaited(context.push('$base/${item.id}/checklist'));
            return false;
          }
          return actions.complete(item);
        }),
      );
    } else if (isSup && item.can(WorkAction.close)) {
      cta = BvPrimaryButton(label: '${s.verify} & ${s.close}', icon: Icons.verified_outlined, loading: _busy, onPressed: () => _run(() => actions.close(item)));
    } else if (isSup && item.can(WorkAction.assign)) {
      cta = BvPrimaryButton(label: item.assignee.userId == null ? 'Tugaskan Pekerjaan' : 'Alihkan Pekerjaan', icon: Icons.person_add_alt_outlined, loading: _busy, onPressed: () => _run(() => actions.assign(item)));
    }

    return Scaffold(
      backgroundColor: BvTokens.surfaceBackground,
      appBar: AppBar(
        title: Text(_title(item)),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) async {
              switch (v) {
                case 'finding':
                  unawaited(context.push('/new/finding?object_type=${item.objectType}&object_id=${item.id}&location_id=${item.location.id ?? ''}&asset_id=${item.asset.id ?? ''}'));
                case 'incident':
                  unawaited(context.push('/new/incident?task_id=${item.id}&location_id=${item.location.id ?? ''}'));
                case 'wo':
                  unawaited(context.push('/new/work-order?asset_id=${item.asset.id ?? ''}&location_id=${item.location.id ?? ''}&source_type=${item.objectType}&source_id=${item.id}'));
                case 'hold':
                  await _run(() => actions.hold(item));
                case 'assign':
                  await _run(() => actions.assign(item));
                case 'reopen':
                  await _run(() => actions.reopen(item));
                case 'cancel':
                  await _run(() => actions.cancel(item));
                case 'sync':
                  await ref.read(syncControllerProvider.notifier).trigger(force: true);
              }
            },
            itemBuilder: (_) => [
              if (item.can(WorkAction.hold)) PopupMenuItem(value: 'hold', child: ListTile(leading: const Icon(Icons.pause_circle_outline), title: Text(s.hold))),
              if (session.can(Perm.findingsCreate)) PopupMenuItem(value: 'finding', child: ListTile(leading: const Icon(Icons.flag_outlined), title: Text(s.addFinding))),
              if (session.can(Perm.incidentsCreate) && !item.isWorkOrder) PopupMenuItem(value: 'incident', child: ListTile(leading: const Icon(Icons.report_gmailerrorred_outlined), title: Text(s.reportIncident))),
              if (session.can(Perm.workOrdersCreate)) PopupMenuItem(value: 'wo', child: ListTile(leading: const Icon(Icons.build_outlined), title: Text(s.createWorkOrder))),
              if (isSup && item.can(WorkAction.assign) && cta != null) PopupMenuItem(value: 'assign', child: ListTile(leading: const Icon(Icons.person_add_alt_outlined), title: Text(s.reassign))),
              if (isSup && item.can(WorkAction.reopen)) const PopupMenuItem(value: 'reopen', child: ListTile(leading: Icon(Icons.replay), title: Text('Buka kembali'))),
              if (isSup && item.can(WorkAction.cancel)) const PopupMenuItem(value: 'cancel', child: ListTile(leading: Icon(Icons.cancel_outlined), title: Text('Batalkan'))),
              PopupMenuItem(value: 'sync', child: ListTile(leading: const Icon(Icons.sync), title: Text(s.syncNow))),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // ---- header ----
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 28),
            child: Column(
              children: [
                KindIcon(item.isWorkOrder ? 'work_order' : item.isCleaning ? 'cleaning' : item.isPatrol ? 'patrol' : item.isInspection ? 'inspection' : 'task', size: 120),
                const SizedBox(height: 18),
                Text(item.title.toUpperCase(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: BvTokens.neutral900)),
                const SizedBox(height: 4),
                Text(item.number, style: const TextStyle(color: BvTokens.neutral400, fontSize: 12, fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                _StatusPill(objectType: item.objectType, status: item.status),
                if (item.isOverdue || item.flags.isNotEmpty || item.evidenceIncomplete) ...[
                  const SizedBox(height: 10),
                  Wrap(spacing: 6, runSpacing: 6, alignment: WrapAlignment.center, children: [
                    if (item.isOverdue) const FlagBadge('overdue'),
                    for (final f in item.flags.where((f) => f != 'overdue')) FlagBadge(f),
                    if (item.evidenceIncomplete) const FlagBadge('evidence_incomplete'),
                  ]),
                ],
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(padding: const EdgeInsets.only(top: 12), child: SyncStatusCard(objectId: item.id)),

          // ---- Detail Pengerjaan ----
          const CenteredSectionTitle('Detail Pengerjaan'),
          const Divider(height: 1),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                IconInfoRow(icon: Icons.flag_outlined, label: 'Prioritas', value: priorityLabel(item.priority)),
                IconInfoRow(icon: Icons.event_outlined, label: 'Tanggal Pengerjaan', value: BvFormat.dateTime(item.scheduledStartAt ?? item.createdAt)),
                IconInfoRow(icon: Icons.event_available_outlined, label: 'Tanggal Selesai Pengerjaan', value: BvFormat.dateTime(item.dueAt)),
                IconInfoRow(icon: Icons.place_outlined, label: 'Lokasi', value: item.location.pathText ?? item.location.name ?? ''),
                if (item.asset.id != null)
                  InkWell(
                    onTap: () => context.push('/assets/${item.asset.id}'),
                    child: IconInfoRow(icon: Icons.precision_manufacturing_outlined, label: 'Aset', value: '${item.asset.assetCode ?? ''} ${item.asset.name ?? ''}'.trim()),
                  ),
                if (item.startedAt != null) IconInfoRow(icon: Icons.play_circle_outline, label: 'Dimulai', value: BvFormat.dateTime(item.startedAt)),
                if (item.completedAt != null) IconInfoRow(icon: Icons.check_circle_outline, label: 'Selesai', value: BvFormat.dateTime(item.completedAt)),
                if (item.requiresEvidence) const IconInfoRow(icon: Icons.photo_camera_outlined, label: 'Evidence', value: 'Wajib foto'),
                if (item.vendorName != null) IconInfoRow(icon: Icons.handshake_outlined, label: 'Vendor', value: item.vendorNotes == null || item.vendorNotes!.isEmpty ? item.vendorName! : '${item.vendorName!} · ${item.vendorNotes!}'),
                if (item.vendorReference != null && item.vendorReference!.isNotEmpty) IconInfoRow(icon: Icons.receipt_long_outlined, label: 'Referensi vendor', value: item.vendorReference!),
                if (item.isWorkOrder && item.actualCost != null && item.actualCost!.amount > 0) IconInfoRow(icon: Icons.payments_outlined, label: 'Biaya aktual', value: BvFormat.money(item.actualCost!.amount, currency: item.actualCost!.currencyCode)),
              ],
            ),
          ),

          // ---- Detail Permasalahan (corrective / deskripsi) ----
          if (showProblem) ...[
            const CenteredSectionTitle('Detail Permasalahan'),
            const Divider(height: 1),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (photos.isNotEmpty || pending.isNotEmpty)
                    SizedBox(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (final p in pending)
                            Padding(padding: const EdgeInsets.only(right: 12), child: ClipRRect(borderRadius: BorderRadius.circular(12), child: SizedBox(width: 170, child: PhotoSource(localPath: p.localPath).image()))),
                          for (final a in photos)
                            Padding(padding: const EdgeInsets.only(right: 12), child: ClipRRect(borderRadius: BorderRadius.circular(12), child: SizedBox(width: 170, child: PhotoSource(url: a.thumbUrl ?? a.url).image()))),
                        ],
                      ),
                    )
                  else if (item.isOpen && session.can(Perm.attachmentsCreate))
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(children: [
                        CameraBox(onTap: _busy ? null : () => _run(() => actions.addPhoto(item, type: AttachmentType.before)), size: 56),
                        const SizedBox(width: 12),
                        const Expanded(child: Text('Belum ada foto. Tambahkan foto kondisi sebelum pengerjaan.', style: TextStyle(color: BvTokens.neutral500, fontSize: 13))),
                      ]),
                    ),
                  const SizedBox(height: 14),
                  Row(children: [
                    BvAvatar(name: item.createdByName ?? item.assignee.userName ?? '?', size: 34, border: false),
                    const SizedBox(width: 10),
                    Text(item.createdByName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                  ]),
                  if (item.description != null && item.description!.isNotEmpty) ...[
                    const SizedBox(height: 10),
                    Padding(padding: const EdgeInsets.only(right: 16), child: Text(item.description!, style: const TextStyle(fontSize: 14, color: BvTokens.neutral800, height: 1.45))),
                  ],
                ],
              ),
            ),
          ],

          // ---- Form Check List & Activity Report ----
          const CenteredSectionTitle('Pengerjaan'),
          const Divider(height: 1),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                if (hasChecklist)
                  ListTile(
                    leading: const Icon(Icons.fact_check_outlined, color: BvTokens.brand500),
                    title: const Text('Form Check List', style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(run == null ? 'Belum dimuat' : '${run.answeredCount}/${run.totalItems} item · ${run.notOkItems} kondisi buruk'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push('$base/${item.id}/checklist'),
                  ),
                if (item.isWorkOrder && session.can(Perm.partsUsageView))
                  ListTile(
                    leading: const Icon(Icons.inventory_2_outlined, color: BvTokens.brand500),
                    title: const Text('Parts Usage', style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(item.partsUsage == null || item.partsUsage!.isEmpty ? 'Spare part yang dipakai (stok berkurang otomatis)' : item.partsUsage!, maxLines: 2, overflow: TextOverflow.ellipsis),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push('$base/${item.id}/parts'),
                  ),
                ListTile(
                  leading: const Icon(Icons.article_outlined, color: BvTokens.brand500),
                  title: const Text('Activity Report', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text('${item.commentCount} laporan · ${item.attachmentCount + pending.length} foto'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push('$base/${item.id}/activity'),
                ),
                if (item.links.isNotEmpty)
                  for (final l in item.links)
                    ListTile(
                      leading: const Icon(Icons.link, color: BvTokens.neutral500),
                      title: Text(l.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                      subtitle: Text('${l.label} · ${humanize(l.linkType)}'),
                      trailing: StatusBadge(l.objectType, l.status, dense: true),
                      onTap: switch (l.objectType) {
                        'work_order' => () => context.push('/work-orders/${l.objectId}'),
                        'task' => () => context.push('/tasks/${l.objectId}'),
                        'finding' => () => context.push('/findings/${l.objectId}'),
                        'incident' => () => context.push('/incidents/${l.objectId}'),
                        _ => null,
                      },
                    ),
              ],
            ),
          ),

          // ---- Grup Member ----
          const CenteredSectionTitle('Grup Member'),
          const Divider(height: 1),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                if (item.assignee.userName != null) _MemberRow(name: item.assignee.userName!, subtitle: item.assignee.teamName),
                if (members != null)
                  for (final m in members.where((m) => m.userId != item.assignee.userId)) _MemberRow(name: m.fullName, subtitle: m.isLead ? 'Lead · ${item.assignee.teamName ?? ''}' : item.assignee.teamName),
                if (item.assignee.userName == null && (members == null || members.isEmpty))
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(item.assignee.teamName != null ? 'Tim ${item.assignee.teamName} (anggota dimuat saat online)' : 'Belum ditugaskan', style: const TextStyle(color: BvTokens.neutral500)),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: cta == null ? null : BottomActionBar(children: [cta]),
    );
  }
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.objectType, required this.status});
  final String objectType;
  final String status;

  @override
  Widget build(BuildContext context) {
    final def = statusDefOf(objectType, status);
    final sem = def == null ? Semantic.neutral : semanticOf(def.semantic);
    final p = SemanticPalette.of(sem);
    final solid = status == 'new' || status == 'assigned' || status == 'scheduled' ? BvTokens.critical600 : status == 'in_progress' ? BvTokens.success600 : p.solid;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(color: solid, borderRadius: BorderRadius.circular(BvTokens.radiusFull)),
      child: Text(statusLabel(objectType, status), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
    );
  }
}

class _MemberRow extends StatelessWidget {
  const _MemberRow({required this.name, this.subtitle});
  final String name;
  final String? subtitle;
  @override
  Widget build(BuildContext context) => ListTile(
        leading: BvAvatar(name: name, size: 44, border: false),
        title: Text(name, style: const TextStyle(fontSize: 16)),
        subtitle: subtitle == null ? null : Text(subtitle!),
        dense: true,
      );
}
