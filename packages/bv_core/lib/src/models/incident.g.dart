// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Incident _$IncidentFromJson(Map<String, dynamic> json) => _Incident(
  id: json['id'] as String,
  propertyId: json['property_id'] as String? ?? '',
  incidentNumber: json['incident_number'] as String,
  incidentType: json['incident_type'] as String,
  category: json['category'] as String? ?? '',
  title: json['title'] as String,
  description: json['description'] as String?,
  severity: json['severity'] as String? ?? 'medium',
  priority: json['priority'] as String? ?? 'medium',
  status: json['status'] as String? ?? 'new',
  location: json['location'] == null
      ? const LocationRef()
      : LocationRef.fromJson(json['location'] as Map<String, dynamic>),
  assignee: json['assignee'] == null
      ? const AssigneeRef()
      : AssigneeRef.fromJson(json['assignee'] as Map<String, dynamic>),
  occurredAt: json['occurred_at'] == null
      ? null
      : DateTime.parse(json['occurred_at'] as String),
  reportedAt: json['reported_at'] == null
      ? null
      : DateTime.parse(json['reported_at'] as String),
  reportedBy: json['reported_by'] as String?,
  reportedByName: json['reported_by_name'] as String?,
  resolution: json['resolution'] as String?,
  resolvedAt: json['resolved_at'] == null
      ? null
      : DateTime.parse(json['resolved_at'] as String),
  closedAt: json['closed_at'] == null
      ? null
      : DateTime.parse(json['closed_at'] as String),
  slaRiskAt: json['sla_risk_at'] == null
      ? null
      : DateTime.parse(json['sla_risk_at'] as String),
  slaBreachedAt: json['sla_breached_at'] == null
      ? null
      : DateTime.parse(json['sla_breached_at'] as String),
  sourceType: json['source_type'] as String?,
  sourceId: json['source_id'] as String?,
  attachmentCount: (json['attachment_count'] as num?)?.toInt() ?? 0,
  commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
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
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  version: (json['version'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$IncidentToJson(_Incident instance) => <String, dynamic>{
  'id': instance.id,
  'property_id': instance.propertyId,
  'incident_number': instance.incidentNumber,
  'incident_type': instance.incidentType,
  'category': instance.category,
  'title': instance.title,
  'description': ?instance.description,
  'severity': instance.severity,
  'priority': instance.priority,
  'status': instance.status,
  'location': instance.location.toJson(),
  'assignee': instance.assignee.toJson(),
  'occurred_at': ?instance.occurredAt?.toIso8601String(),
  'reported_at': ?instance.reportedAt?.toIso8601String(),
  'reported_by': ?instance.reportedBy,
  'reported_by_name': ?instance.reportedByName,
  'resolution': ?instance.resolution,
  'resolved_at': ?instance.resolvedAt?.toIso8601String(),
  'closed_at': ?instance.closedAt?.toIso8601String(),
  'sla_risk_at': ?instance.slaRiskAt?.toIso8601String(),
  'sla_breached_at': ?instance.slaBreachedAt?.toIso8601String(),
  'source_type': ?instance.sourceType,
  'source_id': ?instance.sourceId,
  'attachment_count': instance.attachmentCount,
  'comment_count': instance.commentCount,
  'flags': instance.flags,
  'links': instance.links.map((e) => e.toJson()).toList(),
  'allowed_actions': instance.allowedActions,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'version': instance.version,
};
