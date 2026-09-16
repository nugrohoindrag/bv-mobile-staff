// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patrol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatrolBundle _$PatrolBundleFromJson(Map<String, dynamic> json) =>
    _PatrolBundle(
      task: WorkItem.fromJson(json['task'] as Map<String, dynamic>),
      checkpoints:
          (json['checkpoints'] as List<dynamic>?)
              ?.map((e) => CheckpointScan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CheckpointScan>[],
    );

Map<String, dynamic> _$PatrolBundleToJson(_PatrolBundle instance) =>
    <String, dynamic>{
      'task': instance.task.toJson(),
      'checkpoints': instance.checkpoints.map((e) => e.toJson()).toList(),
    };

_CheckpointScan _$CheckpointScanFromJson(Map<String, dynamic> json) =>
    _CheckpointScan(
      id: json['id'] as String,
      checkpointId: json['checkpoint_id'] as String,
      checkpointName: json['checkpoint_name'] as String,
      locationPath: json['location_path'] as String? ?? '',
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'pending',
      qrCode: json['qr_code'] as String?,
      instructions: json['instructions'] as String?,
      checklistTemplateId: json['checklist_template_id'] as String?,
      scanMethod: json['scan_method'] as String?,
      gpsStatus: json['gps_status'] as String?,
      note: json['note'] as String?,
      missedReason: json['missed_reason'] as String?,
      scannedAt: json['scanned_at'] == null
          ? null
          : DateTime.parse(json['scanned_at'] as String),
      scannedBy: json['scanned_by'] as String?,
    );

Map<String, dynamic> _$CheckpointScanToJson(_CheckpointScan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checkpoint_id': instance.checkpointId,
      'checkpoint_name': instance.checkpointName,
      'location_path': instance.locationPath,
      'sort_order': instance.sortOrder,
      'status': instance.status,
      'qr_code': ?instance.qrCode,
      'instructions': ?instance.instructions,
      'checklist_template_id': ?instance.checklistTemplateId,
      'scan_method': ?instance.scanMethod,
      'gps_status': ?instance.gpsStatus,
      'note': ?instance.note,
      'missed_reason': ?instance.missedReason,
      'scanned_at': ?instance.scannedAt?.toIso8601String(),
      'scanned_by': ?instance.scannedBy,
    };
