// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BvNotification _$BvNotificationFromJson(Map<String, dynamic> json) =>
    _BvNotification(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String? ?? '',
      severity: json['severity'] as String? ?? 'info',
      objectType: json['object_type'] as String?,
      objectId: json['object_id'] as String?,
      objectLabel: json['object_label'] as String?,
      deepLink: json['deep_link'] as String?,
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$BvNotificationToJson(_BvNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'severity': instance.severity,
      'object_type': ?instance.objectType,
      'object_id': ?instance.objectId,
      'object_label': ?instance.objectLabel,
      'deep_link': ?instance.deepLink,
      'read_at': ?instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
