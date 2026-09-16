// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncBundle _$SyncBundleFromJson(Map<String, dynamic> json) => _SyncBundle(
  serverTime: DateTime.parse(json['server_time'] as String),
  cursor: json['cursor'] as String,
  tasks:
      (json['tasks'] as List<dynamic>?)
          ?.map((e) => WorkItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <WorkItem>[],
  workOrders:
      (json['work_orders'] as List<dynamic>?)
          ?.map((e) => WorkItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <WorkItem>[],
  cleaningTasks:
      (json['cleaning_tasks'] as List<dynamic>?)
          ?.map((e) => WorkItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <WorkItem>[],
  patrolTasks:
      (json['patrol_tasks'] as List<dynamic>?)
          ?.map((e) => PatrolBundle.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PatrolBundle>[],
  checklistRuns:
      (json['checklist_runs'] as List<dynamic>?)
          ?.map((e) => ChecklistRun.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ChecklistRun>[],
  locations:
      (json['locations'] as List<dynamic>?)
          ?.map((e) => LocationLite.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LocationLite>[],
  assets:
      (json['assets'] as List<dynamic>?)
          ?.map((e) => AssetLite.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AssetLite>[],
  master: json['master'] == null
      ? const MasterData()
      : MasterData.fromJson(json['master'] as Map<String, dynamic>),
  removed:
      (json['removed'] as List<dynamic>?)
          ?.map((e) => ObjectRef.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ObjectRef>[],
  me: MeLite.fromJson(json['me'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SyncBundleToJson(_SyncBundle instance) =>
    <String, dynamic>{
      'server_time': instance.serverTime.toIso8601String(),
      'cursor': instance.cursor,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'work_orders': instance.workOrders.map((e) => e.toJson()).toList(),
      'cleaning_tasks': instance.cleaningTasks.map((e) => e.toJson()).toList(),
      'patrol_tasks': instance.patrolTasks.map((e) => e.toJson()).toList(),
      'checklist_runs': instance.checklistRuns.map((e) => e.toJson()).toList(),
      'locations': instance.locations.map((e) => e.toJson()).toList(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'master': instance.master.toJson(),
      'removed': instance.removed.map((e) => e.toJson()).toList(),
      'me': instance.me.toJson(),
    };

_Mutation _$MutationFromJson(Map<String, dynamic> json) => _Mutation(
  clientMutationId: json['client_mutation_id'] as String,
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  action: json['action'] as String,
  seq: (json['seq'] as num).toInt(),
  clientTime: json['client_time'] == null
      ? null
      : DateTime.parse(json['client_time'] as String),
  payload:
      json['payload'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$MutationToJson(_Mutation instance) => <String, dynamic>{
  'client_mutation_id': instance.clientMutationId,
  'object_type': instance.objectType,
  'object_id': instance.objectId,
  'action': instance.action,
  'seq': instance.seq,
  'client_time': ?instance.clientTime?.toIso8601String(),
  'payload': instance.payload,
};

_MutationResult _$MutationResultFromJson(Map<String, dynamic> json) =>
    _MutationResult(
      clientMutationId: json['client_mutation_id'] as String,
      status: json['status'] as String,
      reasonCode: json['reason_code'] as String?,
      detail: json['detail'] as String?,
      serverVersion: (json['server_version'] as num?)?.toInt(),
      response: json['response'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MutationResultToJson(_MutationResult instance) =>
    <String, dynamic>{
      'client_mutation_id': instance.clientMutationId,
      'status': instance.status,
      'reason_code': ?instance.reasonCode,
      'detail': ?instance.detail,
      'server_version': ?instance.serverVersion,
      'response': ?instance.response,
    };

_SyncPushInput _$SyncPushInputFromJson(Map<String, dynamic> json) =>
    _SyncPushInput(
      deviceId: json['device_id'] as String,
      mutations:
          (json['mutations'] as List<dynamic>?)
              ?.map((e) => Mutation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Mutation>[],
    );

Map<String, dynamic> _$SyncPushInputToJson(_SyncPushInput instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'mutations': instance.mutations.map((e) => e.toJson()).toList(),
    };

_SyncPushOutput _$SyncPushOutputFromJson(Map<String, dynamic> json) =>
    _SyncPushOutput(
      serverTime: DateTime.parse(json['server_time'] as String),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => MutationResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MutationResult>[],
    );

Map<String, dynamic> _$SyncPushOutputToJson(_SyncPushOutput instance) =>
    <String, dynamic>{
      'server_time': instance.serverTime.toIso8601String(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_SyncConflict _$SyncConflictFromJson(Map<String, dynamic> json) =>
    _SyncConflict(
      clientMutationId: json['client_mutation_id'] as String,
      objectType: json['object_type'] as String,
      objectId: json['object_id'] as String,
      objectLabel: json['object_label'] as String? ?? '',
      objectTitle: json['object_title'] as String? ?? '',
      objectStatus: json['object_status'] as String? ?? '',
      action: json['action'] as String,
      workerId: json['worker_id'] as String? ?? '',
      workerName: json['worker_name'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
      receivedAt: DateTime.parse(json['received_at'] as String),
      deepLink: json['deep_link'] as String? ?? '',
      reasonCode: json['reason_code'] as String?,
      detail: json['detail'] as String?,
      clientTime: json['client_time'] == null
          ? null
          : DateTime.parse(json['client_time'] as String),
      acknowledgedAt: json['acknowledged_at'] == null
          ? null
          : DateTime.parse(json['acknowledged_at'] as String),
      payload: json['payload'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SyncConflictToJson(_SyncConflict instance) =>
    <String, dynamic>{
      'client_mutation_id': instance.clientMutationId,
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'object_label': instance.objectLabel,
      'object_title': instance.objectTitle,
      'object_status': instance.objectStatus,
      'action': instance.action,
      'worker_id': instance.workerId,
      'worker_name': instance.workerName,
      'device_id': instance.deviceId,
      'received_at': instance.receivedAt.toIso8601String(),
      'deep_link': instance.deepLink,
      'reason_code': ?instance.reasonCode,
      'detail': ?instance.detail,
      'client_time': ?instance.clientTime?.toIso8601String(),
      'acknowledged_at': ?instance.acknowledgedAt?.toIso8601String(),
      'payload': ?instance.payload,
    };
