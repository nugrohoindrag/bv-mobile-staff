import 'package:freezed_annotation/freezed_annotation.dart';

import 'checklist.dart';
import 'refs.dart';

part 'work_item.freezed.dart';
part 'work_item.g.dart';

/// Task / Work Order / Cleaning Task / Patrol Task — representasi seragam dari Task Engine.
@freezed
abstract class WorkItem with _$WorkItem {
  const WorkItem._();

  const factory WorkItem({
    required String id,
    required String objectType,
    required String number,
    @Default('') String type,
    required String title,
    required String status,
    @Default('medium') String priority,
    @Default('') String propertyId,
    String? description,
    @Default(LocationRef()) LocationRef location,
    @Default(AssetRef()) AssetRef asset,
    @Default(AssigneeRef()) AssigneeRef assignee,
    String? checklistTemplateId,
    ChecklistSummary? checklistSummary,
    @Default(false) bool requiresEvidence,
    @Default(false) bool evidenceIncomplete,
    @Default(false) bool isOverdue,
    @Default(0) int attachmentCount,
    @Default(0) int commentCount,
    @Default(0) int reopenCount,
    DateTime? dueAt,
    DateTime? scheduledStartAt,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? closedAt,
    DateTime? cancelledAt,
    DateTime? slaRiskAt,
    DateTime? slaBreachedAt,
    SlaInfo? sla,
    String? completionNotes,
    String? resolution,
    String? partsUsage,
    String? vendorReference,
    String? vendorId,
    String? vendorName,
    String? vendorNotes,
    Money? estimatedCost,
    Money? actualCost,
    String? sourceType,
    String? sourceId,
    String? maintenanceScheduleId,
    String? requesterUserId,
    String? createdBy,
    String? createdByName,
    @Default(<String>[]) List<String> flags,
    @Default(<ObjectLink>[]) List<ObjectLink> links,
    @Default(<String>[]) List<String> allowedActions,
    Map<String, dynamic>? extension,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(1) int version,
  }) = _WorkItem;

  factory WorkItem.fromJson(Map<String, dynamic> json) => _$WorkItemFromJson(json);

  bool get isWorkOrder => objectType == 'work_order';
  bool get isPatrol => type == 'patrol';
  bool get isCleaning => type == 'cleaning';
  bool get isInspection => type == 'inspection';
  bool get isOpen => !const {'completed', 'closed', 'cancelled'}.contains(status);
  bool get isInProgress => status == 'in_progress';
  bool can(String action) => allowedActions.contains(action);
}
