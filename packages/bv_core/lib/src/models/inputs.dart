import 'package:freezed_annotation/freezed_annotation.dart';

import 'refs.dart';

part 'inputs.freezed.dart';
part 'inputs.g.dart';

/// Body untuk POST /{object}/{id}/{start|hold|resume|complete|close|cancel|reopen} dan payload mutasi sync.
@freezed
abstract class TransitionInput with _$TransitionInput {
  const factory TransitionInput({
    @Default('') String reason,
    @Default('unavailable') String gpsStatus,
    double? gpsLat,
    double? gpsLng,
    String? completionNotes,
    String? resolution,
    String? partsUsage,
    Money? actualCost,
    DateTime? dueAt,
    DateTime? scheduledStartAt,
    DateTime? clientRecordedAt,
  }) = _TransitionInput;
  factory TransitionInput.fromJson(Map<String, dynamic> json) => _$TransitionInputFromJson(json);
}

/// Jawaban item checklist (online: POST /checklist-runs/{id}/items/{itemId}/answer; offline: action checklist_item_result).
@freezed
abstract class AnswerInput with _$AnswerInput {
  const factory AnswerInput({
    String? resultValue,
    double? resultNumber,
    String? resultText,
    String? note,
    String? attachmentId,
    String? clientAttachmentId,
    bool? createFinding,
    String? findingSeverity,
    DateTime? clientRecordedAt,
  }) = _AnswerInput;
  factory AnswerInput.fromJson(Map<String, dynamic> json) => _$AnswerInputFromJson(json);
}

/// scan_method: qr | manual
@freezed
abstract class ScanInput with _$ScanInput {
  const factory ScanInput({
    required String scanMethod,
    @Default('unavailable') String gpsStatus,
    String? checkpointId,
    String? qrCode,
    double? gpsLat,
    double? gpsLng,
    String? note,
    String? clientScanId,
    DateTime? clientRecordedAt,
  }) = _ScanInput;
  factory ScanInput.fromJson(Map<String, dynamic> json) => _$ScanInputFromJson(json);
}

@freezed
abstract class CreateFindingInput with _$CreateFindingInput {
  const factory CreateFindingInput({
    required String findingType,
    required String title,
    required String severity,
    String? description,
    String? category,
    String? propertyId,
    String? locationId,
    String? assetId,
    String? attachmentId,
    String? sourceType,
    String? sourceId,
    DateTime? clientRecordedAt,
  }) = _CreateFindingInput;
  factory CreateFindingInput.fromJson(Map<String, dynamic> json) => _$CreateFindingInputFromJson(json);
}

@freezed
abstract class CreateIncidentInput with _$CreateIncidentInput {
  const factory CreateIncidentInput({
    required String incidentType,
    required String category,
    required String title,
    required String severity,
    required String priority,
    String? description,
    String? propertyId,
    String? locationId,
    DateTime? occurredAt,
    String? assigneeTeamId,
    String? assigneeUserId,
    String? sourceType,
    String? sourceId,
    DateTime? clientRecordedAt,
  }) = _CreateIncidentInput;
  factory CreateIncidentInput.fromJson(Map<String, dynamic> json) => _$CreateIncidentInputFromJson(json);
}

@freezed
abstract class CreateWorkOrderInput with _$CreateWorkOrderInput {
  const factory CreateWorkOrderInput({
    required String title,
    required String workOrderType,
    @Default('medium') String priority,
    String? description,
    String? propertyId,
    String? locationId,
    String? assetId,
    String? assigneeTeamId,
    String? assigneeUserId,
    String? checklistTemplateId,
    DateTime? dueAt,
    DateTime? scheduledStartAt,
    bool? requiresEvidence,
    String? sourceType,
    String? sourceId,
    LinkRef? linkTo,
    String? vendorReference,
    Money? estimatedCost,
  }) = _CreateWorkOrderInput;
  factory CreateWorkOrderInput.fromJson(Map<String, dynamic> json) => _$CreateWorkOrderInputFromJson(json);
}

@freezed
abstract class CreateTaskInput with _$CreateTaskInput {
  const factory CreateTaskInput({
    required String title,
    required String taskType,
    @Default('medium') String priority,
    String? description,
    String? propertyId,
    String? locationId,
    String? assetId,
    String? assigneeTeamId,
    String? assigneeUserId,
    String? checklistTemplateId,
    DateTime? dueAt,
    DateTime? scheduledStartAt,
    @Default(false) bool requiresPhoto,
    String? sourceType,
    String? sourceId,
    LinkRef? linkTo,
  }) = _CreateTaskInput;
  factory CreateTaskInput.fromJson(Map<String, dynamic> json) => _$CreateTaskInputFromJson(json);
}

@freezed
abstract class AssignInput with _$AssignInput {
  const factory AssignInput({String? assigneeTeamId, String? assigneeUserId, String? note}) = _AssignInput;
  factory AssignInput.fromJson(Map<String, dynamic> json) => _$AssignInputFromJson(json);
}

/// platform: android | ios
@freezed
abstract class DeviceInput with _$DeviceInput {
  const factory DeviceInput({
    required String platform,
    required String token,
    required String deviceId,
    required String appVersion,
  }) = _DeviceInput;
  factory DeviceInput.fromJson(Map<String, dynamic> json) => _$DeviceInputFromJson(json);
}
