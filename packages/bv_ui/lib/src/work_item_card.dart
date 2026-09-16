import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';
import 'badges.dart';
import 'semantic_colors.dart';
import 'theme.dart';

/// Ikon domain bulat (mockup: kunci inggris ungu untuk engineering, perisai merah untuk security).
class KindIcon extends StatelessWidget {
  const KindIcon(this.kind, {super.key, this.size = 56});
  final String kind;
  final double size;

  static (IconData, List<Color>) styleFor(String kind) => switch (kind) {
        'patrol' => (Icons.shield_outlined, const [Color(0xFFEF5350), Color(0xFFC62828)]),
        'cleaning' => (Icons.cleaning_services_outlined, const [Color(0xFF26C6DA), Color(0xFF00838F)]),
        'inspection' => (Icons.fact_check_outlined, const [Color(0xFFFFB74D), Color(0xFFEF6C00)]),
        'work_order' => (Icons.build_outlined, const [Color(0xFF7986CB), Color(0xFF3F51B5)]),
        _ => (Icons.handyman_outlined, const [Color(0xFF7986CB), Color(0xFF5C6BC0)]),
      };

  @override
  Widget build(BuildContext context) {
    final (icon, colors) = styleFor(kind);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: colors, begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Icon(icon, color: Colors.white, size: size * 0.5),
    );
  }
}

/// Kartu kerja (TaskCard / WorkOrderCard PRD §25.2) — gaya mockup: strip status kiri, ikon domain,
/// judul, lokasi, waktu, avatar assignee, badge status menempel kanan; badge sync bila belum sinkron.
class WorkItemCard extends StatelessWidget {
  const WorkItemCard({
    super.key,
    required this.item,
    this.onTap,
    this.syncState,
    this.kind,
    this.showNumber = false,
  });

  final WorkItem item;
  final VoidCallback? onTap;
  final String? syncState;
  final String? kind;
  final bool showNumber;

  String get _kind => kind ?? (item.isWorkOrder ? 'work_order' : item.isPatrol ? 'patrol' : item.isCleaning ? 'cleaning' : item.isInspection ? 'inspection' : 'task');

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    final strip = statusStripColor(item.objectType, item.status);
    final when = item.scheduledStartAt ?? item.dueAt;
    final assignees = [if (item.assignee.userName != null) item.assignee.userName!];
    final flags = item.flags.where((f) => f != 'overdue' || !item.isOverdue).toList();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(BvTokens.radiusXl),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(BvTokens.radiusXl),
            boxShadow: bvCardShadow,
          ),
          clipBehavior: Clip.antiAlias,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(width: 8, color: strip),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 14, 0, 14),
                    child: Row(
                      children: [
                        KindIcon(_kind),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.title.toUpperCase(), maxLines: 2, overflow: TextOverflow.ellipsis, style: t.titleMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w800)),
                              if (item.location.pathText != null && item.location.pathText!.isNotEmpty) ...[
                                const SizedBox(height: 2),
                                Text(item.location.pathText!.toUpperCase(),
                                    maxLines: 1, overflow: TextOverflow.ellipsis, style: t.bodySmall?.copyWith(color: BvTokens.neutral500, fontWeight: FontWeight.w600, letterSpacing: 0.2)),
                              ] else if (item.asset.name != null) ...[
                                const SizedBox(height: 2),
                                Text(item.asset.name!, maxLines: 1, overflow: TextOverflow.ellipsis, style: t.bodySmall?.copyWith(color: BvTokens.neutral500, fontWeight: FontWeight.w600)),
                              ],
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  if (showNumber) ...[
                                    Text(item.number, style: t.bodySmall?.copyWith(color: BvTokens.neutral400)),
                                    const SizedBox(width: 6),
                                    const Text('·', style: TextStyle(color: BvTokens.neutral400)),
                                    const SizedBox(width: 6),
                                  ],
                                  Flexible(
                                    child: Text(
                                      BvFormat.timeDayDate(when),
                                      style: t.bodySmall?.copyWith(color: item.isOverdue ? BvTokens.critical600 : BvTokens.neutral500, fontWeight: item.isOverdue ? FontWeight.w700 : FontWeight.w400),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  if (assignees.isNotEmpty) AvatarStack(names: assignees, size: 26) else const SizedBox(height: 26),
                                  const SizedBox(width: 8),
                                  if (item.isOverdue) const FlagBadge('overdue'),
                                  if (item.isOverdue) const SizedBox(width: 4),
                                  if (item.priority == 'critical' || item.priority == 'high') PriorityBadge(item.priority),
                                  for (final f in flags.where((f) => f != 'overdue').take(1)) ...[const SizedBox(width: 4), FlagBadge(f)],
                                  const Spacer(),
                                  if (syncState != null && syncState != SyncState.synced) SyncBadge(syncState!),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).withStatusBadge(item);
  }
}

extension on Widget {
  /// Badge status menempel kanan-bawah kartu (mockup "new" / "on progress").
  Widget withStatusBadge(WorkItem item) => Stack(
        children: [
          this,
          Positioned(
            right: 0,
            bottom: 18,
            child: StatusBadge(item.objectType, item.status, attachedRight: true),
          ),
        ],
      );
}
