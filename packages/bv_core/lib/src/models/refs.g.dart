// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationRef _$LocationRefFromJson(Map<String, dynamic> json) => _LocationRef(
  id: json['id'] as String?,
  name: json['name'] as String?,
  pathText: json['path_text'] as String?,
);

Map<String, dynamic> _$LocationRefToJson(_LocationRef instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'path_text': ?instance.pathText,
    };

_AssetRef _$AssetRefFromJson(Map<String, dynamic> json) => _AssetRef(
  id: json['id'] as String?,
  assetCode: json['asset_code'] as String?,
  name: json['name'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$AssetRefToJson(_AssetRef instance) => <String, dynamic>{
  'id': ?instance.id,
  'asset_code': ?instance.assetCode,
  'name': ?instance.name,
  'status': ?instance.status,
};

_AssigneeRef _$AssigneeRefFromJson(Map<String, dynamic> json) => _AssigneeRef(
  userId: json['user_id'] as String?,
  userName: json['user_name'] as String?,
  teamId: json['team_id'] as String?,
  teamName: json['team_name'] as String?,
);

Map<String, dynamic> _$AssigneeRefToJson(_AssigneeRef instance) =>
    <String, dynamic>{
      'user_id': ?instance.userId,
      'user_name': ?instance.userName,
      'team_id': ?instance.teamId,
      'team_name': ?instance.teamName,
    };

_ObjectRef _$ObjectRefFromJson(Map<String, dynamic> json) => _ObjectRef(
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
);

Map<String, dynamic> _$ObjectRefToJson(_ObjectRef instance) =>
    <String, dynamic>{
      'object_type': instance.objectType,
      'object_id': instance.objectId,
    };

_ObjectLink _$ObjectLinkFromJson(Map<String, dynamic> json) => _ObjectLink(
  id: json['id'] as String,
  linkType: json['link_type'] as String,
  direction: json['direction'] as String,
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  label: json['label'] as String,
  title: json['title'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$ObjectLinkToJson(_ObjectLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link_type': instance.linkType,
      'direction': instance.direction,
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'label': instance.label,
      'title': instance.title,
      'status': instance.status,
    };

_LinkRef _$LinkRefFromJson(Map<String, dynamic> json) => _LinkRef(
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  linkType: json['link_type'] as String?,
);

Map<String, dynamic> _$LinkRefToJson(_LinkRef instance) => <String, dynamic>{
  'object_type': instance.objectType,
  'object_id': instance.objectId,
  'link_type': ?instance.linkType,
};

_Money _$MoneyFromJson(Map<String, dynamic> json) => _Money(
  currencyCode: json['currency_code'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$MoneyToJson(_Money instance) => <String, dynamic>{
  'currency_code': instance.currencyCode,
  'amount': instance.amount,
};

_SlaInfo _$SlaInfoFromJson(Map<String, dynamic> json) => _SlaInfo(
  policyId: json['policy_id'] as String?,
  responseDueAt: json['response_due_at'] == null
      ? null
      : DateTime.parse(json['response_due_at'] as String),
  resolutionDueAt: json['resolution_due_at'] == null
      ? null
      : DateTime.parse(json['resolution_due_at'] as String),
  respondedAt: json['responded_at'] == null
      ? null
      : DateTime.parse(json['responded_at'] as String),
  resolvedAt: json['resolved_at'] == null
      ? null
      : DateTime.parse(json['resolved_at'] as String),
  slaRiskAt: json['sla_risk_at'] == null
      ? null
      : DateTime.parse(json['sla_risk_at'] as String),
  slaBreachedAt: json['sla_breached_at'] == null
      ? null
      : DateTime.parse(json['sla_breached_at'] as String),
  escalatedAt: json['escalated_at'] == null
      ? null
      : DateTime.parse(json['escalated_at'] as String),
  elapsedPct: (json['elapsed_pct'] as num?)?.toInt(),
  remainingMinutes: (json['remaining_minutes'] as num?)?.toInt(),
);

Map<String, dynamic> _$SlaInfoToJson(_SlaInfo instance) => <String, dynamic>{
  'policy_id': ?instance.policyId,
  'response_due_at': ?instance.responseDueAt?.toIso8601String(),
  'resolution_due_at': ?instance.resolutionDueAt?.toIso8601String(),
  'responded_at': ?instance.respondedAt?.toIso8601String(),
  'resolved_at': ?instance.resolvedAt?.toIso8601String(),
  'sla_risk_at': ?instance.slaRiskAt?.toIso8601String(),
  'sla_breached_at': ?instance.slaBreachedAt?.toIso8601String(),
  'escalated_at': ?instance.escalatedAt?.toIso8601String(),
  'elapsed_pct': ?instance.elapsedPct,
  'remaining_minutes': ?instance.remainingMinutes,
};
