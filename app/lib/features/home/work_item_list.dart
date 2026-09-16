import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../tasks/work_providers.dart';

/// Route detail per jenis item: patrol → /patrol/{id}; WO → /work-orders/{id}; lainnya → /tasks/{id}.
String detailRouteFor(WorkItem item) {
  if (item.isPatrol) return '/patrol/${item.id}';
  if (item.isWorkOrder) return '/work-orders/${item.id}';
  return '/tasks/${item.id}';
}

/// Sliver list kartu kerja dengan badge sync per item.
class WorkItemSliverList extends StatelessWidget {
  const WorkItemSliverList({super.key, required this.items});
  final List<WorkItem> items;

  @override
  Widget build(BuildContext context) => SliverList.separated(
        itemCount: items.length,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (context, i) => WorkItemTile(item: items[i]),
      );
}

class WorkItemTile extends ConsumerWidget {
  const WorkItemTile({super.key, required this.item});
  final WorkItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sync = ref.watch(syncStateOfProvider(item.id)).value;
    return WorkItemCard(
      item: item,
      syncState: sync,
      onTap: () => context.push(detailRouteFor(item)),
    );
  }
}
