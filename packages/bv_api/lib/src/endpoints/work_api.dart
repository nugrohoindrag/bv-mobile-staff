import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';

/// Filter list Task/WO (query TAD §6.2: property_id, status CSV, priority CSV, location_id, assignee_id, team_id, q, sort).
class WorkFilter {
  const WorkFilter({
    this.propertyId,
    this.status,
    this.priority,
    this.locationId,
    this.assigneeId,
    this.teamId,
    this.q,
    this.sort,
    this.limit = 50,
    this.cursor,
    this.extra = const {},
  });

  final String? propertyId;
  final List<String>? status;
  final List<String>? priority;
  final String? locationId;
  final String? assigneeId;
  final String? teamId;
  final String? q;
  final String? sort;
  final int limit;
  final String? cursor;
  final Map<String, String> extra;

  Map<String, dynamic> toQuery() => {
        if (propertyId != null) 'property_id': propertyId,
        if (status != null && status!.isNotEmpty) 'status': status!.join(','),
        if (priority != null && priority!.isNotEmpty) 'priority': priority!.join(','),
        if (locationId != null) 'location_id': locationId,
        if (assigneeId != null) 'assignee_id': assigneeId,
        if (teamId != null) 'team_id': teamId,
        if (q != null && q!.isNotEmpty) 'q': q,
        if (sort != null) 'sort': sort,
        'limit': limit,
        if (cursor != null) 'cursor': cursor,
        ...extra,
      };

  WorkFilter copyWith({String? cursor}) => WorkFilter(
        propertyId: propertyId,
        status: status,
        priority: priority,
        locationId: locationId,
        assigneeId: assigneeId,
        teamId: teamId,
        q: q,
        sort: sort,
        limit: limit,
        cursor: cursor ?? this.cursor,
        extra: extra,
      );
}

/// `/tasks`, `/work-orders` + sub-resource bersama (transisi, checklist-runs, comments, activities, links).
class WorkApi {
  WorkApi(this.client);
  final BvApiClient client;

  static String basePath(String objectType) => switch (objectType) {
        ObjectType.workOrder => '/work-orders',
        ObjectType.task => '/tasks',
        ObjectType.incident => '/incidents',
        ObjectType.finding => '/findings',
        ObjectType.serviceRequest => '/service-requests',
        _ => '/$objectType',
      };

  Future<Page<WorkItem>> list(String objectType, WorkFilter filter) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>(basePath(objectType), queryParameters: filter.toQuery());
        return Page<WorkItem>.fromJson(res.data!, (o) => WorkItem.fromJson(o! as Map<String, dynamic>));
      });

  Future<WorkItem> get(String objectType, String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/$id');
        return WorkItem.fromJson(res.data!);
      });

  Future<WorkItem> getByNumber(String objectType, String number) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/by-number/$number');
        return WorkItem.fromJson(res.data!);
      });

  /// Transisi Task Engine: start | hold | resume | complete | close | reopen | cancel (POST /{obj}/{id}/{action}).
  Future<WorkItem> transition(String objectType, String id, String action, TransitionInput input,
          {int? ifMatchVersion, String? idempotencyKey}) =>
      guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>(
          '${basePath(objectType)}/$id/$action',
          data: input.toJson(),
          options: Options(headers: {
            'If-Match': ?(ifMatchVersion == null ? null : '"$ifMatchVersion"'),
            'Idempotency-Key': ?idempotencyKey,
          }),
        );
        return WorkItem.fromJson(res.data!);
      });

  Future<WorkItem> assign(String objectType, String id, AssignInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('${basePath(objectType)}/$id/assign', data: input.toJson());
        return WorkItem.fromJson(res.data!);
      });

  Future<WorkItem> createWorkOrder(CreateWorkOrderInput input, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/work-orders',
            data: input.toJson(),
            options: Options(headers: {'Idempotency-Key': ?idempotencyKey}));
        return WorkItem.fromJson(res.data!);
      });

  Future<WorkItem> createTask(CreateTaskInput input, {String? idempotencyKey}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/tasks',
            data: input.toJson(),
            options: Options(headers: {'Idempotency-Key': ?idempotencyKey}));
        return WorkItem.fromJson(res.data!);
      });

  // ---- checklist ----

  Future<List<ChecklistRun>> checklistRuns(String objectType, String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/$id/checklist-runs');
        return Page<ChecklistRun>.fromJson(res.data!, (o) => ChecklistRun.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<ChecklistRun> checklistRun(String runId) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/checklist-runs/$runId');
        return ChecklistRun.fromJson(res.data!);
      });

  /// Jawab satu item; Not OK + `create_finding` ⇒ server membuat Finding (PRD §11.1).
  Future<ChecklistRun> answer(String runId, String itemId, AnswerInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/checklist-runs/$runId/items/$itemId/answer',
            data: input.toJson());
        return ChecklistRun.fromJson(res.data!);
      });

  // ---- comments / activities / links ----

  Future<List<Comment>> comments(String objectType, String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/$id/comments');
        return Page<Comment>.fromJson(res.data!, (o) => Comment.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<Comment> addComment(String objectType, String id, String body) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('${basePath(objectType)}/$id/comments', data: {'body': body});
        return Comment.fromJson(res.data!);
      });

  Future<List<Activity>> activities(String objectType, String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/$id/activities');
        return Page<Activity>.fromJson(res.data!, (o) => Activity.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<List<ObjectLink>> links(String objectType, String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('${basePath(objectType)}/$id/links');
        return Page<ObjectLink>.fromJson(res.data!, (o) => ObjectLink.fromJson(o! as Map<String, dynamic>)).data;
      });
}
