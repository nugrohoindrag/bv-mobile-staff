import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

/// Item menu cepat (mockup grid 4 kolom: Preventive / Corrective / Scan / More).
class QuickMenuItem {
  const QuickMenuItem({required this.label, required this.icon, required this.color, this.onTap, this.badge});
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;
  final int? badge;
}

class QuickMenuGrid extends StatelessWidget {
  const QuickMenuGrid({super.key, required this.items});
  final List<QuickMenuItem> items;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          for (var i = 0; i < items.length; i++) ...[
            if (i > 0) const SizedBox(width: 12),
            Expanded(child: items[i].label.isEmpty ? const SizedBox.shrink() : _MenuCard(item: items[i])),
          ],
        ],
      );
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({required this.item});
  final QuickMenuItem item;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusLg), boxShadow: bvCardShadow),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
          borderRadius: BorderRadius.circular(BvTokens.radiusLg),
          onTap: item.onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [item.color.withValues(alpha: 0.85), item.color], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      ),
                      child: Icon(item.icon, color: Colors.white, size: 24),
                    ),
                    if (item.badge != null && item.badge! > 0)
                      Positioned(
                        right: -6,
                        top: -4,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: BvTokens.critical600, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white, width: 2)),
                          child: Text('${item.badge}', style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800)),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(item.label, textAlign: TextAlign.center, maxLines: 2, style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600, color: BvTokens.neutral800)),
              ],
            ),
          ),
        ),
        ),
      );
}

/// Counter ringkasan hari ini (TodayCounter PRD §25.2) untuk panel melayang.
class TodayCounter extends StatelessWidget {
  const TodayCounter({super.key, required this.label, required this.value, this.color = BvTokens.brand600, this.onTap});
  final String label;
  final int value;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(BvTokens.radiusMd),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          child: Column(
            children: [
              Text('$value', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: color, height: 1.1)),
              const SizedBox(height: 2),
              Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 11.5, color: BvTokens.neutral500, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      );
}
