// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistSummary _$ChecklistSummaryFromJson(Map<String, dynamic> json) =>
    _ChecklistSummary(
      runId: json['run_id'] as String,
      status: json['status'] as String,
      totalItems: (json['total_items'] as num?)?.toInt() ?? 0,
      answeredItems: (json['answered_items'] as num?)?.toInt() ?? 0,
      notOkItems: (json['not_ok_items'] as num?)?.toInt() ?? 0,
      photoMissing: (json['photo_missing'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChecklistSummaryToJson(_ChecklistSummary instance) =>
    <String, dynamic>{
      'run_id': instance.runId,
      'status': instance.status,
      'total_items': instance.totalItems,
      'answered_items': instance.answeredItems,
      'not_ok_items': instance.notOkItems,
      'photo_missing': instance.photoMissing,
    };

_ChecklistRun _$ChecklistRunFromJson(Map<String, dynamic> json) =>
    _ChecklistRun(
      id: json['id'] as String,
      objectType: json['object_type'] as String,
      objectId: json['object_id'] as String,
      templateId: json['template_id'] as String,
      templateVersion: (json['template_version'] as num?)?.toInt() ?? 1,
      templateName: json['template_name'] as String? ?? '',
      status: json['status'] as String,
      totalItems: (json['total_items'] as num?)?.toInt() ?? 0,
      answeredItems: (json['answered_items'] as num?)?.toInt() ?? 0,
      notOkItems: (json['not_ok_items'] as num?)?.toInt() ?? 0,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ChecklistRunItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChecklistRunItem>[],
    );

Map<String, dynamic> _$ChecklistRunToJson(_ChecklistRun instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'template_id': instance.templateId,
      'template_version': instance.templateVersion,
      'template_name': instance.templateName,
      'status': instance.status,
      'total_items': instance.totalItems,
      'answered_items': instance.answeredItems,
      'not_ok_items': instance.notOkItems,
      'started_at': ?instance.startedAt?.toIso8601String(),
      'completed_at': ?instance.completedAt?.toIso8601String(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_ChecklistRunItem _$ChecklistRunItemFromJson(Map<String, dynamic> json) =>
    _ChecklistRunItem(
      id: json['id'] as String,
      sortOrder: (json['sort_order'] as num).toInt(),
      label: json['label'] as String,
      itemType: json['item_type'] as String,
      section: json['section'] as String?,
      isRequired: json['is_required'] as bool? ?? false,
      photoRequired: json['photo_required'] as bool? ?? false,
      numericMin: (json['numeric_min'] as num?)?.toDouble(),
      numericMax: (json['numeric_max'] as num?)?.toDouble(),
      numericUnit: json['numeric_unit'] as String?,
      resultValue: json['result_value'] as String?,
      resultNumber: (json['result_number'] as num?)?.toDouble(),
      resultText: json['result_text'] as String?,
      note: json['note'] as String?,
      attachmentId: json['attachment_id'] as String?,
      findingId: json['finding_id'] as String?,
      outOfRange: json['out_of_range'] as bool? ?? false,
      answeredAt: json['answered_at'] == null
          ? null
          : DateTime.parse(json['answered_at'] as String),
      answeredBy: json['answered_by'] as String?,
      answeredByName: json['answered_by_name'] as String?,
      answeredSource: json['answered_source'] as String?,
    );

Map<String, dynamic> _$ChecklistRunItemToJson(_ChecklistRunItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort_order': instance.sortOrder,
      'label': instance.label,
      'item_type': instance.itemType,
      'section': ?instance.section,
      'is_required': instance.isRequired,
      'photo_required': instance.photoRequired,
      'numeric_min': ?instance.numericMin,
      'numeric_max': ?instance.numericMax,
      'numeric_unit': ?instance.numericUnit,
      'result_value': ?instance.resultValue,
      'result_number': ?instance.resultNumber,
      'result_text': ?instance.resultText,
      'note': ?instance.note,
      'attachment_id': ?instance.attachmentId,
      'finding_id': ?instance.findingId,
      'out_of_range': instance.outOfRange,
      'answered_at': ?instance.answeredAt?.toIso8601String(),
      'answered_by': ?instance.answeredBy,
      'answered_by_name': ?instance.answeredByName,
      'answered_source': ?instance.answeredSource,
    };
