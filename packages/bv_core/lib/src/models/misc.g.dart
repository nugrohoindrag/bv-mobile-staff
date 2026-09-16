// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Comment _$CommentFromJson(Map<String, dynamic> json) => _Comment(
  id: json['id'] as String,
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  authorId: json['author_id'] as String? ?? '',
  authorName: json['author_name'] as String? ?? '',
  body: json['body'] as String,
  source: json['source'] as String? ?? 'mobile',
  createdAt: DateTime.parse(json['created_at'] as String),
  editedAt: json['edited_at'] == null
      ? null
      : DateTime.parse(json['edited_at'] as String),
);

Map<String, dynamic> _$CommentToJson(_Comment instance) => <String, dynamic>{
  'id': instance.id,
  'object_type': instance.objectType,
  'object_id': instance.objectId,
  'author_id': instance.authorId,
  'author_name': instance.authorName,
  'body': instance.body,
  'source': instance.source,
  'created_at': instance.createdAt.toIso8601String(),
  'edited_at': ?instance.editedAt?.toIso8601String(),
};

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
  id: json['id'] as String,
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  actorName: json['actor_name'] as String? ?? '',
  actorUserId: json['actor_user_id'] as String?,
  action: json['action'] as String,
  fromValue: json['from_value'] as String?,
  toValue: json['to_value'] as String?,
  occurredAt: DateTime.parse(json['occurred_at'] as String),
  clientRecordedAt: json['client_recorded_at'] == null
      ? null
      : DateTime.parse(json['client_recorded_at'] as String),
  source: json['source'] as String? ?? 'system',
  payload: json['payload'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
  'id': instance.id,
  'object_type': instance.objectType,
  'object_id': instance.objectId,
  'actor_name': instance.actorName,
  'actor_user_id': ?instance.actorUserId,
  'action': instance.action,
  'from_value': ?instance.fromValue,
  'to_value': ?instance.toValue,
  'occurred_at': instance.occurredAt.toIso8601String(),
  'client_recorded_at': ?instance.clientRecordedAt?.toIso8601String(),
  'source': instance.source,
  'payload': ?instance.payload,
};

_QrResolve _$QrResolveFromJson(Map<String, dynamic> json) => _QrResolve(
  objectType: json['object_type'] as String,
  objectId: json['object_id'] as String,
  deepLink: json['deep_link'] as String? ?? '',
  summary: json['summary'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$QrResolveToJson(_QrResolve instance) =>
    <String, dynamic>{
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'deep_link': instance.deepLink,
      'summary': ?instance.summary,
    };

_Problem _$ProblemFromJson(Map<String, dynamic> json) => _Problem(
  type: json['type'] as String?,
  title: json['title'] as String?,
  status: (json['status'] as num?)?.toInt(),
  detail: json['detail'] as String?,
  code: json['code'] as String?,
  requestId: json['request_id'] as String?,
  errors:
      (json['errors'] as List<dynamic>?)
          ?.map((e) => FieldError.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FieldError>[],
);

Map<String, dynamic> _$ProblemToJson(_Problem instance) => <String, dynamic>{
  'type': ?instance.type,
  'title': ?instance.title,
  'status': ?instance.status,
  'detail': ?instance.detail,
  'code': ?instance.code,
  'request_id': ?instance.requestId,
  'errors': instance.errors.map((e) => e.toJson()).toList(),
};

_FieldError _$FieldErrorFromJson(Map<String, dynamic> json) => _FieldError(
  field: json['field'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$FieldErrorToJson(_FieldError instance) =>
    <String, dynamic>{'field': ?instance.field, 'message': ?instance.message};

_Page<T> _$PageFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _Page<T>(
  data:
      (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ??
      const <Never>[],
  nextCursor: json['next_cursor'] as String?,
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$PageToJson<T>(
  _Page<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data.map(toJsonT).toList(),
  'next_cursor': ?instance.nextCursor,
  'total': ?instance.total,
};

_SearchResult _$SearchResultFromJson(Map<String, dynamic> json) =>
    _SearchResult(
      objectType: json['object_type'] as String,
      objectId: json['object_id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      businessId: json['business_id'] as String?,
      status: json['status'] as String?,
      locationPath: json['location_path'] as String?,
      propertyId: json['property_id'] as String?,
      deepLink: json['deep_link'] as String? ?? '',
      rank: (json['rank'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$SearchResultToJson(_SearchResult instance) =>
    <String, dynamic>{
      'object_type': instance.objectType,
      'object_id': instance.objectId,
      'title': instance.title,
      'subtitle': ?instance.subtitle,
      'business_id': ?instance.businessId,
      'status': ?instance.status,
      'location_path': ?instance.locationPath,
      'property_id': ?instance.propertyId,
      'deep_link': instance.deepLink,
      'rank': instance.rank,
    };
