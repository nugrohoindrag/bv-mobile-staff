import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

Widget wrap(Widget child) => MaterialApp(theme: BvTheme.light(), home: Scaffold(body: Center(child: child)));

/// Font test (Ahem) ~2x lebih lebar dari Nunito, jadi lebar kartu/pill dilonggarkan agar Row tidak overflow di test.
Future<void> phoneSurface(WidgetTester tester) async {
  tester.view.physicalSize = const Size(640, 915);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
}

void main() {
  testWidgets('StatusBadge memakai label & warna semantik dari status-map (bukan brand)', (tester) async {
    await tester.pumpWidget(wrap(const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      StatusBadge('task', 'in_progress'),
      StatusBadge('work_order', 'closed'),
      StatusBadge('checkpoint', 'missed'),
      SyncBadge('pending'),
      FlagBadge('overdue'),
    ])));
    expect(find.text('Sedang Dikerjakan'), findsOneWidget);
    expect(find.text('Ditutup'), findsOneWidget);
    expect(find.text('Terlewat'), findsOneWidget);
    expect(find.text('Pending Sync'), findsOneWidget);
    expect(find.text('Overdue'), findsOneWidget);
    // solid info → latar info600, teks putih
    final inProgress = tester.widget<Container>(find.ancestor(of: find.text('Sedang Dikerjakan'), matching: find.byType(Container)).first);
    expect((inProgress.decoration! as BoxDecoration).color, BvTokens.info600);
    final missed = tester.widget<Container>(find.ancestor(of: find.text('Terlewat'), matching: find.byType(Container)).first);
    expect((missed.decoration! as BoxDecoration).color, BvTokens.critical600);
  });

  testWidgets('WorkItemCard menampilkan judul, lokasi, nomor, assignee, status & sync badge', (tester) async {
    await initializeDateFormatting('id');
    await phoneSurface(tester);
    final item = WorkItem(
      id: 'w1',
      objectType: 'work_order',
      number: 'WO-2026-000123',
      type: 'corrective',
      title: 'Jockey Pump bocor',
      status: 'assigned',
      priority: 'high',
      location: const LocationRef(pathText: 'Tower Pinus / Lantai UG / R. Pompa'),
      assignee: const AssigneeRef(userId: 'u1', userName: 'Budi Santoso'),
      dueAt: DateTime(2026, 9, 15, 23, 59),
      createdAt: DateTime(2026, 9, 15),
      updatedAt: DateTime(2026, 9, 15),
    );
    var tapped = false;
    await tester.pumpWidget(wrap(SizedBox(width: 600, child: WorkItemCard(item: item, syncState: SyncState.pending, showNumber: true, onTap: () => tapped = true))));
    expect(find.text('JOCKEY PUMP BOCOR'), findsOneWidget, reason: 'judul kartu ditampilkan kapital (Figma)');
    expect(find.text('TOWER PINUS / LANTAI UG / R. POMPA'), findsOneWidget);
    expect(find.text('WO-2026-000123'), findsOneWidget);
    expect(find.text('BS'), findsOneWidget, reason: 'inisial assignee');
    expect(find.text('Ditugaskan'), findsOneWidget);
    expect(find.text('Tinggi'), findsOneWidget, reason: 'priority high ditampilkan');
    expect(find.text('Pending Sync'), findsOneWidget);
    await tester.tap(find.text('JOCKEY PUMP BOCOR'));
    expect(tapped, isTrue);
  });

  testWidgets('ConditionToggle memilih ok / not_ok', (tester) async {
    await phoneSurface(tester);
    String? value;
    await tester.pumpWidget(wrap(StatefulBuilder(
      builder: (context, setState) => SizedBox(width: 600, child: ConditionToggle(value: value, onChanged: (v) => setState(() => value = v))),
    )));
    await tester.tap(find.text('Kondisi Buruk'));
    await tester.pumpAndSettle();
    expect(value, 'not_ok');
    await tester.tap(find.text('Kondisi Baik'));
    await tester.pumpAndSettle();
    expect(value, 'ok');
  });

  testWidgets('SyncBanner offline / pending / failed', (tester) async {
    await tester.pumpWidget(wrap(const Column(children: [
      SyncBanner(online: false, pending: 3),
      SyncBanner(online: true, failed: 1),
      SyncBanner(online: true, pending: 0),
    ])));
    expect(find.textContaining('Offline · 3 perubahan'), findsOneWidget);
    expect(find.textContaining('1 perubahan gagal'), findsOneWidget);
  });
}
