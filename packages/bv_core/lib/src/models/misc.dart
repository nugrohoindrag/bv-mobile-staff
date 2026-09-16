import 'package:freezed_annotation/freezed_annotation.dart';

part 'misc.freezed.dart';
part 'misc.g.dart';

@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String objectType,
    required String objectId,
    @Default('') String authorId,
    @Default('') String authorName,
    required String body,
    @Default('mobile') String source,
    required DateTime createdAt,
    DateTime? editedAt,
  }) = _Comment;
  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

/// Baris Activity Timeline: `{actor} {action} {object}` dengan from/to.
@freezed
abstract class Activity with _$Activity {
  const factory Activity({
    required String id,
    required String objectType,
    required String objectId,
    @Default('') String actorName,
    String? actorUserId,
    required String action,
    String? fromValue,
    String? toValue,
    required DateTime occurredAt,
    DateTime? clientRecordedAt,
    @Default('system') String source,
    Map<String, dynamic>? payload,
  }) = _Activity;
  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}

/// `GET /qr/{code}/resolve` — object_type: asset | checkpoint | location
@freezed
abstract class QrResolve with _$QrResolve {
  const factory QrResolve({
    required String objectType,
    required String objectId,
    @Default('') String deepLink,
    Map<String, dynamic>? summary,
  }) = _QrResolve;
  factory QrResolve.fromJson(Map<String, dynamic> json) => _$QrResolveFromJson(json);
}

/// RFC 9457 problem+json.
@freezed
abstract class Problem with _$Problem {
  const factory Problem({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? code,
    String? requestId,
    @Default(<FieldError>[]) List<FieldError> errors,
  }) = _Problem;
  factory Problem.fromJson(Map<String, dynamic> json) => _$ProblemFromJson(json);
}

@freezed
abstract class FieldError with _$FieldError {
  const factory FieldError({String? field, String? message}) = _FieldError;
  factory FieldError.fromJson(Map<String, dynamic> json) => _$FieldErrorFromJson(json);
}

/// Halaman list API: `{ items, next_cursor }` (TAD §6 cursor pagination).
@Freezed(genericArgumentFactories: true)
abstract class Page<T> with _$Page<T> {
  const factory Page({@Default(<Never>[]) List<T> data, String? nextCursor, int? total}) = _Page<T>;
  factory Page.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$PageFromJson(json, fromJsonT);
}

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    required String objectType,
    required String objectId,
    required String title,
    String? subtitle,
    String? businessId,
    String? status,
    String? locationPath,
    String? propertyId,
    @Default('') String deepLink,
    @Default(0) double rank,
  }) = _SearchResult;
  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
}
