import 'package:freezed_annotation/freezed_annotation.dart';

import 'refs.dart';

part 'incident.freezed.dart';
part 'incident.g.dart';

@freezed
abstract class Incident with _$Incident {
  const factory Incident({
    required String id,
    @Default('') String propertyId,
    required String incidentNumber,
    required String incidentType,
    @Default('') String category,
    required String title,
    String? description,
    @Default('medium') String severity,
    @Default('medium') String priority,
    @Default('new') String status,
    @Default(LocationRef()) LocationRef location,
    @Default(AssigneeRef()) AssigneeRef assignee,
    DateTime? occurredAt,
    DateTime? reportedAt,
    String? reportedBy,
    String? reportedByName,
    String? resolution,
    DateTime? resolvedAt,
    DateTime? closedAt,
    DateTime? slaRiskAt,
    DateTime? slaBreachedAt,
    String? sourceType,
    String? sourceId,
    @Default(0) int attachmentCount,
    @Default(0) int commentCount,
    @Default(<String>[]) List<String> flags,
    @Default(<ObjectLink>[]) List<ObjectLink> links,
    @Default(<String>[]) List<String> allowedActions,
    DateTime? createdAt,
    @Default(1) int version,
  }) = _Incident;
  factory Incident.fromJson(Map<String, dynamic> json) => _$IncidentFromJson(json);
}
