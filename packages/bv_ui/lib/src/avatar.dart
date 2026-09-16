import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Avatar inisial (tanpa foto profil di P0). Warna dari hash nama agar stabil.
class BvAvatar extends StatelessWidget {
  const BvAvatar({super.key, required this.name, this.size = 28, this.border = true});
  final String name;
  final double size;
  final bool border;

  static const _palette = [
    Color(0xFF0E9187),
    Color(0xFF2563EB),
    Color(0xFF7C3AED),
    Color(0xFFD97706),
    Color(0xFFDB2777),
    Color(0xFF059669),
  ];

  @override
  Widget build(BuildContext context) {
    final color = _palette[name.hashCode.abs() % _palette.length];
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border ? Border.all(color: Colors.white, width: 2) : null,
      ),
      alignment: Alignment.center,
      child: Text(
        BvFormat.initials(name),
        style: TextStyle(color: Colors.white, fontSize: size * 0.38, fontWeight: FontWeight.w700),
      ),
    );
  }
}

/// Deretan avatar bertumpuk + "+N" (mockup kartu kerja).
class AvatarStack extends StatelessWidget {
  const AvatarStack({super.key, required this.names, this.max = 4, this.size = 28});
  final List<String> names;
  final int max;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (names.isEmpty) return const SizedBox.shrink();
    final shown = names.take(max).toList();
    final rest = names.length - shown.length;
    final overlap = size * 0.3;
    return SizedBox(
      height: size,
      width: size + (shown.length - 1 + (rest > 0 ? 1 : 0)) * (size - overlap),
      child: Stack(
        children: [
          for (var i = 0; i < shown.length; i++)
            Positioned(left: i * (size - overlap), child: BvAvatar(name: shown[i], size: size)),
          if (rest > 0)
            Positioned(
              left: shown.length * (size - overlap),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(color: BvTokens.neutral300, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
                alignment: Alignment.center,
                child: Text('+$rest', style: TextStyle(fontSize: size * 0.36, fontWeight: FontWeight.w700, color: Colors.white)),
              ),
            ),
        ],
      ),
    );
  }
}
