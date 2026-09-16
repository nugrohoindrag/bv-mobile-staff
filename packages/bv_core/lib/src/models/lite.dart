import 'package:freezed_annotation/freezed_annotation.dart';

part 'lite.freezed.dart';
part 'lite.g.dart';

@freezed
abstract class LocationLite with _$LocationLite {
  const factory LocationLite({
    required String id,
    required String name,
    @Default('') String locationType,
    @Default('') String pathText,
    String? qrCode,
  }) = _LocationLite;
  factory LocationLite.fromJson(Map<String, dynamic> json) => _$LocationLiteFromJson(json);
}

@freezed
abstract class AssetLite with _$AssetLite {
  const factory AssetLite({
    required String id,
    required String assetCode,
    required String name,
    @Default('active') String status,
    @Default('') String locationId,
    String? qrCode,
  }) = _AssetLite;
  factory AssetLite.fromJson(Map<String, dynamic> json) => _$AssetLiteFromJson(json);
}

@freezed
abstract class MasterData with _$MasterData {
  const factory MasterData({
    @Default(<String>[]) List<String> findingCategories,
    @Default(<String>[]) List<String> incidentCategories,
    @Default(<String>['low', 'medium', 'high', 'critical']) List<String> priorities,
    @Default(<String>['low', 'medium', 'high', 'critical']) List<String> severities,
    @Default(<String>['captured', 'unavailable', 'denied']) List<String> gpsStatuses,
  }) = _MasterData;
  factory MasterData.fromJson(Map<String, dynamic> json) => _$MasterDataFromJson(json);
}

@freezed
abstract class MeLite with _$MeLite {
  const factory MeLite({
    required String userId,
    required String fullName,
    @Default(<String>[]) List<String> permissions,
    @Default(<String>[]) List<String> roles,
    @Default(<String>[]) List<String> teamIds,
  }) = _MeLite;
  factory MeLite.fromJson(Map<String, dynamic> json) => _$MeLiteFromJson(json);
}

/// Detail aset (`GET /assets/{id}`) — subset yang dipakai mobile.
@freezed
abstract class Asset with _$Asset {
  const factory Asset({
    required String id,
    required String assetCode,
    required String name,
    @Default('active') String status,
    @Default('') String categoryCode,
    @Default('') String categoryName,
    String? typeName,
    @Default('') String locationId,
    @Default('') String locationName,
    @Default('') String locationPath,
    String? manufacturer,
    String? model,
    String? serialNumber,
    String? criticality,
    String? qrCode,
    String? qrUrl,
    DateTime? lastMaintenanceAt,
    DateTime? nextPmDue,
    @Default(0) int openWorkOrders,
    Map<String, dynamic>? specifications,
    String? notes,
    @Default(1) int version,
  }) = _Asset;
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
abstract class TeamMember with _$TeamMember {
  const factory TeamMember({required String userId, required String fullName, @Default(false) bool isLead}) = _TeamMember;
  factory TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);
}

@freezed
abstract class Team with _$Team {
  const factory Team({
    required String id,
    required String name,
    @Default('') String domain,
    String? propertyId,
    @Default(true) bool isActive,
    @Default(<TeamMember>[]) List<TeamMember> members,
    @Default(1) int version,
  }) = _Team;
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
