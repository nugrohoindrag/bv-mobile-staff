import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../home/work_item_list.dart';
import 'work_providers.dart';

/// Jenis daftar jadwal (Figma "Daftar Jadwal Pekerjaan Preventive/Corrective").
enum ScheduleKind { preventive, corrective, cleaning, task, tenant, history }

extension ScheduleKindX on ScheduleKind {
  String get title => switch (this) {
    ScheduleKind.preventive => 'Daftar Jadwal Pekerjaan Preventive',
    ScheduleKind.corrective => 'Daftar Jadwal Pekerjaan Corrective',
    ScheduleKind.cleaning => 'Daftar Jadwal Cleaning',
    ScheduleKind.task => 'Daftar Task',
    ScheduleKind.tenant => 'Permintaan Tenant',
    ScheduleKind.history => 'History Pekerjaan',
  };

  static ScheduleKind parse(String s) => ScheduleKind.values.firstWhere((k) => k.name == s, orElse: () => ScheduleKind.task);
}

bool _isPreventive(WorkItem i) => i.maintenanceScheduleId != null || i.type == 'preventive' || i.type == 'inspection';

bool _matches(ScheduleKind kind, WorkItem i) => switch (kind) {
  ScheduleKind.preventive => _isPreventive(i),
  ScheduleKind.corrective => !_isPreventive(i) && !i.isCleaning && !i.isPatrol,
  ScheduleKind.cleaning => i.isCleaning,
  ScheduleKind.task => !i.isPatrol && !i.isCleaning,
  ScheduleKind.tenant => i.sourceType == 'service_request',
  ScheduleKind.history => !i.isOpen,
};

/// Item per tanggal: lokal (bundle hari ini + open/overdue) digabung hasil server untuk tanggal lain.
final scheduleDayProvider = FutureProvider.family<List<WorkItem>, ({ScheduleKind kind, DateTime day})>((ref, key) async {
  final session = ref.watch(currentSessionProvider);
  final local = await ref.watch(localWorkItemsProvider(session.shell.workKinds).future);
  bool onDay(WorkItem i) {
    final d = key.kind == ScheduleKind.history ? (i.completedAt ?? i.closedAt ?? i.updatedAt) : (i.scheduledStartAt ?? i.dueAt ?? i.createdAt);
    return BvFormat.isSameDay(d, key.day);
  }

  final byId = <String, WorkItem>{for (final i in local.where((i) => _matches(key.kind, i) && onDay(i))) i.id: i};
  final isToday = BvFormat.isSameDay(key.day, DateTime.now());
  // Tanggal selain hari ini (atau history) → ambil dari server bila online.
  if (!isToday || key.kind == ScheduleKind.history || byId.isEmpty) {
    try {
      final api = ref.watch(workApiProvider);
      final start = DateTime(key.day.year, key.day.month, key.day.day).toUtc();
      final end = start.add(const Duration(days: 1));
      final extra = <String, String>{
        if (key.kind == ScheduleKind.history) 'completed_from': start.toIso8601String() else 'scheduled_from': start.toIso8601String(),
        if (key.kind == ScheduleKind.history) 'completed_to': end.toIso8601String() else 'scheduled_to': end.toIso8601String(),
      };
      final status = key.kind == ScheduleKind.history ? ['completed', 'closed'] : ['new', 'scheduled', 'assigned', 'in_progress', 'on_hold'];
      final me = session.me.id;
      final filter = WorkFilter(status: status, assigneeId: session.isSupervisor ? null : me, sort: 'scheduled_start_at', limit: 100, extra: extra);
      final futures = <Future<Page<WorkItem>>>[];
      if (key.kind != ScheduleKind.cleaning) futures.add(api.list('task', filter));
      const withWo = {ScheduleKind.corrective, ScheduleKind.preventive, ScheduleKind.tenant, ScheduleKind.history};
      if (withWo.contains(key.kind)) futures.add(api.list('work_order', filter));
      if (key.kind == ScheduleKind.cleaning) futures.add(ref.watch(cleaningApiProvider).list(filter));
      for (final p in await Future.wait(futures)) {
        for (final i in p.data.where((i) => _matches(key.kind, i) && onDay(i))) {
          byId.putIfAbsent(i.id, () => i);
        }
      }
    } on AppError catch (_) {
      // offline: hanya data lokal
    }
  }
  final list = byId.values.toList()..sort((a, b) => (a.scheduledStartAt ?? a.dueAt ?? a.createdAt).compareTo(b.scheduledStartAt ?? b.dueAt ?? b.createdAt));
  return list;
});

/// Daftar jadwal per hari dengan strip kalender mingguan (Figma).
class ScheduleListPage extends ConsumerStatefulWidget {
  const ScheduleListPage({super.key, required this.kind, this.embedded = false});
  final ScheduleKind kind;

  /// true bila dipakai sebagai tab (tanpa tombol kembali).
  final bool embedded;

  @override
  ConsumerState<ScheduleListPage> createState() => _ScheduleListPageState();
}

class _ScheduleListPageState extends ConsumerState<ScheduleListPage> {
  DateTime _day = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final key = (kind: widget.kind, day: DateTime(_day.year, _day.month, _day.day));
    final items = ref.watch(scheduleDayProvider(key));
    final session = ref.watch(currentSessionProvider);
    final local = ref.watch(localWorkItemsProvider(session.shell.workKinds)).value ?? const <WorkItem>[];
    final dots = <String>{
      for (final i in local.where((i) => _matches(widget.kind, i)))
        WeekStrip.dayKey(widget.kind == ScheduleKind.history ? (i.completedAt ?? i.updatedAt) : (i.scheduledStartAt ?? i.dueAt ?? i.createdAt)),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kind.title),
        automaticallyImplyLeading: !widget.embedded,
        actions: [IconButton(tooltip: 'Hari ini', icon: const Icon(Icons.today_outlined), onPressed: () => setState(() => _day = DateTime.now()))],
      ),
      body: Column(
        children: [
          WeekStrip(
            selected: _day,
            dots: dots,
            onSelected: (d) => setState(() => _day = d),
            onMonthTap: () async {
              final d = await showDatePicker(context: context, initialDate: _day, firstDate: DateTime(2024), lastDate: DateTime(2100));
              if (d != null) setState(() => _day = d);
            },
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await ref.read(syncControllerProvider.notifier).trigger(force: true);
                ref.invalidate(scheduleDayProvider(key));
              },
              child: items.when(
                loading: () => ListView(padding: const EdgeInsets.all(16), children: const [SkeletonCard(), SizedBox(height: 12), SkeletonCard()]),
                error: (e, _) => ListView(
                  children: [ErrorState(error: e, onRetry: () => ref.invalidate(scheduleDayProvider(key)))],
                ),
                data: (list) => list.isEmpty
                    ? ListView(
                        children: [
                          EmptyState(
                            title: 'Tidak ada pekerjaan',
                            message: 'Tidak ada ${widget.kind == ScheduleKind.history ? 'riwayat' : 'jadwal'} pada ${BvFormat.dateLong(_day)}.',
                            icon: Icons.event_busy_outlined,
                          ),
                        ],
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(16),
                        itemCount: list.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 12),
                        itemBuilder: (_, i) => WorkItemTile(item: list[i]),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
