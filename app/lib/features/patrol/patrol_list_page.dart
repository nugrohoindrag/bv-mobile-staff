import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/sync_controller.dart';
import '../home/work_item_list.dart';
import '../tasks/work_providers.dart';

/// Patrol hari ini (security officer): kartu patrol + progres checkpoint.
class PatrolListPage extends ConsumerWidget {
  const PatrolListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(localWorkItemsProvider(const {'patrol'}));
    return Scaffold(
      appBar: AppBar(title: const Text('Patrol Hari Ini')),
      body: RefreshIndicator(
        onRefresh: () => ref.read(syncControllerProvider.notifier).trigger(force: true),
        child: items.when(
          loading: () => const LoadingState(),
          error: (e, _) => ErrorState(error: e),
          data: (list) {
            final open = list.where((i) => i.isOpen).toList();
            final done = list.where((i) => !i.isOpen).toList();
            if (list.isEmpty) {
              return ListView(children: const [EmptyState(title: 'Belum ada patrol hari ini', message: 'Jadwal patrol muncul di sini setelah dibuat supervisor.', icon: Icons.shield_outlined)]);
            }
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                for (final p in open) ...[_PatrolCard(item: p), const SizedBox(height: 12)],
                if (done.isNotEmpty) ...[
                  const SectionHeader(title: 'Selesai', dotColor: BvTokens.neutral400, padding: EdgeInsets.fromLTRB(4, 8, 4, 12)),
                  for (final p in done) ...[_PatrolCard(item: p), const SizedBox(height: 12)],
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _PatrolCard extends ConsumerWidget {
  const _PatrolCard({required this.item});
  final WorkItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cps = ref.watch(localCheckpointsProvider(item.id)).value ?? const [];
    final scanned = cps.where((c) => c.isScanned).length;
    final missed = cps.where((c) => c.isMissed).length;
    return Column(
      children: [
        WorkItemTile(item: item),
        if (cps.isNotEmpty)
          Transform.translate(
            offset: const Offset(0, -6),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 8),
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(BvTokens.radiusLg)), boxShadow: bvCardShadow),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(value: cps.isEmpty ? 0 : scanned / cps.length, minHeight: 6, backgroundColor: BvTokens.neutral100, color: missed > 0 ? BvTokens.warning600 : BvTokens.success600),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('$scanned/${cps.length} checkpoint${missed > 0 ? ' · $missed terlewat' : ''}', style: const TextStyle(fontSize: 12, color: BvTokens.neutral600, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 6),
                  InkWell(onTap: () => context.push('/patrol/${item.id}'), child: const Icon(Icons.chevron_right, color: BvTokens.neutral400)),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
