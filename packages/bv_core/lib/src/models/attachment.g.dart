// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Attachment _$AttachmentFromJson(Map<String, dynamic> json) => _Attachment(
  id: json['id'] as String,
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  attachmentType: json['attachment_type'] as String,
  contentType: json['content_type'] as String? ?? 'image/jpeg',
  sizeBytes: (json['size_bytes'] as num?)?.toInt() ?? 0,
  uploadedBy: json['uploaded_by'] as String? ?? '',
  uploadedByName: json['uploaded_by_name'] as String? ?? '',
  uploadedAt: json['uploaded_at'] == null
      ? null
      : DateTime.parse(json['uploaded_at'] as String),
  capturedAt: json['captured_at'] == null
      ? null
      : DateTime.parse(json['captured_at'] as String),
  gpsStatus: json['gps_status'] as String? ?? 'unavailable',
  gpsLat: (json['gps_lat'] as num?)?.toDouble(),
  gpsLng: (json['gps_lng'] as num?)?.toDouble(),
  gpsAccuracyM: (json['gps_accuracy_m'] as num?)?.toDouble(),
  status: json['status'] as String? ?? 'pending',
  url: json['url'] as String?,
  thumbUrl: json['thumb_url'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  caption: json['caption'] as String?,
  originalFilename: json['original_filename'] as String?,
  clientAttachmentId: json['client_attachment_id'] as String?,
);

Map<String, dynamic> _$AttachmentToJson(_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'attachment_type': instance.attachmentType,
      'content_type': instance.contentType,
      'size_bytes': instance.sizeBytes,
      'uploaded_by': instance.uploadedBy,
      'uploaded_by_name': instance.uploadedByName,
      'uploaded_at': ?instance.uploadedAt?.toIso8601String(),
      'captured_at': ?instance.capturedAt?.toIso8601String(),
      'gps_status': instance.gpsStatus,
      'gps_lat': ?instance.gpsLat,
      'gps_lng': ?instance.gpsLng,
      'gps_accuracy_m': ?instance.gpsAccuracyM,
      'status': instance.status,
      'url': ?instance.url,
      'thumb_url': ?instance.thumbUrl,
      'width': ?instance.width,
      'height': ?instance.height,
      'caption': ?instance.caption,
      'original_filename': ?instance.originalFilename,
      'client_attachment_id': ?instance.clientAttachmentId,
    };

_PresignInput _$PresignInputFromJson(Map<String, dynamic> json) =>
    _PresignInput(
      objectType: json['object_type'] as String,
      objectId: json['object_id'] as String,
      attachmentType: json['attachment_type'] as String,
      contentType: json['content_type'] as String,
      sizeBytes: (json['size_bytes'] as num).toInt(),
      clientAttachmentId: json['client_attachment_id'] as String?,
      sha256: json['sha256'] as String?,
      originalFilename: json['original_filename'] as String?,
    );

Map<String, dynamic> _$PresignInputToJson(_PresignInput instance) =>
    <String, dynamic>{
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'attachment_type': instance.attachmentType,
      'content_type': instance.contentType,
      'size_bytes': instance.sizeBytes,
      'client_attachment_id': ?instance.clientAttachmentId,
      'sha256': ?instance.sha256,
      'original_filename': ?instance.originalFilename,
    };

_PresignOutput _$PresignOutputFromJson(Map<String, dynamic> json) =>
    _PresignOutput(
      attachmentId: json['attachment_id'] as String,
      uploadUrl: json['upload_url'] as String,
      storageKey: json['storage_key'] as String? ?? '',
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      method: json['method'] as String? ?? 'PUT',
      headers: json['headers'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PresignOutputToJson(_PresignOutput instance) =>
    <String, dynamic>{
      'attachment_id': instance.attachmentId,
      'upload_url': instance.uploadUrl,
      'storage_key': instance.storageKey,
      'expires_at': ?instance.expiresAt?.toIso8601String(),
      'method': instance.method,
      'headers': ?instance.headers,
    };

_ConfirmInput _$ConfirmInputFromJson(Map<String, dynamic> json) =>
    _ConfirmInput(
      gpsStatus: json['gps_status'] as String,
      capturedAt: json['captured_at'] == null
          ? null
          : DateTime.parse(json['captured_at'] as String),
      gpsLat: (json['gps_lat'] as num?)?.toDouble(),
      gpsLng: (json['gps_lng'] as num?)?.toDouble(),
      gpsAccuracyM: (json['gps_accuracy_m'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      caption: json['caption'] as String?,
      deviceId: json['device_id'] as String?,
      sha256: json['sha256'] as String?,
    );

Map<String, dynamic> _$ConfirmInputToJson(_ConfirmInput instance) =>
    <String, dynamic>{
      'gps_status': instance.gpsStatus,
      'captured_at': ?instance.capturedAt?.toIso8601String(),
      'gps_lat': ?instance.gpsLat,
      'gps_lng': ?instance.gpsLng,
      'gps_accuracy_m': ?instance.gpsAccuracyM,
      'width': ?instance.width,
      'height': ?instance.height,
      'caption': ?instance.caption,
      'device_id': ?instance.deviceId,
      'sha256': ?instance.sha256,
    };
