import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

/// CTA utama besar bergradasi (mockup "Pekerjaan Selesai"); `loading` menampilkan spinner.
class BvPrimaryButton extends StatelessWidget {
  const BvPrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.loading = false,
    this.height = 56,
    this.danger = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool loading;
  final double height;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null && !loading;
    return Opacity(
      opacity: enabled ? 1 : 0.55,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: danger ? const LinearGradient(colors: [Color(0xFFEF5350), BvTokens.critical600]) : bvBrandGradient,
          borderRadius: BorderRadius.circular(BvTokens.radiusLg),
          boxShadow: enabled ? const [BoxShadow(color: Color(0x3314A69E), blurRadius: 12, offset: Offset(0, 6))] : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(BvTokens.radiusLg),
            onTap: enabled ? onPressed : null,
            child: Center(
              child: loading
                  ? const SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white))
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (icon != null) ...[Icon(icon, color: Colors.white), const SizedBox(width: 8)],
                        Text(label, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700)),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Tombol sekunder (Simpan per item, Tunda, dsb).
class BvSecondaryButton extends StatelessWidget {
  const BvSecondaryButton({super.key, required this.label, this.onPressed, this.icon, this.filled = false});
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[Icon(icon, size: 18), const SizedBox(width: 6)],
        Text(label),
      ],
    );
    return filled
        ? FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(backgroundColor: BvTokens.brand500, disabledBackgroundColor: BvTokens.neutral300, minimumSize: const Size(120, 44)),
            child: child,
          )
        : OutlinedButton(onPressed: onPressed, style: OutlinedButton.styleFrom(minimumSize: const Size(120, 44)), child: child);
  }
}

/// Bar aksi bawah (sticky) untuk detail: menampung 1–2 tombol.
class BottomActionBar extends StatelessWidget {
  const BottomActionBar({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 12 + MediaQuery.paddingOf(context).bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, -4))],
        ),
        child: Row(
          children: [
            for (var i = 0; i < children.length; i++) ...[
              if (i > 0) const SizedBox(width: 12),
              Expanded(child: children[i]),
            ],
          ],
        ),
      );
}
