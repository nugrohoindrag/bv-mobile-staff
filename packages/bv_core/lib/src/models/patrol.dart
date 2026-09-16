import 'package:freezed_annotation/freezed_annotation.dart';

import 'work_item.dart';

part 'patrol.freezed.dart';
part 'patrol.g.dart';

@freezed
abstract class PatrolBundle with _$PatrolBundle {
  const factory PatrolBundle({
    required WorkItem task,
    @Default(<CheckpointScan>[]) List<CheckpointScan> checkpoints,
  }) = _PatrolBundle;
  factory PatrolBundle.fromJson(Map<String, dynamic> json) => _$PatrolBundleFromJson(json);
}

/// Checkpoint dalam satu patrol task (status: pending | scanned | missed).
@freezed
abstract class CheckpointScan with _$CheckpointScan {
  const CheckpointScan._();
  const factory CheckpointScan({
    required String id,
    required String checkpointId,
    required String checkpointName,
    @Default('') String locationPath,
    @Default(0) int sortOrder,
    @Default('pending') String status,
    String? qrCode,
    String? instructions,
    String? checklistTemplateId,
    String? scanMethod,
    String? gpsStatus,
    String? note,
    String? missedReason,
    DateTime? scannedAt,
    String? scannedBy,
  }) = _CheckpointScan;
  factory CheckpointScan.fromJson(Map<String, dynamic> json) => _$CheckpointScanFromJson(json);

  bool get isPending => status == 'pending';
  bool get isScanned => status == 'scanned';
  bool get isMissed => status == 'missed';
}
