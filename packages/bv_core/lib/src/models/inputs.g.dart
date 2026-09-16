// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransitionInput _$TransitionInputFromJson(Map<String, dynamic> json) =>
    _TransitionInput(
      reason: json['reason'] as String? ?? '',
      gpsStatus: json['gps_status'] as String? ?? 'unavailable',
      gpsLat: (json['gps_lat'] as num?)?.toDouble(),
      gpsLng: (json['gps_lng'] as num?)?.toDouble(),
      completionNotes: json['completion_notes'] as String?,
      resolution: json['resolution'] as String?,
      partsUsage: json['parts_usage'] as String?,
      actualCost: json['actual_cost'] == null
          ? null
          : Money.fromJson(json['actual_cost'] as Map<String, dynamic>),
      dueAt: json['due_at'] == null
          ? null
          : DateTime.parse(json['due_at'] as String),
      scheduledStartAt: json['scheduled_start_at'] == null
          ? null
          : DateTime.parse(json['scheduled_start_at'] as String),
      clientRecordedAt: json['client_recorded_at'] == null
          ? null
          : DateTime.parse(json['client_recorded_at'] as String),
    );

Map<String, dynamic> _$TransitionInputToJson(_TransitionInput instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'gps_status': instance.gpsStatus,
      'gps_lat': ?instance.gpsLat,
      'gps_lng': ?instance.gpsLng,
      'completion_notes': ?instance.completionNotes,
      'resolution': ?instance.resolution,
      'parts_usage': ?instance.partsUsage,
      'actual_cost': ?instance.actualCost?.toJson(),
      'due_at': ?instance.dueAt?.toIso8601String(),
      'scheduled_start_at': ?instance.scheduledStartAt?.toIso8601String(),
      'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
    };

_AnswerInput _$AnswerInputFromJson(Map<String, dynamic> json) => _AnswerInput(
  resultValue: json['result_value'] as String?,
  resultNumber: (json['result_number'] as num?)?.toDouble(),
  resultText: json['result_text'] as String?,
  note: json['note'] as String?,
  attachmentId: json['attachment_id'] as String?,
  clientAttachmentId: json['client_attachment_id'] as String?,
  createFinding: json['create_finding'] as bool?,
  findingSeverity: json['finding_severity'] as String?,
  clientRecordedAt: json['client_recorded_at'] == null
      ? null
      : DateTime.parse(json['client_recorded_at'] as String),
);

Map<String, dynamic> _$AnswerInputToJson(_AnswerInput instance) =>
    <String, dynamic>{
      'result_value': ?instance.resultValue,
      'result_number': ?instance.resultNumber,
      'result_text': ?instance.resultText,
      'note': ?instance.note,
      'attachment_id': ?instance.attachmentId,
      'client_attachment_id': ?instance.clientAttachmentId,
      'create_finding': ?instance.createFinding,
      'finding_severity': ?instance.findingSeverity,
      'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
    };

_ScanInput _$ScanInputFromJson(Map<String, dynamic> json) => _ScanInput(
  scanMethod: json['scan_method'] as String,
  gpsStatus: json['gps_status'] as String? ?? 'unavailable',
  checkpointId: json['checkpoint_id'] as String?,
  qrCode: json['qr_code'] as String?,
  gpsLat: (json['gps_lat'] as num?)?.toDouble(),
  gpsLng: (json['gps_lng'] as num?)?.toDouble(),
  note: json['note'] as String?,
  clientScanId: json['client_scan_id'] as String?,
  clientRecordedAt: json['client_recorded_at'] == null
      ? null
      : DateTime.parse(json['client_recorded_at'] as String),
);

Map<String, dynamic> _$ScanInputToJson(_ScanInput instance) =>
    <String, dynamic>{
      'scan_method': instance.scanMethod,
      'gps_status': instance.gpsStatus,
      'checkpoint_id': ?instance.checkpointId,
      'qr_code': ?instance.qrCode,
      'gps_lat': ?instance.gpsLat,
      'gps_lng': ?instance.gpsLng,
      'note': ?instance.note,
      'client_scan_id': ?instance.clientScanId,
      'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
    };

_CreateFindingInput _$CreateFindingInputFromJson(Map<String, dynamic> json) =>
    _CreateFindingInput(
      findingType: json['finding_type'] as String,
      title: json['title'] as String,
      severity: json['severity'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      propertyId: json['property_id'] as String?,
      locationId: json['location_id'] as String?,
      assetId: json['asset_id'] as String?,
      attachmentId: json['attachment_id'] as String?,
      sourceType: json['source_type'] as String?,
      sourceId: json['source_id'] as String?,
      clientRecordedAt: json['client_recorded_at'] == null
          ? null
          : DateTime.parse(json['client_recorded_at'] as String),
    );

Map<String, dynamic> _$CreateFindingInputToJson(_CreateFindingInput instance) =>
    <String, dynamic>{
      'finding_type': instance.findingType,
      'title': instance.title,
      'severity': instance.severity,
      'description': ?instance.description,
      'category': ?instance.category,
      'property_id': ?instance.propertyId,
      'location_id': ?instance.locationId,
      'asset_id': ?instance.assetId,
      'attachment_id': ?instance.attachmentId,
      'source_type': ?instance.sourceType,
      'source_id': ?instance.sourceId,
      'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
    };

_CreateIncidentInput _$CreateIncidentInputFromJson(Map<String, dynamic> json) =>
    _CreateIncidentInput(
      incidentType: json['incident_type'] as String,
      category: json['category'] as String,
      title: json['title'] as String,
      severity: json['severity'] as String,
      priority: json['priority'] as String,
      description: json['description'] as String?,
      propertyId: json['property_id'] as String?,
      locationId: json['location_id'] as String?,
      occurredAt: json['occurred_at'] == null
          ? null
          : DateTime.parse(json['occurred_at'] as String),
      assigneeTeamId: json['assignee_team_id'] as String?,
      assigneeUserId: json['assignee_user_id'] as String?,
      sourceType: json['source_type'] as String?,
      sourceId: json['source_id'] as String?,
      clientRecordedAt: json['client_recorded_at'] == null
          ? null
          : DateTime.parse(json['client_recorded_at'] as String),
    );

Map<String, dynamic> _$CreateIncidentInputToJson(
  _CreateIncidentInput instance,
) => <String, dynamic>{
  'incident_type': instance.incidentType,
  'category': instance.category,
  'title': instance.title,
  'severity': instance.severity,
  'priority': instance.priority,
  'description': ?instance.description,
  'property_id': ?instance.propertyId,
  'location_id': ?instance.locationId,
  'occurred_at': ?instance.occurredAt?.toIso8601String(),
  'assignee_team_id': ?instance.assigneeTeamId,
  'assignee_user_id': ?instance.assigneeUserId,
  'source_type': ?instance.sourceType,
  'source_id': ?instance.sourceId,
  'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
};

_CreateWorkOrderInput _$CreateWorkOrderInputFromJson(
  Map<String, dynamic> json,
) => _CreateWorkOrderInput(
  title: json['title'] as String,
  workOrderType: json['work_order_type'] as String,
  priority: json['priority'] as String? ?? 'medium',
  description: json['description'] as String?,
  propertyId: json['property_id'] as String?,
  locationId: json['location_id'] as String?,
  assetId: json['asset_id'] as String?,
  assigneeTeamId: json['assignee_team_id'] as String?,
  assigneeUserId: json['assignee_user_id'] as String?,
  checklistTemplateId: json['checklist_template_id'] as String?,
  dueAt: json['due_at'] == null
      ? null
      : DateTime.parse(json['due_at'] as String),
  scheduledStartAt: json['scheduled_start_at'] == null
      ? null
      : DateTime.parse(json['scheduled_start_at'] as String),
  requiresEvidence: json['requires_evidence'] as bool?,
  sourceType: json['source_type'] as String?,
  sourceId: json['source_id'] as String?,
  linkTo: json['link_to'] == null
      ? null
      : LinkRef.fromJson(json['link_to'] as Map<String, dynamic>),
  vendorReference: json['vendor_reference'] as String?,
  estimatedCost: json['estimated_cost'] == null
      ? null
      : Money.fromJson(json['estimated_cost'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateWorkOrderInputToJson(
  _CreateWorkOrderInput instance,
) => <String, dynamic>{
  'title': instance.title,
  'work_order_type': instance.workOrderType,
  'priority': instance.priority,
  'description': ?instance.description,
  'property_id': ?instance.propertyId,
  'location_id': ?instance.locationId,
  'asset_id': ?instance.assetId,
  'assignee_team_id': ?instance.assigneeTeamId,
  'assignee_user_id': ?instance.assigneeUserId,
  'checklist_template_id': ?instance.checklistTemplateId,
  'due_at': ?instance.dueAt?.toIso8601String(),
  'scheduled_start_at': ?instance.scheduledStartAt?.toIso8601String(),
  'requires_evidence': ?instance.requiresEvidence,
  'source_type': ?instance.sourceType,
  'source_id': ?instance.sourceId,
  'link_to': ?instance.linkTo?.toJson(),
  'vendor_reference': ?instance.vendorReference,
  'estimated_cost': ?instance.estimatedCost?.toJson(),
};

_CreateTaskInput _$CreateTaskInputFromJson(Map<String, dynamic> json) =>
    _CreateTaskInput(
      title: json['title'] as String,
      taskType: json['task_type'] as String,
      priority: json['priority'] as String? ?? 'medium',
      description: json['description'] as String?,
      propertyId: json['property_id'] as String?,
      locationId: json['location_id'] as String?,
      assetId: json['asset_id'] as String?,
      assigneeTeamId: json['assignee_team_id'] as String?,
      assigneeUserId: json['assignee_user_id'] as String?,
      checklistTemplateId: json['checklist_template_id'] as String?,
      dueAt: json['due_at'] == null
          ? null
          : DateTime.parse(json['due_at'] as String),
      scheduledStartAt: json['scheduled_start_at'] == null
          ? null
          : DateTime.parse(json['scheduled_start_at'] as String),
      requiresPhoto: json['requires_photo'] as bool? ?? false,
      sourceType: json['source_type'] as String?,
      sourceId: json['source_id'] as String?,
      linkTo: json['link_to'] == null
          ? null
          : LinkRef.fromJson(json['link_to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateTaskInputToJson(_CreateTaskInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'task_type': instance.taskType,
      'priority': instance.priority,
      'description': ?instance.description,
      'property_id': ?instance.propertyId,
      'location_id': ?instance.locationId,
      'asset_id': ?instance.assetId,
      'assignee_team_id': ?instance.assigneeTeamId,
      'assignee_user_id': ?instance.assigneeUserId,
      'checklist_template_id': ?instance.checklistTemplateId,
      'due_at': ?instance.dueAt?.toIso8601String(),
      'scheduled_start_at': ?instance.scheduledStartAt?.toIso8601String(),
      'requires_photo': instance.requiresPhoto,
      'source_type': ?instance.sourceType,
      'source_id': ?instance.sourceId,
      'link_to': ?instance.linkTo?.toJson(),
    };

_AssignInput _$AssignInputFromJson(Map<String, dynamic> json) => _AssignInput(
  assigneeTeamId: json['assignee_team_id'] as String?,
  assigneeUserId: json['assignee_user_id'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$AssignInputToJson(_AssignInput instance) =>
    <String, dynamic>{
      'assignee_team_id': ?instance.assigneeTeamId,
      'assignee_user_id': ?instance.assigneeUserId,
      'note': ?instance.note,
    };

_DeviceInput _$DeviceInputFromJson(Map<String, dynamic> json) => _DeviceInput(
  platform: json['platform'] as String,
  token: json['token'] as String,
  deviceId: json['device_id'] as String,
  appVersion: json['app_version'] as String,
);

Map<String, dynamic> _$DeviceInputToJson(_DeviceInput instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'token': instance.token,
      'device_id': instance.deviceId,
      'app_version': instance.appVersion,
    };
