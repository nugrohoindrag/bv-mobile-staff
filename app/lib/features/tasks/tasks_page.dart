import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../home/work_item_list.dart';
import 'work_providers.dart';

/// Daftar Task / Work Order hari ini (lokal, offline-first) dengan filter tab.
/// `checklistMode` (tab Checklist housekeeping): hanya item dengan checklist, tap → runner.
class TasksPage extends ConsumerStatefulWidget {
  const TasksPage({super.key, this.checklistMode = false});
  final bool checklistMode;

  @override
  ConsumerState<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends ConsumerState<TasksPage> {
  String _tab = 'all';
  String _q = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final t = GoRouterState.of(context).uri.queryParameters['tab'];
    if (t != null) _tab = t;
  }

  @override
  Widget build(BuildContext context) {
    final shell = ref.watch(currentSessionProvider).shell;
    final items = ref.watch(localWorkItemsProvider(shell.workKinds));
    final isHk = shell.role == ShellRole.housekeepingStaff;
    final tabs = widget.checklistMode
        ? const [('all', 'Semua'), ('todo', 'Belum'), ('done', 'Selesai')]
        : isHk
        ? const [('all', 'Semua'), ('cleaning', 'Cleaning'), ('task', 'Task'), ('done', 'Selesai')]
        : const [('all', 'Semua'), ('task', 'Task'), ('wo', 'Work Order'), ('pm', 'Preventive'), ('done', 'Selesai')];

    List<WorkItem> filter(List<WorkItem> all) {
      Iterable<WorkItem> it = all;
      if (widget.checklistMode) it = it.where((i) => i.checklistTemplateId != null || i.checklistSummary != null);
      it = switch (_tab) {
        'done' => it.where((i) => !i.isOpen),
        'todo' => it.where((i) => i.isOpen && (i.checklistSummary == null || i.checklistSummary!.answeredItems < i.checklistSummary!.totalItems)),
        'task' => it.where((i) => i.isOpen && !i.isWorkOrder && !i.isCleaning && !i.isPatrol),
        'wo' => it.where((i) => i.isOpen && i.isWorkOrder),
        'pm' => it.where((i) => i.isOpen && (i.maintenanceScheduleId != null || i.type == 'preventive')),
        'cleaning' => it.where((i) => i.isOpen && i.isCleaning),
        _ => it.where((i) => i.isOpen),
      };
      if (_q.isNotEmpty) {
        final q = _q.toLowerCase();
        it = it.where(
          (i) =>
              i.title.toLowerCase().contains(q) ||
              i.number.toLowerCase().contains(q) ||
              (i.location.pathText?.toLowerCase().contains(q) ?? false) ||
              (i.asset.name?.toLowerCase().contains(q) ?? false),
        );
      }
      return it.toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.checklistMode
              ? 'Checklist Hari Ini'
              : isHk
              ? 'Cleaning & Task'
              : 'Tasks & Work Orders',
        ),
      ),
      // Pencarian + chip filter di body (bukan `AppBar.bottom` dengan tinggi tetap 96 yang lebih kecil dari
      // isinya → overflow/terpotong di font besar).
      body: Column(
        children: [
          Material(
            color: Theme.of(context).appBarTheme.backgroundColor ?? Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 10),
                  child: TextField(
                    onChanged: (v) => setState(() => _q = v),
                    decoration: const InputDecoration(hintText: 'Cari nomor, judul, lokasi, aset', prefixIcon: Icon(Icons.search), isDense: true),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                  child: Row(
                    children: [
                      for (final (key, label) in tabs)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ChoiceChip(label: Text(label), selected: _tab == key, selectedColor: BvTokens.brand100, onSelected: (_) => setState(() => _tab = key)),
                        ),
                    ],
                  ),
                ),
                const Divider(height: 1),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => ref.read(syncControllerProvider.notifier).trigger(force: true),
              child: items.when(
                loading: () => const LoadingState(),
                error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(localWorkItemsProvider)),
                data: (all) {
                  final list = filter(all);
                  if (list.isEmpty) {
                    return ListView(
                      children: [EmptyState(title: 'Tidak ada pekerjaan', message: 'Tidak ada item untuk filter ini.', icon: Icons.inbox_outlined)],
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: list.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (_, i) {
                      final item = list[i];
                      if (!widget.checklistMode) return WorkItemTile(item: item);
                      return _ChecklistTile(item: item);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChecklistTile extends ConsumerWidget {
  const _ChecklistTile({required this.item});
  final WorkItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sum = item.checklistSummary;
    final total = sum?.totalItems ?? 0;
    final done = sum?.answeredItems ?? 0;
    final pct = total == 0 ? 0.0 : done / total;
    return SectionCard(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(BvTokens.radiusXl),
        onTap: () => context.push('${detailRouteFor(item)}/checklist'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              KindIcon(item.isCleaning ? 'cleaning' : 'task', size: 48),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title, style: Theme.of(context).textTheme.titleMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
                    LocationPath(item.location.pathText, maxLines: 1),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(value: pct, minHeight: 6, backgroundColor: BvTokens.neutral100, color: pct >= 1 ? BvTokens.success600 : BvTokens.brand500),
                    ),
                    const SizedBox(height: 4),
                    Text('$done / $total item · ${sum?.notOkItems ?? 0} Not OK', style: const TextStyle(fontSize: 12, color: BvTokens.neutral500)),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              StatusBadge(item.objectType, item.status, dense: true),
            ],
          ),
        ),
      ),
    );
  }
}
