import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

import 'semantic_colors.dart';

/// Badge semantik generik (DS §2.2): solid | soft | outline.
class BvBadge extends StatelessWidget {
  const BvBadge({
    super.key,
    required this.label,
    this.semantic = Semantic.neutral,
    this.variant = BadgeVariant.soft,
    this.icon,
    this.attachedRight = false,
    this.dense = false,
  });

  final String label;
  final Semantic semantic;
  final BadgeVariant variant;
  final IconData? icon;

  /// Gaya mockup: menempel ke tepi kanan kartu, sudut kiri bulat.
  final bool attachedRight;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final p = SemanticPalette.of(semantic);
    final (bg, fg, border) = switch (variant) {
      BadgeVariant.solid => (p.solid, Colors.white, p.solid),
      BadgeVariant.soft => (p.soft, p.text, p.softBorder),
      BadgeVariant.outline => (Colors.transparent, p.text, p.solid),
    };
    final radius = attachedRight
        ? const BorderRadius.horizontal(left: Radius.circular(BvTokens.radiusFull))
        : BorderRadius.circular(BvTokens.radiusFull);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: dense ? 8 : 12, vertical: dense ? 2 : 5),
      decoration: BoxDecoration(color: bg, borderRadius: radius, border: Border.all(color: border)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[Icon(icon, size: dense ? 12 : 14, color: fg), const SizedBox(width: 4)],
          Text(label, style: TextStyle(color: fg, fontSize: dense ? 11 : 12, fontWeight: FontWeight.w700, height: 1.2)),
        ],
      ),
    );
  }
}

/// Status object dari `status-map` (label Indonesia, semantic, variant) — sumber tunggal dengan web.
class StatusBadge extends StatelessWidget {
  const StatusBadge(this.objectType, this.status, {super.key, this.attachedRight = false, this.dense = false, this.locale = 'id'});
  final String objectType;
  final String status;
  final bool attachedRight;
  final bool dense;
  final String locale;

  @override
  Widget build(BuildContext context) {
    final def = statusDefOf(objectType, status);
    return BvBadge(
      label: statusLabel(objectType, status, locale: locale),
      semantic: def == null ? Semantic.neutral : semanticOf(def.semantic),
      variant: def == null ? BadgeVariant.soft : variantOf(def.variant),
      attachedRight: attachedRight,
      dense: dense,
    );
  }
}

class PriorityBadge extends StatelessWidget {
  const PriorityBadge(this.priority, {super.key, this.dense = true});
  final String priority;
  final bool dense;
  @override
  Widget build(BuildContext context) => StatusBadge('priority', priority, dense: dense);
}

class SeverityBadge extends StatelessWidget {
  const SeverityBadge(this.severity, {super.key, this.dense = true});
  final String severity;
  final bool dense;
  @override
  Widget build(BuildContext context) => StatusBadge('severity', severity, dense: dense);
}

/// Pending Sync / Synced / Sync Failed / Sync Conflict (PRD §21).
class SyncBadge extends StatelessWidget {
  const SyncBadge(this.state, {super.key, this.dense = true});
  final String state;
  final bool dense;

  static IconData iconFor(String state) => switch (state) {
        SyncState.pending => Icons.cloud_upload_outlined,
        SyncState.synced => Icons.cloud_done_outlined,
        SyncState.failed => Icons.cloud_off_outlined,
        SyncState.conflict => Icons.merge_type,
        _ => Icons.cloud_outlined,
      };

  @override
  Widget build(BuildContext context) {
    final def = statusDefOf('sync_state', state);
    return BvBadge(
      label: def?.labelId ?? humanize(state),
      semantic: def == null ? Semantic.neutral : semanticOf(def.semantic),
      variant: BadgeVariant.soft,
      icon: iconFor(state),
      dense: dense,
    );
  }
}

/// Flag overdue / SLA risk / SLA breach / evidence incomplete.
class FlagBadge extends StatelessWidget {
  const FlagBadge(this.flag, {super.key});
  final String flag;
  @override
  Widget build(BuildContext context) {
    final icon = switch (flag) {
      'overdue' => Icons.alarm,
      'sla_risk' => Icons.timer_outlined,
      'sla_breach' => Icons.timer_off_outlined,
      'evidence_incomplete' => Icons.image_not_supported_outlined,
      _ => Icons.flag_outlined,
    };
    final def = statusDefOf('flags', flag);
    return BvBadge(
      label: def?.labelId ?? humanize(flag),
      semantic: def == null ? Semantic.neutral : semanticOf(def.semantic),
      variant: def == null ? BadgeVariant.soft : variantOf(def.variant),
      icon: icon,
      dense: true,
    );
  }
}
