import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

/// severity: info | warning | critical
@freezed
abstract class BvNotification with _$BvNotification {
  const BvNotification._();
  const factory BvNotification({
    required String id,
    required String type,
    required String title,
    @Default('') String body,
    @Default('info') String severity,
    String? objectType,
    String? objectId,
    String? objectLabel,
    String? deepLink,
    DateTime? readAt,
    required DateTime createdAt,
  }) = _BvNotification;
  factory BvNotification.fromJson(Map<String, dynamic> json) => _$BvNotificationFromJson(json);

  bool get isUnread => readAt == null;
}
