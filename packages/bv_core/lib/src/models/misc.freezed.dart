// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Comment {

 String get id; String get objectType; String get objectId; String get authorId; String get authorName; String get body; String get source; DateTime get createdAt; DateTime? get editedAt;
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentCopyWith<Comment> get copyWith => _$CommentCopyWithImpl<Comment>(this as Comment, _$identity);

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Comment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Comment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.authorId, _this.authorId) || other.authorId == _this.authorId)&&(identical(other.authorName, _this.authorName) || other.authorName == _this.authorName)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.editedAt, _this.editedAt) || other.editedAt == _this.editedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Comment;
  return Object.hash(runtimeType,_this.id,_this.objectType,_this.objectId,_this.authorId,_this.authorName,_this.body,_this.source,_this.createdAt,_this.editedAt);
}

@override
String toString() {
  final _this = this as Comment;
  return 'Comment(id: ${_this.id}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, authorId: ${_this.authorId}, authorName: ${_this.authorName}, body: ${_this.body}, source: ${_this.source}, createdAt: ${_this.createdAt}, editedAt: ${_this.editedAt})';
}


}

/// @nodoc
abstract mixin class $CommentCopyWith<$Res>  {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) _then) = _$CommentCopyWithImpl;
@useResult
$Res call({
 String id, String objectType, String objectId, String authorId, String authorName, String body, String source, DateTime createdAt, DateTime? editedAt
});




}
/// @nodoc
class _$CommentCopyWithImpl<$Res>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._self, this._then);

  final Comment _self;
  final $Res Function(Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? authorId = null,Object? authorName = null,Object? body = null,Object? source = null,Object? createdAt = null,Object? editedAt = freezed,}) {
  return _then(Comment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Comment].
extension CommentPatterns on Comment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Comment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Comment value)  $default,){
final _that = this;
switch (_that) {
case _Comment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Comment value)?  $default,){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String authorId,  String authorName,  String body,  String source,  DateTime createdAt,  DateTime? editedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.authorId,_that.authorName,_that.body,_that.source,_that.createdAt,_that.editedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String authorId,  String authorName,  String body,  String source,  DateTime createdAt,  DateTime? editedAt)  $default,) {final _that = this;
switch (_that) {
case _Comment():
return $default(_that.id,_that.objectType,_that.objectId,_that.authorId,_that.authorName,_that.body,_that.source,_that.createdAt,_that.editedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectType,  String objectId,  String authorId,  String authorName,  String body,  String source,  DateTime createdAt,  DateTime? editedAt)?  $default,) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.authorId,_that.authorName,_that.body,_that.source,_that.createdAt,_that.editedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Comment implements Comment {
  const _Comment({required this.id, required this.objectType, required this.objectId, this.authorId = '', this.authorName = '', required this.body, this.source = 'mobile', required this.createdAt, this.editedAt});
  factory _Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

@override final  String id;
@override final  String objectType;
@override final  String objectId;
@override@JsonKey() final  String authorId;
@override@JsonKey() final  String authorName;
@override final  String body;
@override@JsonKey() final  String source;
@override final  DateTime createdAt;
@override final  DateTime? editedAt;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentCopyWith<_Comment> get copyWith => __$CommentCopyWithImpl<_Comment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Comment&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.body, body) || other.body == body)&&(identical(other.source, source) || other.source == source)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,objectType,objectId,authorId,authorName,body,source,createdAt,editedAt);
}

@override
String toString() {
    return 'Comment(id: $id, objectType: $objectType, objectId: $objectId, authorId: $authorId, authorName: $authorName, body: $body, source: $source, createdAt: $createdAt, editedAt: $editedAt)';
}


}

/// @nodoc
abstract mixin class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) _then) = __$CommentCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectType, String objectId, String authorId, String authorName, String body, String source, DateTime createdAt, DateTime? editedAt
});




}
/// @nodoc
class __$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(this._self, this._then);

  final _Comment _self;
  final $Res Function(_Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? authorId = null,Object? authorName = null,Object? body = null,Object? source = null,Object? createdAt = null,Object? editedAt = freezed,}) {
  return _then(_Comment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Activity {

 String get id; String get objectType; String get objectId; String get actorName; String? get actorUserId; String get action; String? get fromValue; String? get toValue; DateTime get occurredAt; DateTime? get clientRecordedAt; String get source; Map<String, dynamic>? get payload;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Activity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.actorName, _this.actorName) || other.actorName == _this.actorName)&&(identical(other.actorUserId, _this.actorUserId) || other.actorUserId == _this.actorUserId)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.fromValue, _this.fromValue) || other.fromValue == _this.fromValue)&&(identical(other.toValue, _this.toValue) || other.toValue == _this.toValue)&&(identical(other.occurredAt, _this.occurredAt) || other.occurredAt == _this.occurredAt)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt)&&(identical(other.source, _this.source) || other.source == _this.source)&&const DeepCollectionEquality().equals(other.payload, _this.payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Activity;
  return Object.hash(runtimeType,_this.id,_this.objectType,_this.objectId,_this.actorName,_this.actorUserId,_this.action,_this.fromValue,_this.toValue,_this.occurredAt,_this.clientRecordedAt,_this.source,const DeepCollectionEquality().hash(_this.payload));
}

@override
String toString() {
  final _this = this as Activity;
  return 'Activity(id: ${_this.id}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, actorName: ${_this.actorName}, actorUserId: ${_this.actorUserId}, action: ${_this.action}, fromValue: ${_this.fromValue}, toValue: ${_this.toValue}, occurredAt: ${_this.occurredAt}, clientRecordedAt: ${_this.clientRecordedAt}, source: ${_this.source}, payload: ${_this.payload})';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
 String id, String objectType, String objectId, String actorName, String? actorUserId, String action, String? fromValue, String? toValue, DateTime occurredAt, DateTime? clientRecordedAt, String source, Map<String, dynamic>? payload
});




}
/// @nodoc
class _$ActivityCopyWithImpl<$Res>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? actorName = null,Object? actorUserId = freezed,Object? action = null,Object? fromValue = freezed,Object? toValue = freezed,Object? occurredAt = null,Object? clientRecordedAt = freezed,Object? source = null,Object? payload = freezed,}) {
  return _then(Activity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Activity].
extension ActivityPatterns on Activity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Activity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Activity value)  $default,){
final _that = this;
switch (_that) {
case _Activity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Activity value)?  $default,){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String actorName,  String? actorUserId,  String action,  String? fromValue,  String? toValue,  DateTime occurredAt,  DateTime? clientRecordedAt,  String source,  Map<String, dynamic>? payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.actorName,_that.actorUserId,_that.action,_that.fromValue,_that.toValue,_that.occurredAt,_that.clientRecordedAt,_that.source,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String actorName,  String? actorUserId,  String action,  String? fromValue,  String? toValue,  DateTime occurredAt,  DateTime? clientRecordedAt,  String source,  Map<String, dynamic>? payload)  $default,) {final _that = this;
switch (_that) {
case _Activity():
return $default(_that.id,_that.objectType,_that.objectId,_that.actorName,_that.actorUserId,_that.action,_that.fromValue,_that.toValue,_that.occurredAt,_that.clientRecordedAt,_that.source,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectType,  String objectId,  String actorName,  String? actorUserId,  String action,  String? fromValue,  String? toValue,  DateTime occurredAt,  DateTime? clientRecordedAt,  String source,  Map<String, dynamic>? payload)?  $default,) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.actorName,_that.actorUserId,_that.action,_that.fromValue,_that.toValue,_that.occurredAt,_that.clientRecordedAt,_that.source,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Activity implements Activity {
  const _Activity({required this.id, required this.objectType, required this.objectId, this.actorName = '', this.actorUserId, required this.action, this.fromValue, this.toValue, required this.occurredAt, this.clientRecordedAt, this.source = 'system',  Map<String, dynamic>? payload}): _payload = payload;
  factory _Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

@override final  String id;
@override final  String objectType;
@override final  String objectId;
@override@JsonKey() final  String actorName;
@override final  String? actorUserId;
@override final  String action;
@override final  String? fromValue;
@override final  String? toValue;
@override final  DateTime occurredAt;
@override final  DateTime? clientRecordedAt;
@override@JsonKey() final  String source;
 final  Map<String, dynamic>? _payload;
@override Map<String, dynamic>? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCopyWith<_Activity> get copyWith => __$ActivityCopyWithImpl<_Activity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.actorUserId, actorUserId) || other.actorUserId == actorUserId)&&(identical(other.action, action) || other.action == action)&&(identical(other.fromValue, fromValue) || other.fromValue == fromValue)&&(identical(other.toValue, toValue) || other.toValue == toValue)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.payload, _payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,objectType,objectId,actorName,actorUserId,action,fromValue,toValue,occurredAt,clientRecordedAt,source,const DeepCollectionEquality().hash(_payload));
}

@override
String toString() {
    return 'Activity(id: $id, objectType: $objectType, objectId: $objectId, actorName: $actorName, actorUserId: $actorUserId, action: $action, fromValue: $fromValue, toValue: $toValue, occurredAt: $occurredAt, clientRecordedAt: $clientRecordedAt, source: $source, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectType, String objectId, String actorName, String? actorUserId, String action, String? fromValue, String? toValue, DateTime occurredAt, DateTime? clientRecordedAt, String source, Map<String, dynamic>? payload
});




}
/// @nodoc
class __$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? actorName = null,Object? actorUserId = freezed,Object? action = null,Object? fromValue = freezed,Object? toValue = freezed,Object? occurredAt = null,Object? clientRecordedAt = freezed,Object? source = null,Object? payload = freezed,}) {
  return _then(_Activity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$QrResolve {

 String get objectType; String get objectId; String get deepLink; Map<String, dynamic>? get summary;
/// Create a copy of QrResolve
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrResolveCopyWith<QrResolve> get copyWith => _$QrResolveCopyWithImpl<QrResolve>(this as QrResolve, _$identity);

  /// Serializes this QrResolve to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as QrResolve;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrResolve&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.deepLink, _this.deepLink) || other.deepLink == _this.deepLink)&&const DeepCollectionEquality().equals(other.summary, _this.summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as QrResolve;
  return Object.hash(runtimeType,_this.objectType,_this.objectId,_this.deepLink,const DeepCollectionEquality().hash(_this.summary));
}

@override
String toString() {
  final _this = this as QrResolve;
  return 'QrResolve(objectType: ${_this.objectType}, objectId: ${_this.objectId}, deepLink: ${_this.deepLink}, summary: ${_this.summary})';
}


}

/// @nodoc
abstract mixin class $QrResolveCopyWith<$Res>  {
  factory $QrResolveCopyWith(QrResolve value, $Res Function(QrResolve) _then) = _$QrResolveCopyWithImpl;
@useResult
$Res call({
 String objectType, String objectId, String deepLink, Map<String, dynamic>? summary
});




}
/// @nodoc
class _$QrResolveCopyWithImpl<$Res>
    implements $QrResolveCopyWith<$Res> {
  _$QrResolveCopyWithImpl(this._self, this._then);

  final QrResolve _self;
  final $Res Function(QrResolve) _then;

/// Create a copy of QrResolve
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,Object? objectId = null,Object? deepLink = null,Object? summary = freezed,}) {
  return _then(QrResolve(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [QrResolve].
extension QrResolvePatterns on QrResolve {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrResolve value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrResolve() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrResolve value)  $default,){
final _that = this;
switch (_that) {
case _QrResolve():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrResolve value)?  $default,){
final _that = this;
switch (_that) {
case _QrResolve() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String deepLink,  Map<String, dynamic>? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrResolve() when $default != null:
return $default(_that.objectType,_that.objectId,_that.deepLink,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String deepLink,  Map<String, dynamic>? summary)  $default,) {final _that = this;
switch (_that) {
case _QrResolve():
return $default(_that.objectType,_that.objectId,_that.deepLink,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectType,  String objectId,  String deepLink,  Map<String, dynamic>? summary)?  $default,) {final _that = this;
switch (_that) {
case _QrResolve() when $default != null:
return $default(_that.objectType,_that.objectId,_that.deepLink,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrResolve implements QrResolve {
  const _QrResolve({required this.objectType, required this.objectId, this.deepLink = '',  Map<String, dynamic>? summary}): _summary = summary;
  factory _QrResolve.fromJson(Map<String, dynamic> json) => _$QrResolveFromJson(json);

@override final  String objectType;
@override final  String objectId;
@override@JsonKey() final  String deepLink;
 final  Map<String, dynamic>? _summary;
@override Map<String, dynamic>? get summary {
  final value = _summary;
  if (value == null) return null;
  if (_summary is EqualUnmodifiableMapView) return _summary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of QrResolve
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrResolveCopyWith<_QrResolve> get copyWith => __$QrResolveCopyWithImpl<_QrResolve>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrResolveToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrResolve&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&const DeepCollectionEquality().equals(other.summary, _summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,objectType,objectId,deepLink,const DeepCollectionEquality().hash(_summary));
}

@override
String toString() {
    return 'QrResolve(objectType: $objectType, objectId: $objectId, deepLink: $deepLink, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$QrResolveCopyWith<$Res> implements $QrResolveCopyWith<$Res> {
  factory _$QrResolveCopyWith(_QrResolve value, $Res Function(_QrResolve) _then) = __$QrResolveCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String objectId, String deepLink, Map<String, dynamic>? summary
});




}
/// @nodoc
class __$QrResolveCopyWithImpl<$Res>
    implements _$QrResolveCopyWith<$Res> {
  __$QrResolveCopyWithImpl(this._self, this._then);

  final _QrResolve _self;
  final $Res Function(_QrResolve) _then;

/// Create a copy of QrResolve
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? objectId = null,Object? deepLink = null,Object? summary = freezed,}) {
  return _then(_QrResolve(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,summary: freezed == summary ? _self._summary : summary // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$Problem {

 String? get type; String? get title; int? get status; String? get detail; String? get code; String? get requestId; List<FieldError> get errors;
/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemCopyWith<Problem> get copyWith => _$ProblemCopyWithImpl<Problem>(this as Problem, _$identity);

  /// Serializes this Problem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Problem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Problem&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.detail, _this.detail) || other.detail == _this.detail)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.requestId, _this.requestId) || other.requestId == _this.requestId)&&const DeepCollectionEquality().equals(other.errors, _this.errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Problem;
  return Object.hash(runtimeType,_this.type,_this.title,_this.status,_this.detail,_this.code,_this.requestId,const DeepCollectionEquality().hash(_this.errors));
}

@override
String toString() {
  final _this = this as Problem;
  return 'Problem(type: ${_this.type}, title: ${_this.title}, status: ${_this.status}, detail: ${_this.detail}, code: ${_this.code}, requestId: ${_this.requestId}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $ProblemCopyWith<$Res>  {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) _then) = _$ProblemCopyWithImpl;
@useResult
$Res call({
 String? type, String? title, int? status, String? detail, String? code, String? requestId, List<FieldError> errors
});




}
/// @nodoc
class _$ProblemCopyWithImpl<$Res>
    implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._self, this._then);

  final Problem _self;
  final $Res Function(Problem) _then;

/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? title = freezed,Object? status = freezed,Object? detail = freezed,Object? code = freezed,Object? requestId = freezed,Object? errors = null,}) {
  return _then(Problem(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<FieldError>,
  ));
}

}


/// Adds pattern-matching-related methods to [Problem].
extension ProblemPatterns on Problem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Problem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Problem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Problem value)  $default,){
final _that = this;
switch (_that) {
case _Problem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Problem value)?  $default,){
final _that = this;
switch (_that) {
case _Problem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  String? title,  int? status,  String? detail,  String? code,  String? requestId,  List<FieldError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Problem() when $default != null:
return $default(_that.type,_that.title,_that.status,_that.detail,_that.code,_that.requestId,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  String? title,  int? status,  String? detail,  String? code,  String? requestId,  List<FieldError> errors)  $default,) {final _that = this;
switch (_that) {
case _Problem():
return $default(_that.type,_that.title,_that.status,_that.detail,_that.code,_that.requestId,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  String? title,  int? status,  String? detail,  String? code,  String? requestId,  List<FieldError> errors)?  $default,) {final _that = this;
switch (_that) {
case _Problem() when $default != null:
return $default(_that.type,_that.title,_that.status,_that.detail,_that.code,_that.requestId,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Problem implements Problem {
  const _Problem({this.type, this.title, this.status, this.detail, this.code, this.requestId,  List<FieldError> errors = const <FieldError>[]}): _errors = errors;
  factory _Problem.fromJson(Map<String, dynamic> json) => _$ProblemFromJson(json);

@override final  String? type;
@override final  String? title;
@override final  int? status;
@override final  String? detail;
@override final  String? code;
@override final  String? requestId;
 final  List<FieldError> _errors;
@override@JsonKey() List<FieldError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemCopyWith<_Problem> get copyWith => __$ProblemCopyWithImpl<_Problem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Problem&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.code, code) || other.code == code)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,title,status,detail,code,requestId,const DeepCollectionEquality().hash(_errors));
}

@override
String toString() {
    return 'Problem(type: $type, title: $title, status: $status, detail: $detail, code: $code, requestId: $requestId, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ProblemCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$ProblemCopyWith(_Problem value, $Res Function(_Problem) _then) = __$ProblemCopyWithImpl;
@override @useResult
$Res call({
 String? type, String? title, int? status, String? detail, String? code, String? requestId, List<FieldError> errors
});




}
/// @nodoc
class __$ProblemCopyWithImpl<$Res>
    implements _$ProblemCopyWith<$Res> {
  __$ProblemCopyWithImpl(this._self, this._then);

  final _Problem _self;
  final $Res Function(_Problem) _then;

/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? title = freezed,Object? status = freezed,Object? detail = freezed,Object? code = freezed,Object? requestId = freezed,Object? errors = null,}) {
  return _then(_Problem(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<FieldError>,
  ));
}


}


/// @nodoc
mixin _$FieldError {

 String? get field; String? get message;
/// Create a copy of FieldError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldErrorCopyWith<FieldError> get copyWith => _$FieldErrorCopyWithImpl<FieldError>(this as FieldError, _$identity);

  /// Serializes this FieldError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FieldError;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldError&&(identical(other.field, _this.field) || other.field == _this.field)&&(identical(other.message, _this.message) || other.message == _this.message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FieldError;
  return Object.hash(runtimeType,_this.field,_this.message);
}

@override
String toString() {
  final _this = this as FieldError;
  return 'FieldError(field: ${_this.field}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $FieldErrorCopyWith<$Res>  {
  factory $FieldErrorCopyWith(FieldError value, $Res Function(FieldError) _then) = _$FieldErrorCopyWithImpl;
@useResult
$Res call({
 String? field, String? message
});




}
/// @nodoc
class _$FieldErrorCopyWithImpl<$Res>
    implements $FieldErrorCopyWith<$Res> {
  _$FieldErrorCopyWithImpl(this._self, this._then);

  final FieldError _self;
  final $Res Function(FieldError) _then;

/// Create a copy of FieldError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = freezed,Object? message = freezed,}) {
  return _then(FieldError(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldError].
extension FieldErrorPatterns on FieldError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldError value)  $default,){
final _that = this;
switch (_that) {
case _FieldError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldError value)?  $default,){
final _that = this;
switch (_that) {
case _FieldError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? field,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldError() when $default != null:
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? field,  String? message)  $default,) {final _that = this;
switch (_that) {
case _FieldError():
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? field,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FieldError() when $default != null:
return $default(_that.field,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldError implements FieldError {
  const _FieldError({this.field, this.message});
  factory _FieldError.fromJson(Map<String, dynamic> json) => _$FieldErrorFromJson(json);

@override final  String? field;
@override final  String? message;

/// Create a copy of FieldError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldErrorCopyWith<_FieldError> get copyWith => __$FieldErrorCopyWithImpl<_FieldError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldErrorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldError&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,field,message);
}

@override
String toString() {
    return 'FieldError(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FieldErrorCopyWith<$Res> implements $FieldErrorCopyWith<$Res> {
  factory _$FieldErrorCopyWith(_FieldError value, $Res Function(_FieldError) _then) = __$FieldErrorCopyWithImpl;
@override @useResult
$Res call({
 String? field, String? message
});




}
/// @nodoc
class __$FieldErrorCopyWithImpl<$Res>
    implements _$FieldErrorCopyWith<$Res> {
  __$FieldErrorCopyWithImpl(this._self, this._then);

  final _FieldError _self;
  final $Res Function(_FieldError) _then;

/// Create a copy of FieldError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = freezed,Object? message = freezed,}) {
  return _then(_FieldError(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Page<T> {

 List<T> get data; String? get nextCursor; int? get total;
/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageCopyWith<T, Page<T>> get copyWith => _$PageCopyWithImpl<T, Page<T>>(this as Page<T>, _$identity);

  /// Serializes this Page to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  final _this = this as Page<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Page<T>&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Page<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.nextCursor,_this.total);
}

@override
String toString() {
  final _this = this as Page<T>;
  return 'Page<$T>(data: ${_this.data}, nextCursor: ${_this.nextCursor}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $PageCopyWith<T,$Res>  {
  factory $PageCopyWith(Page<T> value, $Res Function(Page<T>) _then) = _$PageCopyWithImpl;
@useResult
$Res call({
 List<T> data, String? nextCursor, int? total
});




}
/// @nodoc
class _$PageCopyWithImpl<T,$Res>
    implements $PageCopyWith<T, $Res> {
  _$PageCopyWithImpl(this._self, this._then);

  final Page<T> _self;
  final $Res Function(Page<T>) _then;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? nextCursor = freezed,Object? total = freezed,}) {
  return _then(Page(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Page].
extension PagePatterns<T> on Page<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Page<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Page() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Page<T> value)  $default,){
final _that = this;
switch (_that) {
case _Page():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Page<T> value)?  $default,){
final _that = this;
switch (_that) {
case _Page() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  String? nextCursor,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that.data,_that.nextCursor,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  String? nextCursor,  int? total)  $default,) {final _that = this;
switch (_that) {
case _Page():
return $default(_that.data,_that.nextCursor,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  String? nextCursor,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that.data,_that.nextCursor,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _Page<T> implements Page<T> {
  const _Page({ List<T> data = const <Never>[], this.nextCursor, this.total}): _data = data;
  factory _Page.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PageFromJson(json,fromJsonT);

 final  List<T> _data;
@override@JsonKey() List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? nextCursor;
@override final  int? total;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageCopyWith<T, _Page<T>> get copyWith => __$PageCopyWithImpl<T, _Page<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PageToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Page<T>&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),nextCursor,total);
}

@override
String toString() {
    return 'Page<$T>(data: $data, nextCursor: $nextCursor, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PageCopyWith<T,$Res> implements $PageCopyWith<T, $Res> {
  factory _$PageCopyWith(_Page<T> value, $Res Function(_Page<T>) _then) = __$PageCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, String? nextCursor, int? total
});




}
/// @nodoc
class __$PageCopyWithImpl<T,$Res>
    implements _$PageCopyWith<T, $Res> {
  __$PageCopyWithImpl(this._self, this._then);

  final _Page<T> _self;
  final $Res Function(_Page<T>) _then;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? nextCursor = freezed,Object? total = freezed,}) {
  return _then(_Page<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SearchResult {

 String get objectType; String get objectId; String get title; String? get subtitle; String? get businessId; String? get status; String? get locationPath; String? get propertyId; String get deepLink; double get rank;
/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultCopyWith<SearchResult> get copyWith => _$SearchResultCopyWithImpl<SearchResult>(this as SearchResult, _$identity);

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SearchResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResult&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.businessId, _this.businessId) || other.businessId == _this.businessId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.locationPath, _this.locationPath) || other.locationPath == _this.locationPath)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.deepLink, _this.deepLink) || other.deepLink == _this.deepLink)&&(identical(other.rank, _this.rank) || other.rank == _this.rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SearchResult;
  return Object.hash(runtimeType,_this.objectType,_this.objectId,_this.title,_this.subtitle,_this.businessId,_this.status,_this.locationPath,_this.propertyId,_this.deepLink,_this.rank);
}

@override
String toString() {
  final _this = this as SearchResult;
  return 'SearchResult(objectType: ${_this.objectType}, objectId: ${_this.objectId}, title: ${_this.title}, subtitle: ${_this.subtitle}, businessId: ${_this.businessId}, status: ${_this.status}, locationPath: ${_this.locationPath}, propertyId: ${_this.propertyId}, deepLink: ${_this.deepLink}, rank: ${_this.rank})';
}


}

/// @nodoc
abstract mixin class $SearchResultCopyWith<$Res>  {
  factory $SearchResultCopyWith(SearchResult value, $Res Function(SearchResult) _then) = _$SearchResultCopyWithImpl;
@useResult
$Res call({
 String objectType, String objectId, String title, String? subtitle, String? businessId, String? status, String? locationPath, String? propertyId, String deepLink, double rank
});




}
/// @nodoc
class _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._self, this._then);

  final SearchResult _self;
  final $Res Function(SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,Object? objectId = null,Object? title = null,Object? subtitle = freezed,Object? businessId = freezed,Object? status = freezed,Object? locationPath = freezed,Object? propertyId = freezed,Object? deepLink = null,Object? rank = null,}) {
  return _then(SearchResult(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,locationPath: freezed == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResult].
extension SearchResultPatterns on SearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResult value)  $default,){
final _that = this;
switch (_that) {
case _SearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String title,  String? subtitle,  String? businessId,  String? status,  String? locationPath,  String? propertyId,  String deepLink,  double rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that.objectType,_that.objectId,_that.title,_that.subtitle,_that.businessId,_that.status,_that.locationPath,_that.propertyId,_that.deepLink,_that.rank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String title,  String? subtitle,  String? businessId,  String? status,  String? locationPath,  String? propertyId,  String deepLink,  double rank)  $default,) {final _that = this;
switch (_that) {
case _SearchResult():
return $default(_that.objectType,_that.objectId,_that.title,_that.subtitle,_that.businessId,_that.status,_that.locationPath,_that.propertyId,_that.deepLink,_that.rank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectType,  String objectId,  String title,  String? subtitle,  String? businessId,  String? status,  String? locationPath,  String? propertyId,  String deepLink,  double rank)?  $default,) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that.objectType,_that.objectId,_that.title,_that.subtitle,_that.businessId,_that.status,_that.locationPath,_that.propertyId,_that.deepLink,_that.rank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResult implements SearchResult {
  const _SearchResult({required this.objectType, required this.objectId, required this.title, this.subtitle, this.businessId, this.status, this.locationPath, this.propertyId, this.deepLink = '', this.rank = 0});
  factory _SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);

@override final  String objectType;
@override final  String objectId;
@override final  String title;
@override final  String? subtitle;
@override final  String? businessId;
@override final  String? status;
@override final  String? locationPath;
@override final  String? propertyId;
@override@JsonKey() final  String deepLink;
@override@JsonKey() final  double rank;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultCopyWith<_SearchResult> get copyWith => __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResult&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.status, status) || other.status == status)&&(identical(other.locationPath, locationPath) || other.locationPath == locationPath)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,objectType,objectId,title,subtitle,businessId,status,locationPath,propertyId,deepLink,rank);
}

@override
String toString() {
    return 'SearchResult(objectType: $objectType, objectId: $objectId, title: $title, subtitle: $subtitle, businessId: $businessId, status: $status, locationPath: $locationPath, propertyId: $propertyId, deepLink: $deepLink, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$SearchResultCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(_SearchResult value, $Res Function(_SearchResult) _then) = __$SearchResultCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String objectId, String title, String? subtitle, String? businessId, String? status, String? locationPath, String? propertyId, String deepLink, double rank
});




}
/// @nodoc
class __$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(this._self, this._then);

  final _SearchResult _self;
  final $Res Function(_SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? objectId = null,Object? title = null,Object? subtitle = freezed,Object? businessId = freezed,Object? status = freezed,Object? locationPath = freezed,Object? propertyId = freezed,Object? deepLink = null,Object? rank = null,}) {
  return _then(_SearchResult(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,locationPath: freezed == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,deepLink: null == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
