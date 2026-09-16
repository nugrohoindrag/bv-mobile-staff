import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../l10n/app_localizations.dart';
import '../home/work_item_list.dart';
import '../tasks/work_actions.dart';

/// Filter tab supervisor → query server.
enum TeamTab { assign, running, verify, overdue }

final teamListProvider = FutureProvider.family<List<WorkItem>, TeamTab>((ref, tab) async {
  final api = ref.watch(workApiProvider);
  final session = ref.watch(currentSessionProvider);
  final teamIds = {...session.me.leadTeamIds, ...session.me.teamIds};
  WorkFilter f(List<String> status) => WorkFilter(status: status, sort: '-updated_at', limit: 100, extra: tab == TeamTab.overdue ? const {'overdue': 'true'} : const {});
  final statuses = switch (tab) {
    TeamTab.assign => ['new', 'scheduled'],
    TeamTab.running => ['assigned', 'in_progress', 'on_hold'],
    TeamTab.verify => ['completed'],
    TeamTab.overdue => ['new', 'scheduled', 'assigned', 'in_progress', 'on_hold'],
  };
  final results = await Future.wait([api.list('task', f(statuses)), api.list('work_order', f(statuses))]);
  var items = [...results[0].data, ...results[1].data];
  if (tab == TeamTab.overdue) items = items.where((i) => i.isOverdue).toList();
  if (teamIds.isNotEmpty) {
    // Prioritaskan item tim sendiri; item tanpa tim (perlu ditugaskan) tetap tampil.
    items.sort((a, b) {
      final am = teamIds.contains(a.assignee.teamId) ? 0 : 1;
      final bm = teamIds.contains(b.assignee.teamId) ? 0 : 1;
      return am != bm ? am - bm : (a.dueAt ?? DateTime(2100)).compareTo(b.dueAt ?? DateTime(2100));
    });
  }
  return items;
});

/// Tab Team (supervisor, PRD §20.4): perlu ditugaskan · berjalan · perlu verifikasi · overdue.
class TeamPage extends ConsumerStatefulWidget {
  const TeamPage({super.key});
  @override
  ConsumerState<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends ConsumerState<TeamPage> with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 4, vsync: this);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (GoRouterState.of(context).uri.queryParameters['tab'] == 'verify') _tabs.index = 2;
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team'),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.add_circle_outline),
            tooltip: 'Buat',
            onSelected: (v) => context.push(v == 'task' ? '/new/task' : '/new/work-order'),
            itemBuilder: (_) => [
              const PopupMenuItem(value: 'task', child: ListTile(leading: Icon(Icons.checklist_rtl), title: Text('Buat Task'))),
              PopupMenuItem(value: 'wo', child: ListTile(leading: const Icon(Icons.build_outlined), title: Text(s.createWorkOrder))),
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelColor: BvTokens.brand600,
          indicatorColor: BvTokens.brand500,
          tabs: const [Tab(text: 'Perlu ditugaskan'), Tab(text: 'Berjalan'), Tab(text: 'Perlu verifikasi'), Tab(text: 'Overdue')],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: [for (final t in TeamTab.values) _TeamList(tab: t)],
      ),
    );
  }
}

class _TeamList extends ConsumerWidget {
  const _TeamList({required this.tab});
  final TeamTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(teamListProvider(tab));
    final s = S.of(context);
    return RefreshIndicator(
      onRefresh: () async => ref.invalidate(teamListProvider(tab)),
      child: list.when(
        loading: () => const LoadingState(),
        error: (e, _) => ListView(children: [ErrorState(error: e, onRetry: () => ref.invalidate(teamListProvider(tab)))]),
        data: (items) => items.isEmpty
            ? ListView(children: const [EmptyState(title: 'Tidak ada item', icon: Icons.inbox_outlined)])
            : ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: items.length,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (_, i) {
                  final item = items[i];
                  return Column(
                    children: [
                      WorkItemCard(item: item, onTap: () => context.push(detailRouteFor(item))),
                      if (tab == TeamTab.assign || tab == TeamTab.verify)
                        Transform.translate(
                          offset: const Offset(0, -6),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            padding: const EdgeInsets.fromLTRB(12, 10, 12, 8),
                            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(BvTokens.radiusLg)), boxShadow: bvCardShadow),
                            child: Row(
                              children: [
                                Expanded(
                                  child: FilledButton.icon(
                                    style: FilledButton.styleFrom(backgroundColor: tab == TeamTab.verify ? BvTokens.success600 : BvTokens.brand500, minimumSize: const Size(0, 40)),
                                    icon: Icon(tab == TeamTab.verify ? Icons.verified_outlined : Icons.person_add_alt_outlined, size: 18),
                                    label: Text(tab == TeamTab.verify ? '${s.verify} & ${s.close}' : s.assign),
                                    onPressed: () async {
                                      final a = WorkActions(ref, context);
                                      final ok = tab == TeamTab.verify ? await a.close(item) : await a.assign(item);
                                      if (ok) ref.invalidate(teamListProvider);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
