import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist.freezed.dart';
part 'checklist.g.dart';

@freezed
abstract class ChecklistSummary with _$ChecklistSummary {
  const factory ChecklistSummary({
    required String runId,
    required String status,
    @Default(0) int totalItems,
    @Default(0) int answeredItems,
    @Default(0) int notOkItems,
    @Default(0) int photoMissing,
  }) = _ChecklistSummary;
  factory ChecklistSummary.fromJson(Map<String, dynamic> json) => _$ChecklistSummaryFromJson(json);
}

@freezed
abstract class ChecklistRun with _$ChecklistRun {
  const ChecklistRun._();
  const factory ChecklistRun({
    required String id,
    required String objectType,
    required String objectId,
    required String templateId,
    @Default(1) int templateVersion,
    @Default('') String templateName,
    required String status,
    @Default(0) int totalItems,
    @Default(0) int answeredItems,
    @Default(0) int notOkItems,
    DateTime? startedAt,
    DateTime? completedAt,
    @Default(<ChecklistRunItem>[]) List<ChecklistRunItem> items,
  }) = _ChecklistRun;
  factory ChecklistRun.fromJson(Map<String, dynamic> json) => _$ChecklistRunFromJson(json);

  /// Item yang wajib foto, sudah dijawab, tetapi belum ada attachment.
  int get photoMissing =>
      items.where((i) => i.photoRequired && i.attachmentId == null && i.isAnswered).length;

  int get answeredCount => items.where((i) => i.isAnswered).length;
  int get requiredUnanswered => items.where((i) => i.isRequired && !i.isAnswered).length;
}

/// item_type: ok_not_ok | yes_no | numeric | text | photo (mengikuti template server).
@freezed
abstract class ChecklistRunItem with _$ChecklistRunItem {
  const ChecklistRunItem._();
  const factory ChecklistRunItem({
    required String id,
    required int sortOrder,
    required String label,
    required String itemType,
    String? section,
    @Default(false) bool isRequired,
    @Default(false) bool photoRequired,
    double? numericMin,
    double? numericMax,
    String? numericUnit,
    String? resultValue,
    double? resultNumber,
    String? resultText,
    String? note,
    String? attachmentId,
    String? findingId,
    @Default(false) bool outOfRange,
    DateTime? answeredAt,
    String? answeredBy,
    String? answeredByName,
    String? answeredSource,
  }) = _ChecklistRunItem;
  factory ChecklistRunItem.fromJson(Map<String, dynamic> json) => _$ChecklistRunItemFromJson(json);

  bool get isAnswered =>
      resultValue != null || resultNumber != null || (resultText != null && resultText!.isNotEmpty);
  bool get isNotOk => resultValue == 'not_ok' || resultValue == 'no' || outOfRange;
}
