import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';
import 'work_api.dart';

/// `/incidents` — report → assign → start → resolve → close (PRD §14).
class IncidentsApi {
  IncidentsApi(this.client);
  final BvApiClient client;

  Future<Page<Incident>> list(WorkFilter filter) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/incidents', queryParameters: filter.toQuery());
        return Page<Incident>.fromJson(res.data!, (o) => Incident.fromJson(o! as Map<String, dynamic>));
      });

  Future<Incident> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/incidents/$id');
        return Incident.fromJson(res.data!);
      });

  Future<Incident> create(CreateIncidentInput input, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/incidents',
            data: input.toJson(),
            options: Options(headers: {'Idempotency-Key': ?idempotencyKey}));
        return Incident.fromJson(res.data!);
      });

  /// start | resolve | close | reopen | cancel
  Future<Incident> transition(String id, String action, {String reason = '', String? resolution}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/incidents/$id/$action',
            data: {'reason': reason, 'gps_status': GpsStatus.unavailable, 'resolution': ?resolution});
        return Incident.fromJson(res.data!);
      });
}

/// `/findings` — Not OK checklist / temuan patrol → Finding → WO/Task/Incident (PRD §11).
class FindingsApi {
  FindingsApi(this.client);
  final BvApiClient client;

  Future<Page<Finding>> list(WorkFilter filter) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/findings', queryParameters: filter.toQuery());
        return Page<Finding>.fromJson(res.data!, (o) => Finding.fromJson(o! as Map<String, dynamic>));
      });

  Future<Finding> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/findings/$id');
        return Finding.fromJson(res.data!);
      });

  Future<Finding> create(CreateFindingInput input, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/findings',
            data: input.toJson(),
            options: Options(headers: {'Idempotency-Key': ?idempotencyKey}));
        return Finding.fromJson(res.data!);
      });

  /// Buat Work Order dari Finding (supervisor).
  Future<WorkItem> createWorkOrder(String findingId, CreateWorkOrderInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/findings/$findingId/work-orders', data: input.toJson());
        return WorkItem.fromJson(res.data!);
      });
}
