import 'package:bv_core/bv_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  group('PermissionSet', () {
    test('cocok literal, module.*, module.*.view, dan *', () {
      const p = PermissionSet(['operations.tasks.start', 'security.*', 'engineering.*.view', 'property.*.view']);
      expect(p.can('operations.tasks.start'), isTrue);
      expect(p.can('operations.tasks.close'), isFalse);
      expect(p.can('security.patrol.start'), isTrue);
      expect(p.can('security.checkpoints.delete'), isTrue);
      expect(p.can('engineering.assets.view'), isTrue);
      expect(p.can('engineering.assets.update'), isFalse);
      expect(const PermissionSet(['*']).can('apa.saja.disini'), isTrue);
      expect(PermissionSet.empty.can('operations.tasks.view'), isFalse);
    });
  });

  group('status map', () {
    test('label Indonesia & semantic dari contracts/status-map.yaml', () {
      expect(statusLabel('task', 'in_progress'), 'Sedang Dikerjakan');
      expect(statusLabel('work_order', 'closed', locale: 'en'), 'Closed');
      expect(statusDefOf('cleaning_task', 'on_hold')?.semantic, 'warning');
      expect(statusDefOf('checkpoint', 'missed')?.semantic, 'critical');
      expect(semanticOf(statusDefOf('sync_state', 'pending')!.semantic), Semantic.warning);
      expect(statusLabel('task', 'status_asing'), 'Status asing');
    });
  });

  group('role shell', () {
    test('resolusi role utama', () {
      expect(resolveShellRole(['technician']), ShellRole.technician);
      expect(resolveShellRole(['security_officer']), ShellRole.securityOfficer);
      expect(resolveShellRole(['housekeeping_staff']), ShellRole.housekeepingStaff);
      expect(resolveShellRole(['technician', 'engineering_supervisor']), ShellRole.supervisor);
      expect(resolveDomain(['security_supervisor']), Domain.security);
      expect(resolveDomain(['technician']), Domain.engineering);
    });
  });

  group('models', () {
    test('WorkItem.fromJson snake_case + default list', () {
      final w = WorkItem.fromJson({
        'id': '01a0',
        'object_type': 'work_order',
        'number': 'WO-2026-000123',
        'type': 'corrective',
        'title': 'Pompa bocor',
        'status': 'assigned',
        'priority': 'high',
        'property_id': 'p1',
        'location': {'id': 'l1', 'name': 'R. Pompa', 'path_text': 'Tower A / B1 / R. Pompa'},
        'asset': {'id': 'a1', 'asset_code': 'AST-PMP-0001', 'name': 'Jockey Pump'},
        'assignee': {'user_id': 'u1', 'user_name': 'Budi Santoso'},
        'requires_evidence': true,
        'evidence_incomplete': true,
        'is_overdue': false,
        'attachment_count': 0,
        'comment_count': 1,
        'due_at': '2026-09-15T10:00:00Z',
        'allowed_actions': ['start'],
        'flags': null,
        'created_at': '2026-09-15T01:00:00Z',
        'updated_at': '2026-09-15T01:00:00Z',
        'version': 3,
      });
      expect(w.isWorkOrder, isTrue);
      expect(w.location.pathText, 'Tower A / B1 / R. Pompa');
      expect(w.asset.assetCode, 'AST-PMP-0001');
      expect(w.can('start'), isTrue);
      expect(w.flags, isEmpty);
      expect(w.dueAt!.isUtc, isTrue);
      final back = w.toJson();
      expect(back['object_type'], 'work_order');
      expect(back.containsKey('description'), isFalse, reason: 'include_if_null: false');
    });

    test('MutationResult helper', () {
      expect(const MutationResult(clientMutationId: 'x', status: 'duplicate').isApplied, isTrue);
      expect(const MutationResult(clientMutationId: 'x', status: 'rejected', reasonCode: 'SEQ_GAP').isSeqGap, isTrue);
    });

    test('SyncBundle minimal', () {
      final b = SyncBundle.fromJson({
        'server_time': '2026-09-15T01:00:00Z',
        'cursor': '2026-09-15T01:00:00Z',
        'master': <String, dynamic>{},
        'me': {'user_id': 'u1', 'full_name': 'Budi'},
      });
      expect(b.tasks, isEmpty);
      expect(b.master.priorities, contains('critical'));
    });

    test('Page<T> generik', () {
      final p = Page<WorkItem>.fromJson(
        {'data': <Object?>[], 'next_cursor': 'abc'},
        (o) => WorkItem.fromJson(o! as Map<String, dynamic>),
      );
      expect(p.nextCursor, 'abc');
    });

    test('P1: WorkItem vendor, PartUsage, InventoryItem, PropertyContext (snake_case backend)', () {
      final wo = WorkItem.fromJson({
        'id': 'w1', 'object_type': 'work_order', 'number': 'WO-2026-000001', 'title': 'AC', 'status': 'in_progress',
        'vendor_id': 'v1', 'vendor_name': 'PT Sejuk', 'vendor_notes': 'garansi 30 hari', 'parts_usage': '2 filter',
        'actual_cost': {'currency_code': 'IDR', 'amount': 300000},
        'created_at': '2026-09-16T01:00:00Z', 'updated_at': '2026-09-16T01:00:00Z',
      });
      expect(wo.vendorName, 'PT Sejuk');
      expect(wo.actualCost?.amount, 300000);
      final part = PartUsage.fromJson({
        'id': 'p1', 'work_order_id': 'w1', 'item_id': 'i1', 'item_code': 'ITM-000001', 'item_name': 'Filter AHU', 'unit': 'pcs',
        'stock_location_id': 'l1', 'stock_location_name': 'Gudang Utama', 'quantity': 2, 'unit_cost': 150000, 'total_cost': 300000,
        'note': null, 'recorded_by_name': 'Budi', 'recorded_at': '2026-09-16T02:00:00Z',
      });
      expect(part.quantity, 2);
      expect(part.stockLocationName, 'Gudang Utama');
      expect(PartUsageInput(itemId: 'i1', quantity: 1.5, clientPartId: 'c1').toJson(), {'item_id': 'i1', 'quantity': 1.5, 'client_part_id': 'c1'});
      final item = InventoryItem.fromJson({'id': 'i1', 'item_code': 'ITM-000001', 'name': 'Filter AHU', 'category': 'spare_part', 'unit': 'pcs', 'min_stock': 5, 'unit_cost': 150000, 'is_active': true, 'total_quantity': 12, 'low_stock': false, 'levels': [{'stock_location_id': 'l1', 'stock_location_name': 'Gudang Utama', 'property_id': 'pr', 'quantity': 12}], 'version': 1});
      expect(item.levels.single.quantity, 12);
      final ctx = PropertyContext.fromJson({'property_id': 'pr', 'property_name': 'Grand City Hotel', 'profile': 'hotel', 'status': 'active', 'capabilities': ['hotel_booking', 'housekeeping'], 'terminology': {'customer': {'id': 'Tamu', 'en': 'Guest'}}});
      expect(ctx.has('hotel_booking'), isTrue);
      expect(ctx.term('customer'), 'Tamu');
      expect(ctx.term('customer', en: true), 'Guest');
      expect(ctx.term('request'), 'Tenant Service Request');
      expect(ctx.profileLabel, 'Hotel');
    });
  });

  group('format', () {
    setUpAll(() => initializeDateFormatting('id'));
    test('tanggal Indonesia & inisial', () {
      final d = DateTime(2026, 9, 14, 9, 30);
      expect(BvFormat.dateTime(d), '14 Sep 2026, 09:30');
      expect(BvFormat.initials('Budi Santoso'), 'BS');
      expect(BvFormat.money(1250000), 'Rp 1.250.000');
      expect(BvFormat.dueIn(d.add(const Duration(hours: 2)), now: d), '2 jam lagi');
      expect(BvFormat.dueIn(d.subtract(const Duration(minutes: 30)), now: d), 'Overdue 30 mnt');
    });
  });

  test('parseQrCode', () {
    expect(parseQrCode('https://bv.link/q/ABCDEF123456'), 'ABCDEF123456');
    expect(parseQrCode('ABCDEF123456'), 'ABCDEF123456');
    expect(parseQrCode('https://example.com/x'), isNull);
  });
}
