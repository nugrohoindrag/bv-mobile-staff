import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';

/// `/sync/*` — contracts/sync-api.md.
class SyncApi {
  SyncApi(this.client);
  final BvApiClient client;

  /// Work bundle hari ini (+ open/overdue). `since` = cursor terakhir untuk delta + `removed`.
  Future<SyncBundle> workBundle({String? since}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/sync/work-bundle', queryParameters: {
          'device_id': client.config.deviceId,
          if (since != null && since.isNotEmpty) 'since': since,
        });
        return SyncBundle.fromJson(res.data!);
      });

  /// Push batch mutasi (≤ 200, berurutan per object). `Idempotency-Key` = id batch.
  Future<SyncPushOutput> pushMutations(List<Mutation> mutations, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>(
          '/sync/mutations',
          data: SyncPushInput(deviceId: client.config.deviceId, mutations: mutations).toJson(),
          options: Options(headers: {'Idempotency-Key': ?idempotencyKey}),
        );
        return SyncPushOutput.fromJson(res.data!);
      });

  Future<List<SyncConflict>> conflicts({String? propertyId, bool includeAcknowledged = false}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/sync/conflicts', queryParameters: {
          'property_id': ?propertyId,
          'include_acknowledged': includeAcknowledged.toString(),
        });
        return Page<SyncConflict>.fromJson(res.data!, (o) => SyncConflict.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<void> acknowledgeConflict(String clientMutationId) =>
      guard(() => client.dio.post<void>('/sync/conflicts/$clientMutationId/acknowledge'));
}
