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

_Announcement _$AnnouncementFromJson(Map<String, dynamic> json) =>
    _Announcement(
      id: json['id'] as String,
      title: json['title'] as String,
      excerpt: json['excerpt'] as String?,
      body: json['body'] as String? ?? '',
      importance: json['importance'] as String? ?? 'normal',
      propertyName: json['property_name'] as String?,
      createdByName: json['created_by_name'] as String?,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AnnouncementToJson(_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'excerpt': ?instance.excerpt,
      'body': instance.body,
      'importance': instance.importance,
      'property_name': ?instance.propertyName,
      'created_by_name': ?instance.createdByName,
      'published_at': ?instance.publishedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
