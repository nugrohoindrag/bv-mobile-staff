import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Palet per semantic (DS §2.1): 50/100 latar soft, 600 solid, 700 teks.
class SemanticPalette {
  const SemanticPalette({required this.soft, required this.softBorder, required this.solid, required this.text});
  final Color soft;
  final Color softBorder;
  final Color solid;
  final Color text;

  static SemanticPalette of(Semantic s) => switch (s) {
        Semantic.success => const SemanticPalette(
            soft: BvTokens.success50, softBorder: BvTokens.success100, solid: BvTokens.success600, text: BvTokens.success700),
        Semantic.warning => const SemanticPalette(
            soft: BvTokens.warning50, softBorder: BvTokens.warning100, solid: BvTokens.warning600, text: BvTokens.warning700),
        Semantic.critical => const SemanticPalette(
            soft: BvTokens.critical50, softBorder: BvTokens.critical100, solid: BvTokens.critical600, text: BvTokens.critical700),
        Semantic.info => const SemanticPalette(
            soft: BvTokens.info50, softBorder: BvTokens.info100, solid: BvTokens.info600, text: BvTokens.info700),
        Semantic.neutral => const SemanticPalette(
            soft: BvTokens.neutral100, softBorder: BvTokens.neutral200, solid: BvTokens.neutral500, text: BvTokens.neutral700),
      };
}

/// Warna strip kiri kartu kerja (mockup: merah = baru, hijau = berjalan) diturunkan dari semantic status.
Color statusStripColor(String objectType, String status) {
  final def = statusDefOf(objectType, status);
  if (def == null) return BvTokens.neutral300;
  return switch (status) {
    'new' || 'assigned' || 'scheduled' => BvTokens.critical600, // belum dikerjakan → perlu perhatian
    'in_progress' => BvTokens.success600,
    _ => SemanticPalette.of(semanticOf(def.semantic)).solid,
  };
}
