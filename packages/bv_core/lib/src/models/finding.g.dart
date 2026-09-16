// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Finding _$FindingFromJson(Map<String, dynamic> json) => _Finding(
  id: json['id'] as String,
  propertyId: json['property_id'] as String? ?? '',
  findingNumber: json['finding_number'] as String,
  findingType: json['finding_type'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  category: json['category'] as String?,
  severity: json['severity'] as String? ?? 'medium',
  status: json['status'] as String? ?? 'open',
  location: json['location'] == null
      ? const LocationRef()
      : LocationRef.fromJson(json['location'] as Map<String, dynamic>),
  asset: json['asset'] == null
      ? const AssetRef()
      : AssetRef.fromJson(json['asset'] as Map<String, dynamic>),
  sourceType: json['source_type'] as String?,
  sourceId: json['source_id'] as String?,
  sourceLabel: json['source_label'] as String? ?? '',
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
  escalatedAt: json['escalated_at'] == null
      ? null
      : DateTime.parse(json['escalated_at'] as String),
  attachmentCount: (json['attachment_count'] as num?)?.toInt() ?? 0,
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

Map<String, dynamic> _$FindingToJson(_Finding instance) => <String, dynamic>{
  'id': instance.id,
  'property_id': instance.propertyId,
  'finding_number': instance.findingNumber,
  'finding_type': instance.findingType,
  'title': instance.title,
  'description': ?instance.description,
  'category': ?instance.category,
  'severity': instance.severity,
  'status': instance.status,
  'location': instance.location.toJson(),
  'asset': instance.asset.toJson(),
  'source_type': ?instance.sourceType,
  'source_id': ?instance.sourceId,
  'source_label': instance.sourceLabel,
  'reported_at': ?instance.reportedAt?.toIso8601String(),
  'reported_by': ?instance.reportedBy,
  'reported_by_name': ?instance.reportedByName,
  'resolution': ?instance.resolution,
  'resolved_at': ?instance.resolvedAt?.toIso8601String(),
  'closed_at': ?instance.closedAt?.toIso8601String(),
  'escalated_at': ?instance.escalatedAt?.toIso8601String(),
  'attachment_count': instance.attachmentCount,
  'links': instance.links.map((e) => e.toJson()).toList(),
  'allowed_actions': instance.allowedActions,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'version': instance.version,
};
