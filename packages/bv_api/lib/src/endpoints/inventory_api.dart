import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';

/// Inventory / Spare Parts (PRD P1 v1.3 §25): item master, Parts Usage against Work Order.
class InventoryApi {
  InventoryApi(this.client);
  final BvApiClient client;

  Future<Page<InventoryItem>> items({String? q, String? propertyId, String? category, bool lowStock = false, int limit = 50, String? cursor}) =>
      guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/inventory/items', queryParameters: {
          if (q != null && q.isNotEmpty) 'q': q,
          'property_id': ?propertyId,
          'category': ?category,
          if (lowStock) 'low_stock': 'true',
          'limit': limit,
          'cursor': ?cursor,
        });
        return Page<InventoryItem>.fromJson(res.data!, (o) => InventoryItem.fromJson(o! as Map<String, dynamic>));
      });

  Future<List<PartUsage>> workOrderParts(String workOrderId) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/work-orders/$workOrderId/parts');
        return Page<PartUsage>.fromJson(res.data!, (o) => PartUsage.fromJson(o! as Map<String, dynamic>)).data;
      });

  /// Idempoten lewat `client_part_id`; stok berkurang atomik di server (409 `INSUFFICIENT_STOCK` bila kurang).
  Future<PartUsage> addPart(String workOrderId, PartUsageInput input, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/work-orders/$workOrderId/parts',
            data: input.toJson(), options: Options(headers: {'Idempotency-Key': ?idempotencyKey}));
        return PartUsage.fromJson(res.data!);
      });

  Future<void> removePart(String workOrderId, String partId) => guard(() async {
        await client.dio.delete<void>('/work-orders/$workOrderId/parts/$partId');
      });
}

/// Profile property (`GET /properties/{id}/capabilities`) — capability & terminologi untuk presentasi.
class ProfileApi {
  ProfileApi(this.client);
  final BvApiClient client;

  Future<PropertyContext> propertyContext(String propertyId) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/properties/$propertyId/capabilities');
        return PropertyContext.fromJson(res.data!);
      });
}
