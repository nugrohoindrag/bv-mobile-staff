// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkItem _$WorkItemFromJson(Map<String, dynamic> json) => _WorkItem(
  id: json['id'] as String,
  objectType: json['object_type'] as String,
  number: json['number'] as String,
  type: json['type'] as String? ?? '',
  title: json['title'] as String,
  status: json['status'] as String,
  priority: json['priority'] as String? ?? 'medium',
  propertyId: json['property_id'] as String? ?? '',
  description: json['description'] as String?,
  location: json['location'] == null
      ? const LocationRef()
      : LocationRef.fromJson(json['location'] as Map<String, dynamic>),
  asset: json['asset'] == null
      ? const AssetRef()
      : AssetRef.fromJson(json['asset'] as Map<String, dynamic>),
  assignee: json['assignee'] == null
      ? const AssigneeRef()
      : AssigneeRef.fromJson(json['assignee'] as Map<String, dynamic>),
  checklistTemplateId: json['checklist_template_id'] as String?,
  checklistSummary: json['checklist_summary'] == null
      ? null
      : ChecklistSummary.fromJson(
          json['checklist_summary'] as Map<String, dynamic>,
        ),
  requiresEvidence: json['requires_evidence'] as bool? ?? false,
  evidenceIncomplete: json['evidence_incomplete'] as bool? ?? false,
  isOverdue: json['is_overdue'] as bool? ?? false,
  attachmentCount: (json['attachment_count'] as num?)?.toInt() ?? 0,
  commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
  reopenCount: (json['reopen_count'] as num?)?.toInt() ?? 0,
  dueAt: json['due_at'] == null
      ? null
      : DateTime.parse(json['due_at'] as String),
  scheduledStartAt: json['scheduled_start_at'] == null
      ? null
      : DateTime.parse(json['scheduled_start_at'] as String),
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  closedAt: json['closed_at'] == null
      ? null
      : DateTime.parse(json['closed_at'] as String),
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  slaRiskAt: json['sla_risk_at'] == null
      ? null
      : DateTime.parse(json['sla_risk_at'] as String),
  slaBreachedAt: json['sla_breached_at'] == null
      ? null
      : DateTime.parse(json['sla_breached_at'] as String),
  sla: json['sla'] == null
      ? null
      : SlaInfo.fromJson(json['sla'] as Map<String, dynamic>),
  completionNotes: json['completion_notes'] as String?,
  resolution: json['resolution'] as String?,
  partsUsage: json['parts_usage'] as String?,
  vendorReference: json['vendor_reference'] as String?,
  vendorId: json['vendor_id'] as String?,
  vendorName: json['vendor_name'] as String?,
  vendorNotes: json['vendor_notes'] as String?,
  estimatedCost: json['estimated_cost'] == null
      ? null
      : Money.fromJson(json['estimated_cost'] as Map<String, dynamic>),
  actualCost: json['actual_cost'] == null
      ? null
      : Money.fromJson(json['actual_cost'] as Map<String, dynamic>),
  sourceType: json['source_type'] as String?,
  sourceId: json['source_id'] as String?,
  maintenanceScheduleId: json['maintenance_schedule_id'] as String?,
  requesterUserId: json['requester_user_id'] as String?,
  createdBy: json['created_by'] as String?,
  createdByName: json['created_by_name'] as String?,
  flags:
      (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  links:
      (json['links'] as List<dynamic>?)
          ?.map((e) => ObjectLink.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ObjectLink>[],
  allowedActions:
      (json['allowed_actions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  extension: json['extension'] as Map<String, dynamic>?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  version: (json['version'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$WorkItemToJson(_WorkItem instance) => <String, dynamic>{
  'id': instance.id,
  'object_type': instance.objectType,
  'number': instance.number,
  'type': instance.type,
  'title': instance.title,
  'status': instance.status,
  'priority': instance.priority,
  'property_id': instance.propertyId,
  'description': ?instance.description,
  'location': instance.location.toJson(),
  'asset': instance.asset.toJson(),
  'assignee': instance.assignee.toJson(),
  'checklist_template_id': ?instance.checklistTemplateId,
  'checklist_summary': ?instance.checklistSummary?.toJson(),
  'requires_evidence': instance.requiresEvidence,
  'evidence_incomplete': instance.evidenceIncomplete,
  'is_overdue': instance.isOverdue,
  'attachment_count': instance.attachmentCount,
  'comment_count': instance.commentCount,
  'reopen_count': instance.reopenCount,
  'due_at': ?instance.dueAt?.toIso8601String(),
  'scheduled_start_at': ?instance.scheduledStartAt?.toIso8601String(),
  'started_at': ?instance.startedAt?.toIso8601String(),
  'completed_at': ?instance.completedAt?.toIso8601String(),
  'closed_at': ?instance.closedAt?.toIso8601String(),
  'cancelled_at': ?instance.cancelledAt?.toIso8601String(),
  'sla_risk_at': ?instance.slaRiskAt?.toIso8601String(),
  'sla_breached_at': ?instance.slaBreachedAt?.toIso8601String(),
  'sla': ?instance.sla?.toJson(),
  'completion_notes': ?instance.completionNotes,
  'resolution': ?instance.resolution,
  'parts_usage': ?instance.partsUsage,
  'vendor_reference': ?instance.vendorReference,
  'vendor_id': ?instance.vendorId,
  'vendor_name': ?instance.vendorName,
  'vendor_notes': ?instance.vendorNotes,
  'estimated_cost': ?instance.estimatedCost?.toJson(),
  'actual_cost': ?instance.actualCost?.toJson(),
  'source_type': ?instance.sourceType,
  'source_id': ?instance.sourceId,
  'maintenance_schedule_id': ?instance.maintenanceScheduleId,
  'requester_user_id': ?instance.requesterUserId,
  'created_by': ?instance.createdBy,
  'created_by_name': ?instance.createdByName,
  'flags': instance.flags,
  'links': instance.links.map((e) => e.toJson()).toList(),
  'allowed_actions': instance.allowedActions,
  'extension': ?instance.extension,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'version': instance.version,
};
