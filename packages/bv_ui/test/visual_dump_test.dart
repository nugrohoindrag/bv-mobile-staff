// Dump visual komponen tombol/chip di bawah BvTheme ke PNG (tanpa device) untuk audit warna.
// Alat audit manual (di-skip di CI). Jalankan: flutter test test/visual_dump_test.dart --run-skipped → build/visual/buttons.png
import 'dart:io';
import 'dart:ui' as ui;

import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dump tombol & chip', skip: true, (tester) async {
    tester.view.physicalSize = const Size(420, 1100);
    tester.view.devicePixelRatio = 1;
    final key = GlobalKey();
    await tester.pumpWidget(
      MaterialApp(
        theme: BvTheme.light(),
        home: Scaffold(
          body: RepaintBoundary(
            key: key,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('FilledButton'),
                  FilledButton(onPressed: () {}, child: const Text('Selesaikan Order')),
                  const SizedBox(height: 8),
                  const Text('FilledButton danger'),
                  FilledButton(style: FilledButton.styleFrom(backgroundColor: BvTokens.critical600), onPressed: () {}, child: const Text('Batalkan')),
                  const SizedBox(height: 8),
                  const Text('FilledButton.tonal'),
                  FilledButton.tonal(onPressed: () {}, child: const Text('Tonal')),
                  const SizedBox(height: 8),
                  const Text('FilledButton.icon'),
                  FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Laporan Baru')),
                  const SizedBox(height: 8),
                  const Text('OutlinedButton'),
                  OutlinedButton(onPressed: () {}, child: const Text('Komplain')),
                  const SizedBox(height: 8),
                  const Text('TextButton'),
                  TextButton(onPressed: () {}, child: const Text('Batal')),
                  const SizedBox(height: 8),
                  const Text('BvPrimaryButton'),
                  BvPrimaryButton(label: 'Pekerjaan Selesai', onPressed: () {}),
                  const SizedBox(height: 8),
                  const Text('BvSecondaryButton filled / outline'),
                  Row(children: [BvSecondaryButton(label: 'Simpan', filled: true, onPressed: () {}), const SizedBox(width: 8), BvSecondaryButton(label: 'Tunda', onPressed: () {})]),
                  const SizedBox(height: 8),
                  const Text('SaveButton'),
                  Row(children: [SaveButton(onPressed: () {}), const SizedBox(width: 8), const SaveButton(onPressed: null)]),
                  const SizedBox(height: 8),
                  const Text('ChoiceChip'),
                  Row(children: [
                    ChoiceChip(label: const Text('Semua'), selected: true, selectedColor: BvTokens.brand100, onSelected: (_) {}),
                    const SizedBox(width: 8),
                    ChoiceChip(label: const Text('Task'), selected: false, onSelected: (_) {}),
                    const SizedBox(width: 8),
                    ChoiceChip(label: const Text('Selesai'), selected: true, onSelected: (_) {}),
                  ]),
                  const SizedBox(height: 8),
                  const Text('Chip / ActionChip / FAB / Snackbar'),
                  Row(children: [const Chip(label: Text('Chip')), const SizedBox(width: 8), ActionChip(label: const Text('Aksi'), onPressed: () {}), const SizedBox(width: 8), FloatingActionButton.small(onPressed: () {}, child: const Icon(Icons.qr_code))]),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
                  const SizedBox(height: 8),
                  const Text('ConditionToggle'),
                  SizedBox(width: 388, child: ConditionToggle(value: 'ok', onChanged: (_) {})),
                  const SizedBox(height: 8),
                  const Text('SegmentedButton'),
                  SegmentedButton<int>(segments: const [ButtonSegment(value: 0, label: Text('Hari ini')), ButtonSegment(value: 1, label: Text('Minggu'))], selected: const {0}, onSelectionChanged: (_) {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.runAsync(() async {
      final boundary = key.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final image = await boundary.toImage(pixelRatio: 1);
      final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
      final f = File('build/visual/buttons.png')..createSync(recursive: true);
      f.writeAsBytesSync(bytes!.buffer.asUint8List());
    });
  });
}
