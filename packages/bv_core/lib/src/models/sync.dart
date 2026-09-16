import 'package:freezed_annotation/freezed_annotation.dart';

import 'checklist.dart';
import 'lite.dart';
import 'patrol.dart';
import 'refs.dart';
import 'work_item.dart';

part 'sync.freezed.dart';
part 'sync.g.dart';

@freezed
abstract class SyncBundle with _$SyncBundle {
  const factory SyncBundle({
    required DateTime serverTime,
    required String cursor,
    @Default(<WorkItem>[]) List<WorkItem> tasks,
    @Default(<WorkItem>[]) List<WorkItem> workOrders,
    @Default(<WorkItem>[]) List<WorkItem> cleaningTasks,
    @Default(<PatrolBundle>[]) List<PatrolBundle> patrolTasks,
    @Default(<ChecklistRun>[]) List<ChecklistRun> checklistRuns,
    @Default(<LocationLite>[]) List<LocationLite> locations,
    @Default(<AssetLite>[]) List<AssetLite> assets,
    @Default(MasterData()) MasterData master,
    @Default(<ObjectRef>[]) List<ObjectRef> removed,
    required MeLite me,
  }) = _SyncBundle;
  factory SyncBundle.fromJson(Map<String, dynamic> json) => _$SyncBundleFromJson(json);
}

@freezed
abstract class Mutation with _$Mutation {
  const factory Mutation({
    required String clientMutationId,
    required String objectType,
    required String objectId,
    required String action,
    required int seq,
    DateTime? clientTime,
    @Default(<String, dynamic>{}) Map<String, dynamic> payload,
  }) = _Mutation;
  factory Mutation.fromJson(Map<String, dynamic> json) => _$MutationFromJson(json);
}

/// status: applied | duplicate | conflict | rejected
@freezed
abstract class MutationResult with _$MutationResult {
  const MutationResult._();
  const factory MutationResult({
    required String clientMutationId,
    required String status,
    String? reasonCode,
    String? detail,
    int? serverVersion,
    Map<String, dynamic>? response,
  }) = _MutationResult;
  factory MutationResult.fromJson(Map<String, dynamic> json) => _$MutationResultFromJson(json);

  bool get isApplied => status == 'applied' || status == 'duplicate';
  bool get isConflict => status == 'conflict';
  bool get isRejected => status == 'rejected';
  bool get isSeqGap => isRejected && reasonCode == 'SEQ_GAP';
}

@freezed
abstract class SyncPushInput with _$SyncPushInput {
  const factory SyncPushInput({required String deviceId, @Default(<Mutation>[]) List<Mutation> mutations}) =
      _SyncPushInput;
  factory SyncPushInput.fromJson(Map<String, dynamic> json) => _$SyncPushInputFromJson(json);
}

@freezed
abstract class SyncPushOutput with _$SyncPushOutput {
  const factory SyncPushOutput({
    required DateTime serverTime,
    @Default(<MutationResult>[]) List<MutationResult> results,
  }) = _SyncPushOutput;
  factory SyncPushOutput.fromJson(Map<String, dynamic> json) => _$SyncPushOutputFromJson(json);
}

@freezed
abstract class SyncConflict with _$SyncConflict {
  const factory SyncConflict({
    required String clientMutationId,
    required String objectType,
    required String objectId,
    @Default('') String objectLabel,
    @Default('') String objectTitle,
    @Default('') String objectStatus,
    required String action,
    @Default('') String workerId,
    @Default('') String workerName,
    @Default('') String deviceId,
    required DateTime receivedAt,
    @Default('') String deepLink,
    String? reasonCode,
    String? detail,
    DateTime? clientTime,
    DateTime? acknowledgedAt,
    Map<String, dynamic>? payload,
  }) = _SyncConflict;
  factory SyncConflict.fromJson(Map<String, dynamic> json) => _$SyncConflictFromJson(json);
}
