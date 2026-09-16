import 'package:freezed_annotation/freezed_annotation.dart';

import 'refs.dart';

part 'finding.freezed.dart';
part 'finding.g.dart';

@freezed
abstract class Finding with _$Finding {
  const factory Finding({
    required String id,
    @Default('') String propertyId,
    required String findingNumber,
    required String findingType,
    required String title,
    String? description,
    String? category,
    @Default('medium') String severity,
    @Default('open') String status,
    @Default(LocationRef()) LocationRef location,
    @Default(AssetRef()) AssetRef asset,
    String? sourceType,
    String? sourceId,
    @Default('') String sourceLabel,
    DateTime? reportedAt,
    String? reportedBy,
    String? reportedByName,
    String? resolution,
    DateTime? resolvedAt,
    DateTime? closedAt,
    DateTime? escalatedAt,
    @Default(0) int attachmentCount,
    @Default(<ObjectLink>[]) List<ObjectLink> links,
    @Default(<String>[]) List<String> allowedActions,
    DateTime? createdAt,
    @Default(1) int version,
  }) = _Finding;
  factory Finding.fromJson(Map<String, dynamic> json) => _$FindingFromJson(json);
}
