import 'dart:io';
import 'dart:typed_data';

import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

/// Dialog konfirmasi (Figma "Konfirmasi Memulai Pengerjaan"): judul, garis, teks abu, tombol gradien + Batal abu.
Future<bool> showBvConfirmDialog(
  BuildContext context, {
  required String title,
  required String message,
  String confirm = 'Mulai',
  String cancel = 'Batal',
  bool danger = false,
}) async {
  final r = await showDialog<bool>(
    context: context,
    builder: (ctx) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 14),
            child: Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: BvTokens.neutral900)),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 22),
            child: Column(
              children: [
                Text(message, style: const TextStyle(fontSize: 15, color: BvTokens.neutral500, height: 1.4)),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: danger ? const LinearGradient(colors: [Color(0xFFEF5350), BvTokens.critical600]) : bvBrandGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => Navigator.pop(ctx, true),
                            child: Center(child: Text(confirm, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16))),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(color: BvTokens.neutral300, borderRadius: BorderRadius.circular(12)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => Navigator.pop(ctx, false),
                            child: Center(child: Text(cancel, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  return r ?? false;
}

/// Judul seksi tengah berwarna brand di atas garis (Figma "Detail Pengerjaan", "Grup Member").
class CenteredSectionTitle extends StatelessWidget {
  const CenteredSectionTitle(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        margin: const EdgeInsets.only(top: 12),
        child: Text(title, textAlign: TextAlign.center, style: const TextStyle(color: BvTokens.brand500, fontSize: 18, fontWeight: FontWeight.w700)),
      );
}

/// Baris "ikon  Label,  **Nilai**" (Figma Detail Pengerjaan).
class IconInfoRow extends StatelessWidget {
  const IconInfoRow({super.key, required this.icon, required this.label, required this.value});
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 22, color: BvTokens.neutral800),
            const SizedBox(width: 14),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 15.5, color: BvTokens.neutral800, fontFamily: BvTheme.fontFamily, package: BvTheme.fontPackage),
                  children: [
                    TextSpan(text: '$label,  '),
                    TextSpan(text: value.isEmpty ? '—' : value, style: const TextStyle(fontWeight: FontWeight.w700, color: BvTokens.neutral900)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

/// Strip kalender mingguan (Figma "Daftar Jadwal"): SUN 01 … SAT 07, hari terpilih bergaris bawah brand.
class WeekStrip extends StatelessWidget {
  const WeekStrip({super.key, required this.selected, required this.onSelected, this.onMonthTap, this.dots = const {}});
  final DateTime selected;
  final ValueChanged<DateTime> onSelected;
  final VoidCallback? onMonthTap;

  /// Tanggal (y-m-d) yang punya pekerjaan → titik kecil di bawah angka.
  final Set<String> dots;

  static String dayKey(DateTime d) => '${d.year}-${d.month}-${d.day}';

  @override
  Widget build(BuildContext context) {
    final start = selected.subtract(Duration(days: selected.weekday % 7)); // Minggu
    final days = List.generate(7, (i) => DateTime(start.year, start.month, start.day + i));
    final today = DateTime.now();
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        children: [
          InkWell(
            onTap: onMonthTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_month_outlined, color: BvTokens.brand500, size: 20),
                  const SizedBox(width: 8),
                  Text(BvFormat.monthYear(selected), style: const TextStyle(color: BvTokens.brand500, fontSize: 17, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (d) {
              if (d.primaryVelocity == null) return;
              onSelected(selected.add(Duration(days: d.primaryVelocity! < 0 ? 7 : -7)));
            },
            child: Row(
              children: [
                for (final d in days)
                  Expanded(
                    child: InkWell(
                      onTap: () => onSelected(d),
                      child: _Day(date: d, selected: BvFormat.isSameDay(d, selected), isToday: BvFormat.isSameDay(d, today), dot: dots.contains(dayKey(d))),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Day extends StatelessWidget {
  const _Day({required this.date, required this.selected, required this.isToday, required this.dot});
  final DateTime date;
  final bool selected;
  final bool isToday;
  final bool dot;

  @override
  Widget build(BuildContext context) {
    final color = selected ? BvTokens.brand500 : BvTokens.neutral400;
    return Column(
      children: [
        Text(BvFormat.dayShort(date), style: TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.w600, letterSpacing: 0.5)),
        const SizedBox(height: 6),
        Text(date.day.toString().padLeft(2, '0'), style: TextStyle(color: selected ? BvTokens.brand500 : BvTokens.neutral400, fontSize: 24, fontWeight: FontWeight.w700, height: 1)),
        const SizedBox(height: 6),
        Container(
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(color: selected ? BvTokens.brand500 : (dot ? BvTokens.neutral200 : Colors.transparent), borderRadius: BorderRadius.circular(2)),
        ),
        if (isToday && !selected) const Padding(padding: EdgeInsets.only(top: 3), child: Icon(Icons.circle, size: 5, color: BvTokens.brand500)) else const SizedBox(height: 8),
      ],
    );
  }
}

/// Carousel foto dengan titik indikator (Figma Detail Permasalahan / Activity Report).
class PhotoCarousel extends StatefulWidget {
  const PhotoCarousel({super.key, required this.sources, this.height = 220, this.radius = 16});

  /// Setiap sumber: path lokal, URL, atau bytes.
  final List<PhotoSource> sources;
  final double height;
  final double radius;

  @override
  State<PhotoCarousel> createState() => _PhotoCarouselState();
}

class PhotoSource {
  const PhotoSource({this.localPath, this.url, this.bytes});
  final String? localPath;
  final String? url;
  final Uint8List? bytes;

  Widget image({BoxFit fit = BoxFit.cover}) {
    if (bytes != null) return Image.memory(bytes!, fit: fit);
    if (localPath != null) return Image.file(File(localPath!), fit: fit);
    if (url != null) {
      return Image.network(url!, fit: fit, errorBuilder: (_, _, _) => const ColoredBox(color: BvTokens.neutral100, child: Icon(Icons.broken_image_outlined, color: BvTokens.neutral400)));
    }
    return const ColoredBox(color: BvTokens.neutral100);
  }
}

class _PhotoCarouselState extends State<PhotoCarousel> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.sources.isEmpty) return const SizedBox.shrink();
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.radius),
      child: SizedBox(
        height: widget.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView(
              onPageChanged: (i) => setState(() => _page = i),
              children: [for (final s in widget.sources) s.image()],
            ),
            if (widget.sources.length > 1)
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < widget.sources.length; i++)
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: i == _page ? Colors.white : const Color(0x88FFFFFF)),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Kotak kamera bergaris (Figma: tombol tambah foto di checklist / activity report).
class CameraBox extends StatelessWidget {
  const CameraBox({super.key, required this.onTap, this.active = true, this.size = 64});
  final VoidCallback? onTap;
  final bool active;
  final double size;

  @override
  Widget build(BuildContext context) {
    final color = onTap == null ? BvTokens.neutral300 : (active ? BvTokens.brand500 : BvTokens.neutral300);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: color, width: 1.5)),
        child: Icon(Icons.add_a_photo_outlined, color: color, size: 26),
      ),
    );
  }
}

/// Tombol "Simpan" pill abu (nonaktif) / gradien (aktif) — Figma checklist.
class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.onPressed, this.label = 'Simpan', this.loading = false, this.width = 130, this.height = 52});
  final VoidCallback? onPressed;
  final String label;
  final bool loading;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null && !loading;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: enabled ? bvBrandGradient : null,
        color: enabled ? null : BvTokens.neutral300,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: enabled ? onPressed : null,
          child: Center(
            child: loading
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                : Text(label, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
