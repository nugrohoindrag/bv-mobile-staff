import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

/// attachment_type: before | after | photo | checklist · status: pending | ready · gps_status: captured | unavailable | denied
@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    required String id,
    required String objectType,
    required String objectId,
    required String attachmentType,
    @Default('image/jpeg') String contentType,
    @Default(0) int sizeBytes,
    @Default('') String uploadedBy,
    @Default('') String uploadedByName,
    DateTime? uploadedAt,
    DateTime? capturedAt,
    @Default('unavailable') String gpsStatus,
    double? gpsLat,
    double? gpsLng,
    double? gpsAccuracyM,
    @Default('pending') String status,
    String? url,
    String? thumbUrl,
    int? width,
    int? height,
    String? caption,
    String? originalFilename,
    String? clientAttachmentId,
  }) = _Attachment;
  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
}

@freezed
abstract class PresignInput with _$PresignInput {
  const factory PresignInput({
    required String objectType,
    required String objectId,
    required String attachmentType,
    required String contentType,
    required int sizeBytes,
    String? clientAttachmentId,
    String? sha256,
    String? originalFilename,
  }) = _PresignInput;
  factory PresignInput.fromJson(Map<String, dynamic> json) => _$PresignInputFromJson(json);
}

@freezed
abstract class PresignOutput with _$PresignOutput {
  const factory PresignOutput({
    required String attachmentId,
    required String uploadUrl,
    @Default('') String storageKey,
    DateTime? expiresAt,
    @Default('PUT') String method,
    Map<String, dynamic>? headers,
  }) = _PresignOutput;
  factory PresignOutput.fromJson(Map<String, dynamic> json) => _$PresignOutputFromJson(json);
}

@freezed
abstract class ConfirmInput with _$ConfirmInput {
  const factory ConfirmInput({
    required String gpsStatus,
    DateTime? capturedAt,
    double? gpsLat,
    double? gpsLng,
    double? gpsAccuracyM,
    int? width,
    int? height,
    String? caption,
    String? deviceId,
    String? sha256,
  }) = _ConfirmInput;
  factory ConfirmInput.fromJson(Map<String, dynamic> json) => _$ConfirmInputFromJson(json);
}
