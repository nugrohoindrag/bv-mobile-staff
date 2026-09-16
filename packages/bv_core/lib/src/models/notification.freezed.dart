// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BvNotification {

 String get id; String get type; String get title; String get body; String get severity; String? get objectType; String? get objectId; String? get objectLabel; String? get deepLink; DateTime? get readAt; DateTime get createdAt;
/// Create a copy of BvNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BvNotificationCopyWith<BvNotification> get copyWith => _$BvNotificationCopyWithImpl<BvNotification>(this as BvNotification, _$identity);

  /// Serializes this BvNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BvNotification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BvNotification&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.objectLabel, _this.objectLabel) || other.objectLabel == _this.objectLabel)&&(identical(other.deepLink, _this.deepLink) || other.deepLink == _this.deepLink)&&(identical(other.readAt, _this.readAt) || other.readAt == _this.readAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BvNotification;
  return Object.hash(runtimeType,_this.id,_this.type,_this.title,_this.body,_this.severity,_this.objectType,_this.objectId,_this.objectLabel,_this.deepLink,_this.readAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as BvNotification;
  return 'BvNotification(id: ${_this.id}, type: ${_this.type}, title: ${_this.title}, body: ${_this.body}, severity: ${_this.severity}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, objectLabel: ${_this.objectLabel}, deepLink: ${_this.deepLink}, readAt: ${_this.readAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $BvNotificationCopyWith<$Res>  {
  factory $BvNotificationCopyWith(BvNotification value, $Res Function(BvNotification) _then) = _$BvNotificationCopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, String body, String severity, String? objectType, String? objectId, String? objectLabel, String? deepLink, DateTime? readAt, DateTime createdAt
});




}
/// @nodoc
class _$BvNotificationCopyWithImpl<$Res>
    implements $BvNotificationCopyWith<$Res> {
  _$BvNotificationCopyWithImpl(this._self, this._then);

  final BvNotification _self;
  final $Res Function(BvNotification) _then;

/// Create a copy of BvNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? severity = null,Object? objectType = freezed,Object? objectId = freezed,Object? objectLabel = freezed,Object? deepLink = freezed,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(BvNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectLabel: freezed == objectLabel ? _self.objectLabel : objectLabel // ignore: cast_nullable_to_non_nullable
as String?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BvNotification].
extension BvNotificationPatterns on BvNotification {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BvNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BvNotification() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BvNotification value)  $default,){
final _that = this;
switch (_that) {
case _BvNotification():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BvNotification value)?  $default,){
final _that = this;
switch (_that) {
case _BvNotification() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String body,  String severity,  String? objectType,  String? objectId,  String? objectLabel,  String? deepLink,  DateTime? readAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BvNotification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.severity,_that.objectType,_that.objectId,_that.objectLabel,_that.deepLink,_that.readAt,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  String body,  String severity,  String? objectType,  String? objectId,  String? objectLabel,  String? deepLink,  DateTime? readAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _BvNotification():
return $default(_that.id,_that.type,_that.title,_that.body,_that.severity,_that.objectType,_that.objectId,_that.objectLabel,_that.deepLink,_that.readAt,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  String body,  String severity,  String? objectType,  String? objectId,  String? objectLabel,  String? deepLink,  DateTime? readAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BvNotification() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.body,_that.severity,_that.objectType,_that.objectId,_that.objectLabel,_that.deepLink,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BvNotification extends BvNotification {
  const _BvNotification({required this.id, required this.type, required this.title, this.body = '', this.severity = 'info', this.objectType, this.objectId, this.objectLabel, this.deepLink, this.readAt, required this.createdAt}): super._();
  factory _BvNotification.fromJson(Map<String, dynamic> json) => _$BvNotificationFromJson(json);

@override final  String id;
@override final  String type;
@override final  String title;
@override@JsonKey() final  String body;
@override@JsonKey() final  String severity;
@override final  String? objectType;
@override final  String? objectId;
@override final  String? objectLabel;
@override final  String? deepLink;
@override final  DateTime? readAt;
@override final  DateTime createdAt;

/// Create a copy of BvNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BvNotificationCopyWith<_BvNotification> get copyWith => __$BvNotificationCopyWithImpl<_BvNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BvNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BvNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.objectLabel, objectLabel) || other.objectLabel == objectLabel)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,title,body,severity,objectType,objectId,objectLabel,deepLink,readAt,createdAt);
}

@override
String toString() {
    return 'BvNotification(id: $id, type: $type, title: $title, body: $body, severity: $severity, objectType: $objectType, objectId: $objectId, objectLabel: $objectLabel, deepLink: $deepLink, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BvNotificationCopyWith<$Res> implements $BvNotificationCopyWith<$Res> {
  factory _$BvNotificationCopyWith(_BvNotification value, $Res Function(_BvNotification) _then) = __$BvNotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, String body, String severity, String? objectType, String? objectId, String? objectLabel, String? deepLink, DateTime? readAt, DateTime createdAt
});




}
/// @nodoc
class __$BvNotificationCopyWithImpl<$Res>
    implements _$BvNotificationCopyWith<$Res> {
  __$BvNotificationCopyWithImpl(this._self, this._then);

  final _BvNotification _self;
  final $Res Function(_BvNotification) _then;

/// Create a copy of BvNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? body = null,Object? severity = null,Object? objectType = freezed,Object? objectId = freezed,Object? objectLabel = freezed,Object? deepLink = freezed,Object? readAt = freezed,Object? createdAt = null,}) {
  return _then(_BvNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,objectType: freezed == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,objectLabel: freezed == objectLabel ? _self.objectLabel : objectLabel // ignore: cast_nullable_to_non_nullable
as String?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
