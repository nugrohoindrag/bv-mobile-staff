// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationLite _$LocationLiteFromJson(Map<String, dynamic> json) =>
    _LocationLite(
      id: json['id'] as String,
      name: json['name'] as String,
      locationType: json['location_type'] as String? ?? '',
      pathText: json['path_text'] as String? ?? '',
      qrCode: json['qr_code'] as String?,
    );

Map<String, dynamic> _$LocationLiteToJson(_LocationLite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location_type': instance.locationType,
      'path_text': instance.pathText,
      'qr_code': ?instance.qrCode,
    };

_AssetLite _$AssetLiteFromJson(Map<String, dynamic> json) => _AssetLite(
  id: json['id'] as String,
  assetCode: json['asset_code'] as String,
  name: json['name'] as String,
  status: json['status'] as String? ?? 'active',
  locationId: json['location_id'] as String? ?? '',
  qrCode: json['qr_code'] as String?,
);

Map<String, dynamic> _$AssetLiteToJson(_AssetLite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_code': instance.assetCode,
      'name': instance.name,
      'status': instance.status,
      'location_id': instance.locationId,
      'qr_code': ?instance.qrCode,
    };

_MasterData _$MasterDataFromJson(Map<String, dynamic> json) => _MasterData(
  findingCategories:
      (json['finding_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  incidentCategories:
      (json['incident_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  priorities:
      (json['priorities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>['low', 'medium', 'high', 'critical'],
  severities:
      (json['severities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>['low', 'medium', 'high', 'critical'],
  gpsStatuses:
      (json['gps_statuses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>['captured', 'unavailable', 'denied'],
);

Map<String, dynamic> _$MasterDataToJson(_MasterData instance) =>
    <String, dynamic>{
      'finding_categories': instance.findingCategories,
      'incident_categories': instance.incidentCategories,
      'priorities': instance.priorities,
      'severities': instance.severities,
      'gps_statuses': instance.gpsStatuses,
    };

_MeLite _$MeLiteFromJson(Map<String, dynamic> json) => _MeLite(
  userId: json['user_id'] as String,
  fullName: json['full_name'] as String,
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  teamIds:
      (json['team_ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$MeLiteToJson(_MeLite instance) => <String, dynamic>{
  'user_id': instance.userId,
  'full_name': instance.fullName,
  'permissions': instance.permissions,
  'roles': instance.roles,
  'team_ids': instance.teamIds,
};

_Asset _$AssetFromJson(Map<String, dynamic> json) => _Asset(
  id: json['id'] as String,
  assetCode: json['asset_code'] as String,
  name: json['name'] as String,
  status: json['status'] as String? ?? 'active',
  categoryCode: json['category_code'] as String? ?? '',
  categoryName: json['category_name'] as String? ?? '',
  typeName: json['type_name'] as String?,
  locationId: json['location_id'] as String? ?? '',
  locationName: json['location_name'] as String? ?? '',
  locationPath: json['location_path'] as String? ?? '',
  manufacturer: json['manufacturer'] as String?,
  model: json['model'] as String?,
  serialNumber: json['serial_number'] as String?,
  criticality: json['criticality'] as String?,
  qrCode: json['qr_code'] as String?,
  qrUrl: json['qr_url'] as String?,
  lastMaintenanceAt: json['last_maintenance_at'] == null
      ? null
      : DateTime.parse(json['last_maintenance_at'] as String),
  nextPmDue: json['next_pm_due'] == null
      ? null
      : DateTime.parse(json['next_pm_due'] as String),
  openWorkOrders: (json['open_work_orders'] as num?)?.toInt() ?? 0,
  specifications: json['specifications'] as Map<String, dynamic>?,
  notes: json['notes'] as String?,
  version: (json['version'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$AssetToJson(_Asset instance) => <String, dynamic>{
  'id': instance.id,
  'asset_code': instance.assetCode,
  'name': instance.name,
  'status': instance.status,
  'category_code': instance.categoryCode,
  'category_name': instance.categoryName,
  'type_name': ?instance.typeName,
  'location_id': instance.locationId,
  'location_name': instance.locationName,
  'location_path': instance.locationPath,
  'manufacturer': ?instance.manufacturer,
  'model': ?instance.model,
  'serial_number': ?instance.serialNumber,
  'criticality': ?instance.criticality,
  'qr_code': ?instance.qrCode,
  'qr_url': ?instance.qrUrl,
  'last_maintenance_at': ?instance.lastMaintenanceAt?.toIso8601String(),
  'next_pm_due': ?instance.nextPmDue?.toIso8601String(),
  'open_work_orders': instance.openWorkOrders,
  'specifications': ?instance.specifications,
  'notes': ?instance.notes,
  'version': instance.version,
};

_TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) => _TeamMember(
  userId: json['user_id'] as String,
  fullName: json['full_name'] as String,
  isLead: json['is_lead'] as bool? ?? false,
);

Map<String, dynamic> _$TeamMemberToJson(_TeamMember instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'is_lead': instance.isLead,
    };

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
  id: json['id'] as String,
  name: json['name'] as String,
  domain: json['domain'] as String? ?? '',
  propertyId: json['property_id'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  members:
      (json['members'] as List<dynamic>?)
          ?.map((e) => TeamMember.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TeamMember>[],
  version: (json['version'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'domain': instance.domain,
  'property_id': ?instance.propertyId,
  'is_active': instance.isActive,
  'members': instance.members.map((e) => e.toJson()).toList(),
  'version': instance.version,
};
