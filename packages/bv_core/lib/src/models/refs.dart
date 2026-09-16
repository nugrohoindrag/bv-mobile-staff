import 'package:freezed_annotation/freezed_annotation.dart';

part 'refs.freezed.dart';
part 'refs.g.dart';

@freezed
abstract class LocationRef with _$LocationRef {
  const factory LocationRef({String? id, String? name, String? pathText}) = _LocationRef;
  factory LocationRef.fromJson(Map<String, dynamic> json) => _$LocationRefFromJson(json);
}

@freezed
abstract class AssetRef with _$AssetRef {
  const factory AssetRef({String? id, String? assetCode, String? name, String? status}) = _AssetRef;
  factory AssetRef.fromJson(Map<String, dynamic> json) => _$AssetRefFromJson(json);
}

@freezed
abstract class AssigneeRef with _$AssigneeRef {
  const factory AssigneeRef({String? userId, String? userName, String? teamId, String? teamName}) = _AssigneeRef;
  factory AssigneeRef.fromJson(Map<String, dynamic> json) => _$AssigneeRefFromJson(json);
}

@freezed
abstract class ObjectRef with _$ObjectRef {
  const factory ObjectRef({required String objectType, required String objectId}) = _ObjectRef;
  factory ObjectRef.fromJson(Map<String, dynamic> json) => _$ObjectRefFromJson(json);
}

@freezed
abstract class ObjectLink with _$ObjectLink {
  const factory ObjectLink({
    required String id,
    required String linkType,
    required String direction,
    required String objectType,
    required String objectId,
    required String label,
    required String title,
    required String status,
  }) = _ObjectLink;
  factory ObjectLink.fromJson(Map<String, dynamic> json) => _$ObjectLinkFromJson(json);
}

@freezed
abstract class LinkRef with _$LinkRef {
  const factory LinkRef({required String objectType, required String objectId, String? linkType}) = _LinkRef;
  factory LinkRef.fromJson(Map<String, dynamic> json) => _$LinkRefFromJson(json);
}

@freezed
abstract class Money with _$Money {
  const factory Money({required String currencyCode, required int amount}) = _Money;
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
}

@freezed
abstract class SlaInfo with _$SlaInfo {
  const factory SlaInfo({
    String? policyId,
    DateTime? responseDueAt,
    DateTime? resolutionDueAt,
    DateTime? respondedAt,
    DateTime? resolvedAt,
    DateTime? slaRiskAt,
    DateTime? slaBreachedAt,
    DateTime? escalatedAt,
    int? elapsedPct,
    int? remainingMinutes,
  }) = _SlaInfo;
  factory SlaInfo.fromJson(Map<String, dynamic> json) => _$SlaInfoFromJson(json);
}
