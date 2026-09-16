// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenPair _$TokenPairFromJson(Map<String, dynamic> json) => _TokenPair(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String?,
  tokenType: json['token_type'] as String? ?? 'Bearer',
  accessExpiresAt: DateTime.parse(json['access_expires_at'] as String),
  refreshExpiresAt: DateTime.parse(json['refresh_expires_at'] as String),
);

Map<String, dynamic> _$TokenPairToJson(_TokenPair instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': ?instance.refreshToken,
      'token_type': instance.tokenType,
      'access_expires_at': instance.accessExpiresAt.toIso8601String(),
      'refresh_expires_at': instance.refreshExpiresAt.toIso8601String(),
    };

_PropertyScope _$PropertyScopeFromJson(Map<String, dynamic> json) =>
    _PropertyScope(
      propertyId: json['property_id'] as String?,
      permissions:
          (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$PropertyScopeToJson(_PropertyScope instance) =>
    <String, dynamic>{
      'property_id': ?instance.propertyId,
      'permissions': instance.permissions,
    };

_Me _$MeFromJson(Map<String, dynamic> json) => _Me(
  id: json['id'] as String,
  fullName: json['full_name'] as String,
  organizationId: json['organization_id'] as String? ?? '',
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  teamIds:
      (json['team_ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  leadTeamIds:
      (json['lead_team_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  properties:
      (json['properties'] as List<dynamic>?)
          ?.map((e) => PropertyScope.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PropertyScope>[],
);

Map<String, dynamic> _$MeToJson(_Me instance) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'organization_id': instance.organizationId,
  'roles': instance.roles,
  'team_ids': instance.teamIds,
  'lead_team_ids': instance.leadTeamIds,
  'permissions': instance.permissions,
  'properties': instance.properties.map((e) => e.toJson()).toList(),
};

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String? ?? 'Bearer',
      accessExpiresAt: DateTime.parse(json['access_expires_at'] as String),
      refreshExpiresAt: DateTime.parse(json['refresh_expires_at'] as String),
      user: Me.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': ?instance.refreshToken,
      'token_type': instance.tokenType,
      'access_expires_at': instance.accessExpiresAt.toIso8601String(),
      'refresh_expires_at': instance.refreshExpiresAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

_HealthInfo _$HealthInfoFromJson(Map<String, dynamic> json) => _HealthInfo(
  status: json['status'] as String? ?? 'ok',
  time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  minSupportedAppVersion:
      json['min_supported_app_version'] as String? ?? '0.0.0',
);

Map<String, dynamic> _$HealthInfoToJson(_HealthInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'time': ?instance.time?.toIso8601String(),
      'min_supported_app_version': instance.minSupportedAppVersion,
    };
