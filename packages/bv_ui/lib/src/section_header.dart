import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Judul seksi (mockup: dot hijau + "Pekerjaan Preventive Hari Ini" + tanggal di kanan).
class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, this.trailing, this.dotColor = BvTokens.success600, this.onTrailingTap, this.padding});
  final String title;
  final String? trailing;
  final Color dotColor;
  final VoidCallback? onTrailingTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(20, 20, 20, 12),
        child: Row(
          children: [
            Container(width: 14, height: 14, decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle)),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16))),
            if (trailing != null)
              GestureDetector(
                onTap: onTrailingTap,
                child: Text(trailing!, style: TextStyle(color: onTrailingTap == null ? BvTokens.neutral500 : BvTokens.brand600, fontWeight: FontWeight.w600, fontSize: 13)),
              ),
          ],
        ),
      );
}

/// Baris label–nilai untuk tab Detail.
class DetailRow extends StatelessWidget {
  const DetailRow({super.key, required this.label, required this.child, this.dense = false});
  DetailRow.text({super.key, required this.label, required String value, this.dense = false})
      : child = Text(value.isEmpty ? '—' : value, style: const TextStyle(fontWeight: FontWeight.w600, color: BvTokens.neutral800));
  final String label;
  final Widget child;
  final bool dense;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: dense ? 4 : 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 120, child: Text(label, style: const TextStyle(color: BvTokens.neutral500, fontSize: 13))),
            Expanded(child: DefaultTextStyle.merge(style: const TextStyle(fontSize: 14), child: child)),
          ],
        ),
      );
}

/// Kartu putih seksi konten.
class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.margin = const EdgeInsets.symmetric(horizontal: 16)});
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(BvTokens.radiusXl),
          boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 4))],
        ),
        child: child,
      );
}
