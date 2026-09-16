import 'package:bv_core/bv_core.dart';

import '../client.dart';
import '../errors.dart';
import 'work_api.dart';

/// `/patrol-tasks` (security) — transisi start/complete memakai `/tasks/{id}/…` (patrol = task).
class PatrolApi {
  PatrolApi(this.client);
  final BvApiClient client;

  Future<Page<WorkItem>> list(WorkFilter filter) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/patrol-tasks', queryParameters: filter.toQuery());
        return Page<WorkItem>.fromJson(res.data!, (o) => WorkItem.fromJson(o! as Map<String, dynamic>));
      });

  /// Detail patrol: task + urutan checkpoint (status pending/scanned/missed).
  Future<PatrolBundle> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/patrol-tasks/$id');
        return PatrolBundle.fromJson(res.data!);
      });

  Future<List<CheckpointScan>> scans(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/patrol-tasks/$id/scans');
        return Page<CheckpointScan>.fromJson(res.data!, (o) => CheckpointScan.fromJson(o! as Map<String, dynamic>)).data;
      });

  /// Scan checkpoint (QR/manual) — idempotent via `client_scan_id`.
  Future<CheckpointScan> scan(String id, ScanInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/patrol-tasks/$id/scans', data: input.toJson());
        return CheckpointScan.fromJson(res.data!);
      });

  Future<void> markMissed(String id, String checkpointId, {String? reason}) => guard(
      () => client.dio.post<void>('/patrol-tasks/$id/checkpoints/$checkpointId/missed', data: {'reason': reason}));
}

/// `/cleaning-tasks` (housekeeping) — transisi memakai `/tasks/{id}/…` (cleaning = task).
class CleaningApi {
  CleaningApi(this.client);
  final BvApiClient client;

  Future<Page<WorkItem>> list(WorkFilter filter) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/cleaning-tasks', queryParameters: filter.toQuery());
        return Page<WorkItem>.fromJson(res.data!, (o) => WorkItem.fromJson(o! as Map<String, dynamic>));
      });

  Future<WorkItem> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/cleaning-tasks/$id');
        return WorkItem.fromJson(res.data!);
      });
}
