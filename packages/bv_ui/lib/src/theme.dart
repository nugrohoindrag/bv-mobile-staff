import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Tema dari design tokens (tokens.json → BvTokens). Brand teal untuk aksi; status memakai
/// warna semantik (PRD §25.1 — brand ≠ status).
class BvTheme {
  BvTheme._();

  static const fontFamily = 'NunitoSans';
  static const fontPackage = 'bv_ui';

  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: BvTokens.brand500,
      primary: BvTokens.brand500,
      onPrimary: Colors.white,
      secondary: BvTokens.brand700,
      surface: BvTokens.surfaceCard,
      onSurface: BvTokens.surfaceForeground,
      error: BvTokens.critical600,
      brightness: Brightness.light,
    );
    final base = ThemeData(useMaterial3: true, colorScheme: scheme, fontFamily: fontFamily, package: fontPackage);
    final text = base.textTheme.apply(bodyColor: BvTokens.neutral900, displayColor: BvTokens.neutral900);
    return base.copyWith(
      scaffoldBackgroundColor: BvTokens.surfaceBackground,
      textTheme: text.copyWith(
        titleLarge: text.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        titleMedium: text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        titleSmall: text.titleSmall?.copyWith(fontWeight: FontWeight.w600),
        labelLarge: text.labelLarge?.copyWith(fontWeight: FontWeight.w600),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: BvTokens.brand600,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
          package: fontPackage,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: BvTokens.brand600,
        ),
        iconTheme: IconThemeData(color: BvTokens.brand600),
      ),
      cardTheme: CardThemeData(
        color: BvTokens.surfaceCard,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BvTokens.radiusLg)),
      ),
      dividerTheme: const DividerThemeData(color: BvTokens.neutral200, thickness: 1, space: 1),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BvTokens.radiusMd),
          borderSide: const BorderSide(color: BvTokens.neutral300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BvTokens.radiusMd),
          borderSide: const BorderSide(color: BvTokens.neutral300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BvTokens.radiusMd),
          borderSide: const BorderSide(color: BvTokens.brand500, width: 1.5),
        ),
        labelStyle: const TextStyle(color: BvTokens.neutral500),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
          textStyle: const TextStyle(fontFamily: fontFamily, package: fontPackage, fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          foregroundColor: BvTokens.brand600,
          side: const BorderSide(color: BvTokens.brand500),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
          textStyle: const TextStyle(fontFamily: fontFamily, package: fontPackage, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: BvTokens.brand600)),
      // Catatan: Flutter memakai `chipTheme.labelStyle ?? default` (mengganti, bukan menggabungkan) sehingga labelStyle
      // tanpa `color` membuat teks chip digambar putih (default engine) dan tidak terbaca. Warna wajib eksplisit
      // dan state-aware (selected → brand700 di atas brand100; normal → neutral700).
      chipTheme: base.chipTheme.copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BvTokens.radiusFull)),
        side: BorderSide.none,
        backgroundColor: Colors.white,
        selectedColor: BvTokens.brand100,
        disabledColor: BvTokens.neutral100,
        checkmarkColor: BvTokens.brand700,
        showCheckmark: false,
        labelStyle: TextStyle(
          fontFamily: fontFamily,
          package: fontPackage,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: WidgetStateColor.resolveWith(
            (s) => s.contains(WidgetState.disabled)
                ? BvTokens.neutral400
                : s.contains(WidgetState.selected)
                    ? BvTokens.brand700
                    : BvTokens.neutral700,
          ),
        ),
        // ChoiceChip terpilih memakai secondaryLabelStyle sebagai labelStyle widget.
        secondaryLabelStyle: const TextStyle(fontFamily: fontFamily, package: fontPackage, fontSize: 12, fontWeight: FontWeight.w700, color: BvTokens.brand700),
        iconTheme: const IconThemeData(size: 16, color: BvTokens.neutral700),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: BvTokens.brand50,
        height: 64,
        labelTextStyle: WidgetStateProperty.resolveWith(
          (s) => TextStyle(
            fontFamily: fontFamily,
            package: fontPackage,
            fontSize: 12,
            fontWeight: s.contains(WidgetState.selected) ? FontWeight.w700 : FontWeight.w500,
            color: s.contains(WidgetState.selected) ? BvTokens.brand600 : BvTokens.neutral500,
          ),
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (s) => IconThemeData(color: s.contains(WidgetState.selected) ? BvTokens.brand600 : BvTokens.neutral400),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        showDragHandle: true,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
      ),
    );
  }
}

/// Bayangan kartu halus (mockup: card putih di atas latar abu).
const bvCardShadow = [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 4))];

/// Gradasi CTA utama (mockup "Pekerjaan Selesai").
const bvBrandGradient = LinearGradient(
  colors: [Color(0xFF5AC4BF), BvTokens.brand600],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
