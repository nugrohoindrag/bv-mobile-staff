// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationRef {

 String? get id; String? get name; String? get pathText;
/// Create a copy of LocationRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationRefCopyWith<LocationRef> get copyWith => _$LocationRefCopyWithImpl<LocationRef>(this as LocationRef, _$identity);

  /// Serializes this LocationRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LocationRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationRef&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.pathText, _this.pathText) || other.pathText == _this.pathText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LocationRef;
  return Object.hash(runtimeType,_this.id,_this.name,_this.pathText);
}

@override
String toString() {
  final _this = this as LocationRef;
  return 'LocationRef(id: ${_this.id}, name: ${_this.name}, pathText: ${_this.pathText})';
}


}

/// @nodoc
abstract mixin class $LocationRefCopyWith<$Res>  {
  factory $LocationRefCopyWith(LocationRef value, $Res Function(LocationRef) _then) = _$LocationRefCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? pathText
});




}
/// @nodoc
class _$LocationRefCopyWithImpl<$Res>
    implements $LocationRefCopyWith<$Res> {
  _$LocationRefCopyWithImpl(this._self, this._then);

  final LocationRef _self;
  final $Res Function(LocationRef) _then;

/// Create a copy of LocationRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? pathText = freezed,}) {
  return _then(LocationRef(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pathText: freezed == pathText ? _self.pathText : pathText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationRef].
extension LocationRefPatterns on LocationRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationRef value)  $default,){
final _that = this;
switch (_that) {
case _LocationRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationRef value)?  $default,){
final _that = this;
switch (_that) {
case _LocationRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? pathText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationRef() when $default != null:
return $default(_that.id,_that.name,_that.pathText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? pathText)  $default,) {final _that = this;
switch (_that) {
case _LocationRef():
return $default(_that.id,_that.name,_that.pathText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? pathText)?  $default,) {final _that = this;
switch (_that) {
case _LocationRef() when $default != null:
return $default(_that.id,_that.name,_that.pathText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationRef implements LocationRef {
  const _LocationRef({this.id, this.name, this.pathText});
  factory _LocationRef.fromJson(Map<String, dynamic> json) => _$LocationRefFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? pathText;

/// Create a copy of LocationRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationRefCopyWith<_LocationRef> get copyWith => __$LocationRefCopyWithImpl<_LocationRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.pathText, pathText) || other.pathText == pathText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,pathText);
}

@override
String toString() {
    return 'LocationRef(id: $id, name: $name, pathText: $pathText)';
}


}

/// @nodoc
abstract mixin class _$LocationRefCopyWith<$Res> implements $LocationRefCopyWith<$Res> {
  factory _$LocationRefCopyWith(_LocationRef value, $Res Function(_LocationRef) _then) = __$LocationRefCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? pathText
});




}
/// @nodoc
class __$LocationRefCopyWithImpl<$Res>
    implements _$LocationRefCopyWith<$Res> {
  __$LocationRefCopyWithImpl(this._self, this._then);

  final _LocationRef _self;
  final $Res Function(_LocationRef) _then;

/// Create a copy of LocationRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? pathText = freezed,}) {
  return _then(_LocationRef(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pathText: freezed == pathText ? _self.pathText : pathText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AssetRef {

 String? get id; String? get assetCode; String? get name; String? get status;
/// Create a copy of AssetRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetRefCopyWith<AssetRef> get copyWith => _$AssetRefCopyWithImpl<AssetRef>(this as AssetRef, _$identity);

  /// Serializes this AssetRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AssetRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetRef&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.assetCode, _this.assetCode) || other.assetCode == _this.assetCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AssetRef;
  return Object.hash(runtimeType,_this.id,_this.assetCode,_this.name,_this.status);
}

@override
String toString() {
  final _this = this as AssetRef;
  return 'AssetRef(id: ${_this.id}, assetCode: ${_this.assetCode}, name: ${_this.name}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $AssetRefCopyWith<$Res>  {
  factory $AssetRefCopyWith(AssetRef value, $Res Function(AssetRef) _then) = _$AssetRefCopyWithImpl;
@useResult
$Res call({
 String? id, String? assetCode, String? name, String? status
});




}
/// @nodoc
class _$AssetRefCopyWithImpl<$Res>
    implements $AssetRefCopyWith<$Res> {
  _$AssetRefCopyWithImpl(this._self, this._then);

  final AssetRef _self;
  final $Res Function(AssetRef) _then;

/// Create a copy of AssetRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? assetCode = freezed,Object? name = freezed,Object? status = freezed,}) {
  return _then(AssetRef(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,assetCode: freezed == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetRef].
extension AssetRefPatterns on AssetRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetRef value)  $default,){
final _that = this;
switch (_that) {
case _AssetRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetRef value)?  $default,){
final _that = this;
switch (_that) {
case _AssetRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? assetCode,  String? name,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetRef() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? assetCode,  String? name,  String? status)  $default,) {final _that = this;
switch (_that) {
case _AssetRef():
return $default(_that.id,_that.assetCode,_that.name,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? assetCode,  String? name,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AssetRef() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetRef implements AssetRef {
  const _AssetRef({this.id, this.assetCode, this.name, this.status});
  factory _AssetRef.fromJson(Map<String, dynamic> json) => _$AssetRefFromJson(json);

@override final  String? id;
@override final  String? assetCode;
@override final  String? name;
@override final  String? status;

/// Create a copy of AssetRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetRefCopyWith<_AssetRef> get copyWith => __$AssetRefCopyWithImpl<_AssetRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetRef&&(identical(other.id, id) || other.id == id)&&(identical(other.assetCode, assetCode) || other.assetCode == assetCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,assetCode,name,status);
}

@override
String toString() {
    return 'AssetRef(id: $id, assetCode: $assetCode, name: $name, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AssetRefCopyWith<$Res> implements $AssetRefCopyWith<$Res> {
  factory _$AssetRefCopyWith(_AssetRef value, $Res Function(_AssetRef) _then) = __$AssetRefCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? assetCode, String? name, String? status
});




}
/// @nodoc
class __$AssetRefCopyWithImpl<$Res>
    implements _$AssetRefCopyWith<$Res> {
  __$AssetRefCopyWithImpl(this._self, this._then);

  final _AssetRef _self;
  final $Res Function(_AssetRef) _then;

/// Create a copy of AssetRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? assetCode = freezed,Object? name = freezed,Object? status = freezed,}) {
  return _then(_AssetRef(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,assetCode: freezed == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AssigneeRef {

 String? get userId; String? get userName; String? get teamId; String? get teamName;
/// Create a copy of AssigneeRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssigneeRefCopyWith<AssigneeRef> get copyWith => _$AssigneeRefCopyWithImpl<AssigneeRef>(this as AssigneeRef, _$identity);

  /// Serializes this AssigneeRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AssigneeRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssigneeRef&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.userName, _this.userName) || other.userName == _this.userName)&&(identical(other.teamId, _this.teamId) || other.teamId == _this.teamId)&&(identical(other.teamName, _this.teamName) || other.teamName == _this.teamName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AssigneeRef;
  return Object.hash(runtimeType,_this.userId,_this.userName,_this.teamId,_this.teamName);
}

@override
String toString() {
  final _this = this as AssigneeRef;
  return 'AssigneeRef(userId: ${_this.userId}, userName: ${_this.userName}, teamId: ${_this.teamId}, teamName: ${_this.teamName})';
}


}

/// @nodoc
abstract mixin class $AssigneeRefCopyWith<$Res>  {
  factory $AssigneeRefCopyWith(AssigneeRef value, $Res Function(AssigneeRef) _then) = _$AssigneeRefCopyWithImpl;
@useResult
$Res call({
 String? userId, String? userName, String? teamId, String? teamName
});




}
/// @nodoc
class _$AssigneeRefCopyWithImpl<$Res>
    implements $AssigneeRefCopyWith<$Res> {
  _$AssigneeRefCopyWithImpl(this._self, this._then);

  final AssigneeRef _self;
  final $Res Function(AssigneeRef) _then;

/// Create a copy of AssigneeRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? userName = freezed,Object? teamId = freezed,Object? teamName = freezed,}) {
  return _then(AssigneeRef(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,teamId: freezed == teamId ? _self.teamId : teamId // ignore: cast_nullable_to_non_nullable
as String?,teamName: freezed == teamName ? _self.teamName : teamName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssigneeRef].
extension AssigneeRefPatterns on AssigneeRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssigneeRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssigneeRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssigneeRef value)  $default,){
final _that = this;
switch (_that) {
case _AssigneeRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssigneeRef value)?  $default,){
final _that = this;
switch (_that) {
case _AssigneeRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  String? userName,  String? teamId,  String? teamName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssigneeRef() when $default != null:
return $default(_that.userId,_that.userName,_that.teamId,_that.teamName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  String? userName,  String? teamId,  String? teamName)  $default,) {final _that = this;
switch (_that) {
case _AssigneeRef():
return $default(_that.userId,_that.userName,_that.teamId,_that.teamName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  String? userName,  String? teamId,  String? teamName)?  $default,) {final _that = this;
switch (_that) {
case _AssigneeRef() when $default != null:
return $default(_that.userId,_that.userName,_that.teamId,_that.teamName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssigneeRef implements AssigneeRef {
  const _AssigneeRef({this.userId, this.userName, this.teamId, this.teamName});
  factory _AssigneeRef.fromJson(Map<String, dynamic> json) => _$AssigneeRefFromJson(json);

@override final  String? userId;
@override final  String? userName;
@override final  String? teamId;
@override final  String? teamName;

/// Create a copy of AssigneeRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssigneeRefCopyWith<_AssigneeRef> get copyWith => __$AssigneeRefCopyWithImpl<_AssigneeRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssigneeRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssigneeRef&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.teamId, teamId) || other.teamId == teamId)&&(identical(other.teamName, teamName) || other.teamName == teamName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,userName,teamId,teamName);
}

@override
String toString() {
    return 'AssigneeRef(userId: $userId, userName: $userName, teamId: $teamId, teamName: $teamName)';
}


}

/// @nodoc
abstract mixin class _$AssigneeRefCopyWith<$Res> implements $AssigneeRefCopyWith<$Res> {
  factory _$AssigneeRefCopyWith(_AssigneeRef value, $Res Function(_AssigneeRef) _then) = __$AssigneeRefCopyWithImpl;
@override @useResult
$Res call({
 String? userId, String? userName, String? teamId, String? teamName
});




}
/// @nodoc
class __$AssigneeRefCopyWithImpl<$Res>
    implements _$AssigneeRefCopyWith<$Res> {
  __$AssigneeRefCopyWithImpl(this._self, this._then);

  final _AssigneeRef _self;
  final $Res Function(_AssigneeRef) _then;

/// Create a copy of AssigneeRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? userName = freezed,Object? teamId = freezed,Object? teamName = freezed,}) {
  return _then(_AssigneeRef(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,teamId: freezed == teamId ? _self.teamId : teamId // ignore: cast_nullable_to_non_nullable
as String?,teamName: freezed == teamName ? _self.teamName : teamName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ObjectRef {

 String get objectType; String get objectId;
/// Create a copy of ObjectRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObjectRefCopyWith<ObjectRef> get copyWith => _$ObjectRefCopyWithImpl<ObjectRef>(this as ObjectRef, _$identity);

  /// Serializes this ObjectRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ObjectRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObjectRef&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ObjectRef;
  return Object.hash(runtimeType,_this.objectType,_this.objectId);
}

@override
String toString() {
  final _this = this as ObjectRef;
  return 'ObjectRef(objectType: ${_this.objectType}, objectId: ${_this.objectId})';
}


}

/// @nodoc
abstract mixin class $ObjectRefCopyWith<$Res>  {
  factory $ObjectRefCopyWith(ObjectRef value, $Res Function(ObjectRef) _then) = _$ObjectRefCopyWithImpl;
@useResult
$Res call({
 String objectType, String objectId
});




}
/// @nodoc
class _$ObjectRefCopyWithImpl<$Res>
    implements $ObjectRefCopyWith<$Res> {
  _$ObjectRefCopyWithImpl(this._self, this._then);

  final ObjectRef _self;
  final $Res Function(ObjectRef) _then;

/// Create a copy of ObjectRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,Object? objectId = null,}) {
  return _then(ObjectRef(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ObjectRef].
extension ObjectRefPatterns on ObjectRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ObjectRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ObjectRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ObjectRef value)  $default,){
final _that = this;
switch (_that) {
case _ObjectRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ObjectRef value)?  $default,){
final _that = this;
switch (_that) {
case _ObjectRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectType,  String objectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ObjectRef() when $default != null:
return $default(_that.objectType,_that.objectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectType,  String objectId)  $default,) {final _that = this;
switch (_that) {
case _ObjectRef():
return $default(_that.objectType,_that.objectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectType,  String objectId)?  $default,) {final _that = this;
switch (_that) {
case _ObjectRef() when $default != null:
return $default(_that.objectType,_that.objectId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ObjectRef implements ObjectRef {
  const _ObjectRef({required this.objectType, required this.objectId});
  factory _ObjectRef.fromJson(Map<String, dynamic> json) => _$ObjectRefFromJson(json);

@override final  String objectType;
@override final  String objectId;

/// Create a copy of ObjectRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObjectRefCopyWith<_ObjectRef> get copyWith => __$ObjectRefCopyWithImpl<_ObjectRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ObjectRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObjectRef&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,objectType,objectId);
}

@override
String toString() {
    return 'ObjectRef(objectType: $objectType, objectId: $objectId)';
}


}

/// @nodoc
abstract mixin class _$ObjectRefCopyWith<$Res> implements $ObjectRefCopyWith<$Res> {
  factory _$ObjectRefCopyWith(_ObjectRef value, $Res Function(_ObjectRef) _then) = __$ObjectRefCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String objectId
});




}
/// @nodoc
class __$ObjectRefCopyWithImpl<$Res>
    implements _$ObjectRefCopyWith<$Res> {
  __$ObjectRefCopyWithImpl(this._self, this._then);

  final _ObjectRef _self;
  final $Res Function(_ObjectRef) _then;

/// Create a copy of ObjectRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? objectId = null,}) {
  return _then(_ObjectRef(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ObjectLink {

 String get id; String get linkType; String get direction; String get objectType; String get objectId; String get label; String get title; String get status;
/// Create a copy of ObjectLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObjectLinkCopyWith<ObjectLink> get copyWith => _$ObjectLinkCopyWithImpl<ObjectLink>(this as ObjectLink, _$identity);

  /// Serializes this ObjectLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ObjectLink;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObjectLink&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.linkType, _this.linkType) || other.linkType == _this.linkType)&&(identical(other.direction, _this.direction) || other.direction == _this.direction)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ObjectLink;
  return Object.hash(runtimeType,_this.id,_this.linkType,_this.direction,_this.objectType,_this.objectId,_this.label,_this.title,_this.status);
}

@override
String toString() {
  final _this = this as ObjectLink;
  return 'ObjectLink(id: ${_this.id}, linkType: ${_this.linkType}, direction: ${_this.direction}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, label: ${_this.label}, title: ${_this.title}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $ObjectLinkCopyWith<$Res>  {
  factory $ObjectLinkCopyWith(ObjectLink value, $Res Function(ObjectLink) _then) = _$ObjectLinkCopyWithImpl;
@useResult
$Res call({
 String id, String linkType, String direction, String objectType, String objectId, String label, String title, String status
});




}
/// @nodoc
class _$ObjectLinkCopyWithImpl<$Res>
    implements $ObjectLinkCopyWith<$Res> {
  _$ObjectLinkCopyWithImpl(this._self, this._then);

  final ObjectLink _self;
  final $Res Function(ObjectLink) _then;

/// Create a copy of ObjectLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? linkType = null,Object? direction = null,Object? objectType = null,Object? objectId = null,Object? label = null,Object? title = null,Object? status = null,}) {
  return _then(ObjectLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,linkType: null == linkType ? _self.linkType : linkType // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ObjectLink].
extension ObjectLinkPatterns on ObjectLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ObjectLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ObjectLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ObjectLink value)  $default,){
final _that = this;
switch (_that) {
case _ObjectLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ObjectLink value)?  $default,){
final _that = this;
switch (_that) {
case _ObjectLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String linkType,  String direction,  String objectType,  String objectId,  String label,  String title,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ObjectLink() when $default != null:
return $default(_that.id,_that.linkType,_that.direction,_that.objectType,_that.objectId,_that.label,_that.title,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String linkType,  String direction,  String objectType,  String objectId,  String label,  String title,  String status)  $default,) {final _that = this;
switch (_that) {
case _ObjectLink():
return $default(_that.id,_that.linkType,_that.direction,_that.objectType,_that.objectId,_that.label,_that.title,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String linkType,  String direction,  String objectType,  String objectId,  String label,  String title,  String status)?  $default,) {final _that = this;
switch (_that) {
case _ObjectLink() when $default != null:
return $default(_that.id,_that.linkType,_that.direction,_that.objectType,_that.objectId,_that.label,_that.title,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ObjectLink implements ObjectLink {
  const _ObjectLink({required this.id, required this.linkType, required this.direction, required this.objectType, required this.objectId, required this.label, required this.title, required this.status});
  factory _ObjectLink.fromJson(Map<String, dynamic> json) => _$ObjectLinkFromJson(json);

@override final  String id;
@override final  String linkType;
@override final  String direction;
@override final  String objectType;
@override final  String objectId;
@override final  String label;
@override final  String title;
@override final  String status;

/// Create a copy of ObjectLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObjectLinkCopyWith<_ObjectLink> get copyWith => __$ObjectLinkCopyWithImpl<_ObjectLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ObjectLinkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObjectLink&&(identical(other.id, id) || other.id == id)&&(identical(other.linkType, linkType) || other.linkType == linkType)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.label, label) || other.label == label)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,linkType,direction,objectType,objectId,label,title,status);
}

@override
String toString() {
    return 'ObjectLink(id: $id, linkType: $linkType, direction: $direction, objectType: $objectType, objectId: $objectId, label: $label, title: $title, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ObjectLinkCopyWith<$Res> implements $ObjectLinkCopyWith<$Res> {
  factory _$ObjectLinkCopyWith(_ObjectLink value, $Res Function(_ObjectLink) _then) = __$ObjectLinkCopyWithImpl;
@override @useResult
$Res call({
 String id, String linkType, String direction, String objectType, String objectId, String label, String title, String status
});




}
/// @nodoc
class __$ObjectLinkCopyWithImpl<$Res>
    implements _$ObjectLinkCopyWith<$Res> {
  __$ObjectLinkCopyWithImpl(this._self, this._then);

  final _ObjectLink _self;
  final $Res Function(_ObjectLink) _then;

/// Create a copy of ObjectLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? linkType = null,Object? direction = null,Object? objectType = null,Object? objectId = null,Object? label = null,Object? title = null,Object? status = null,}) {
  return _then(_ObjectLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,linkType: null == linkType ? _self.linkType : linkType // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LinkRef {

 String get objectType; String get objectId; String? get linkType;
/// Create a copy of LinkRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkRefCopyWith<LinkRef> get copyWith => _$LinkRefCopyWithImpl<LinkRef>(this as LinkRef, _$identity);

  /// Serializes this LinkRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LinkRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkRef&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.linkType, _this.linkType) || other.linkType == _this.linkType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LinkRef;
  return Object.hash(runtimeType,_this.objectType,_this.objectId,_this.linkType);
}

@override
String toString() {
  final _this = this as LinkRef;
  return 'LinkRef(objectType: ${_this.objectType}, objectId: ${_this.objectId}, linkType: ${_this.linkType})';
}


}

/// @nodoc
abstract mixin class $LinkRefCopyWith<$Res>  {
  factory $LinkRefCopyWith(LinkRef value, $Res Function(LinkRef) _then) = _$LinkRefCopyWithImpl;
@useResult
$Res call({
 String objectType, String objectId, String? linkType
});




}
/// @nodoc
class _$LinkRefCopyWithImpl<$Res>
    implements $LinkRefCopyWith<$Res> {
  _$LinkRefCopyWithImpl(this._self, this._then);

  final LinkRef _self;
  final $Res Function(LinkRef) _then;

/// Create a copy of LinkRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,Object? objectId = null,Object? linkType = freezed,}) {
  return _then(LinkRef(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,linkType: freezed == linkType ? _self.linkType : linkType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkRef].
extension LinkRefPatterns on LinkRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkRef value)  $default,){
final _that = this;
switch (_that) {
case _LinkRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkRef value)?  $default,){
final _that = this;
switch (_that) {
case _LinkRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String? linkType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkRef() when $default != null:
return $default(_that.objectType,_that.objectId,_that.linkType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String? linkType)  $default,) {final _that = this;
switch (_that) {
case _LinkRef():
return $default(_that.objectType,_that.objectId,_that.linkType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectType,  String objectId,  String? linkType)?  $default,) {final _that = this;
switch (_that) {
case _LinkRef() when $default != null:
return $default(_that.objectType,_that.objectId,_that.linkType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkRef implements LinkRef {
  const _LinkRef({required this.objectType, required this.objectId, this.linkType});
  factory _LinkRef.fromJson(Map<String, dynamic> json) => _$LinkRefFromJson(json);

@override final  String objectType;
@override final  String objectId;
@override final  String? linkType;

/// Create a copy of LinkRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkRefCopyWith<_LinkRef> get copyWith => __$LinkRefCopyWithImpl<_LinkRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkRef&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.linkType, linkType) || other.linkType == linkType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,objectType,objectId,linkType);
}

@override
String toString() {
    return 'LinkRef(objectType: $objectType, objectId: $objectId, linkType: $linkType)';
}


}

/// @nodoc
abstract mixin class _$LinkRefCopyWith<$Res> implements $LinkRefCopyWith<$Res> {
  factory _$LinkRefCopyWith(_LinkRef value, $Res Function(_LinkRef) _then) = __$LinkRefCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String objectId, String? linkType
});




}
/// @nodoc
class __$LinkRefCopyWithImpl<$Res>
    implements _$LinkRefCopyWith<$Res> {
  __$LinkRefCopyWithImpl(this._self, this._then);

  final _LinkRef _self;
  final $Res Function(_LinkRef) _then;

/// Create a copy of LinkRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? objectId = null,Object? linkType = freezed,}) {
  return _then(_LinkRef(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,linkType: freezed == linkType ? _self.linkType : linkType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Money {

 String get currencyCode; int get amount;
/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyCopyWith<Money> get copyWith => _$MoneyCopyWithImpl<Money>(this as Money, _$identity);

  /// Serializes this Money to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Money;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Money&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Money;
  return Object.hash(runtimeType,_this.currencyCode,_this.amount);
}

@override
String toString() {
  final _this = this as Money;
  return 'Money(currencyCode: ${_this.currencyCode}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $MoneyCopyWith<$Res>  {
  factory $MoneyCopyWith(Money value, $Res Function(Money) _then) = _$MoneyCopyWithImpl;
@useResult
$Res call({
 String currencyCode, int amount
});




}
/// @nodoc
class _$MoneyCopyWithImpl<$Res>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._self, this._then);

  final Money _self;
  final $Res Function(Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencyCode = null,Object? amount = null,}) {
  return _then(Money(
currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Money].
extension MoneyPatterns on Money {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Money value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Money() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Money value)  $default,){
final _that = this;
switch (_that) {
case _Money():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Money value)?  $default,){
final _that = this;
switch (_that) {
case _Money() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currencyCode,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that.currencyCode,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currencyCode,  int amount)  $default,) {final _that = this;
switch (_that) {
case _Money():
return $default(_that.currencyCode,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currencyCode,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that.currencyCode,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Money implements Money {
  const _Money({required this.currencyCode, required this.amount});
  factory _Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

@override final  String currencyCode;
@override final  int amount;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyCopyWith<_Money> get copyWith => __$MoneyCopyWithImpl<_Money>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoneyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Money&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,currencyCode,amount);
}

@override
String toString() {
    return 'Money(currencyCode: $currencyCode, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$MoneyCopyWith(_Money value, $Res Function(_Money) _then) = __$MoneyCopyWithImpl;
@override @useResult
$Res call({
 String currencyCode, int amount
});




}
/// @nodoc
class __$MoneyCopyWithImpl<$Res>
    implements _$MoneyCopyWith<$Res> {
  __$MoneyCopyWithImpl(this._self, this._then);

  final _Money _self;
  final $Res Function(_Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencyCode = null,Object? amount = null,}) {
  return _then(_Money(
currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SlaInfo {

 String? get policyId; DateTime? get responseDueAt; DateTime? get resolutionDueAt; DateTime? get respondedAt; DateTime? get resolvedAt; DateTime? get slaRiskAt; DateTime? get slaBreachedAt; DateTime? get escalatedAt; int? get elapsedPct; int? get remainingMinutes;
/// Create a copy of SlaInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlaInfoCopyWith<SlaInfo> get copyWith => _$SlaInfoCopyWithImpl<SlaInfo>(this as SlaInfo, _$identity);

  /// Serializes this SlaInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SlaInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlaInfo&&(identical(other.policyId, _this.policyId) || other.policyId == _this.policyId)&&(identical(other.responseDueAt, _this.responseDueAt) || other.responseDueAt == _this.responseDueAt)&&(identical(other.resolutionDueAt, _this.resolutionDueAt) || other.resolutionDueAt == _this.resolutionDueAt)&&(identical(other.respondedAt, _this.respondedAt) || other.respondedAt == _this.respondedAt)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.slaRiskAt, _this.slaRiskAt) || other.slaRiskAt == _this.slaRiskAt)&&(identical(other.slaBreachedAt, _this.slaBreachedAt) || other.slaBreachedAt == _this.slaBreachedAt)&&(identical(other.escalatedAt, _this.escalatedAt) || other.escalatedAt == _this.escalatedAt)&&(identical(other.elapsedPct, _this.elapsedPct) || other.elapsedPct == _this.elapsedPct)&&(identical(other.remainingMinutes, _this.remainingMinutes) || other.remainingMinutes == _this.remainingMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SlaInfo;
  return Object.hash(runtimeType,_this.policyId,_this.responseDueAt,_this.resolutionDueAt,_this.respondedAt,_this.resolvedAt,_this.slaRiskAt,_this.slaBreachedAt,_this.escalatedAt,_this.elapsedPct,_this.remainingMinutes);
}

@override
String toString() {
  final _this = this as SlaInfo;
  return 'SlaInfo(policyId: ${_this.policyId}, responseDueAt: ${_this.responseDueAt}, resolutionDueAt: ${_this.resolutionDueAt}, respondedAt: ${_this.respondedAt}, resolvedAt: ${_this.resolvedAt}, slaRiskAt: ${_this.slaRiskAt}, slaBreachedAt: ${_this.slaBreachedAt}, escalatedAt: ${_this.escalatedAt}, elapsedPct: ${_this.elapsedPct}, remainingMinutes: ${_this.remainingMinutes})';
}


}

/// @nodoc
abstract mixin class $SlaInfoCopyWith<$Res>  {
  factory $SlaInfoCopyWith(SlaInfo value, $Res Function(SlaInfo) _then) = _$SlaInfoCopyWithImpl;
@useResult
$Res call({
 String? policyId, DateTime? responseDueAt, DateTime? resolutionDueAt, DateTime? respondedAt, DateTime? resolvedAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, DateTime? escalatedAt, int? elapsedPct, int? remainingMinutes
});




}
/// @nodoc
class _$SlaInfoCopyWithImpl<$Res>
    implements $SlaInfoCopyWith<$Res> {
  _$SlaInfoCopyWithImpl(this._self, this._then);

  final SlaInfo _self;
  final $Res Function(SlaInfo) _then;

/// Create a copy of SlaInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? policyId = freezed,Object? responseDueAt = freezed,Object? resolutionDueAt = freezed,Object? respondedAt = freezed,Object? resolvedAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? escalatedAt = freezed,Object? elapsedPct = freezed,Object? remainingMinutes = freezed,}) {
  return _then(SlaInfo(
policyId: freezed == policyId ? _self.policyId : policyId // ignore: cast_nullable_to_non_nullable
as String?,responseDueAt: freezed == responseDueAt ? _self.responseDueAt : responseDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolutionDueAt: freezed == resolutionDueAt ? _self.resolutionDueAt : resolutionDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,escalatedAt: freezed == escalatedAt ? _self.escalatedAt : escalatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,elapsedPct: freezed == elapsedPct ? _self.elapsedPct : elapsedPct // ignore: cast_nullable_to_non_nullable
as int?,remainingMinutes: freezed == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SlaInfo].
extension SlaInfoPatterns on SlaInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlaInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlaInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlaInfo value)  $default,){
final _that = this;
switch (_that) {
case _SlaInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlaInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SlaInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? policyId,  DateTime? responseDueAt,  DateTime? resolutionDueAt,  DateTime? respondedAt,  DateTime? resolvedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  DateTime? escalatedAt,  int? elapsedPct,  int? remainingMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlaInfo() when $default != null:
return $default(_that.policyId,_that.responseDueAt,_that.resolutionDueAt,_that.respondedAt,_that.resolvedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.escalatedAt,_that.elapsedPct,_that.remainingMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? policyId,  DateTime? responseDueAt,  DateTime? resolutionDueAt,  DateTime? respondedAt,  DateTime? resolvedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  DateTime? escalatedAt,  int? elapsedPct,  int? remainingMinutes)  $default,) {final _that = this;
switch (_that) {
case _SlaInfo():
return $default(_that.policyId,_that.responseDueAt,_that.resolutionDueAt,_that.respondedAt,_that.resolvedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.escalatedAt,_that.elapsedPct,_that.remainingMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? policyId,  DateTime? responseDueAt,  DateTime? resolutionDueAt,  DateTime? respondedAt,  DateTime? resolvedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  DateTime? escalatedAt,  int? elapsedPct,  int? remainingMinutes)?  $default,) {final _that = this;
switch (_that) {
case _SlaInfo() when $default != null:
return $default(_that.policyId,_that.responseDueAt,_that.resolutionDueAt,_that.respondedAt,_that.resolvedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.escalatedAt,_that.elapsedPct,_that.remainingMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SlaInfo implements SlaInfo {
  const _SlaInfo({this.policyId, this.responseDueAt, this.resolutionDueAt, this.respondedAt, this.resolvedAt, this.slaRiskAt, this.slaBreachedAt, this.escalatedAt, this.elapsedPct, this.remainingMinutes});
  factory _SlaInfo.fromJson(Map<String, dynamic> json) => _$SlaInfoFromJson(json);

@override final  String? policyId;
@override final  DateTime? responseDueAt;
@override final  DateTime? resolutionDueAt;
@override final  DateTime? respondedAt;
@override final  DateTime? resolvedAt;
@override final  DateTime? slaRiskAt;
@override final  DateTime? slaBreachedAt;
@override final  DateTime? escalatedAt;
@override final  int? elapsedPct;
@override final  int? remainingMinutes;

/// Create a copy of SlaInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlaInfoCopyWith<_SlaInfo> get copyWith => __$SlaInfoCopyWithImpl<_SlaInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SlaInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlaInfo&&(identical(other.policyId, policyId) || other.policyId == policyId)&&(identical(other.responseDueAt, responseDueAt) || other.responseDueAt == responseDueAt)&&(identical(other.resolutionDueAt, resolutionDueAt) || other.resolutionDueAt == resolutionDueAt)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.slaRiskAt, slaRiskAt) || other.slaRiskAt == slaRiskAt)&&(identical(other.slaBreachedAt, slaBreachedAt) || other.slaBreachedAt == slaBreachedAt)&&(identical(other.escalatedAt, escalatedAt) || other.escalatedAt == escalatedAt)&&(identical(other.elapsedPct, elapsedPct) || other.elapsedPct == elapsedPct)&&(identical(other.remainingMinutes, remainingMinutes) || other.remainingMinutes == remainingMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,policyId,responseDueAt,resolutionDueAt,respondedAt,resolvedAt,slaRiskAt,slaBreachedAt,escalatedAt,elapsedPct,remainingMinutes);
}

@override
String toString() {
    return 'SlaInfo(policyId: $policyId, responseDueAt: $responseDueAt, resolutionDueAt: $resolutionDueAt, respondedAt: $respondedAt, resolvedAt: $resolvedAt, slaRiskAt: $slaRiskAt, slaBreachedAt: $slaBreachedAt, escalatedAt: $escalatedAt, elapsedPct: $elapsedPct, remainingMinutes: $remainingMinutes)';
}


}

/// @nodoc
abstract mixin class _$SlaInfoCopyWith<$Res> implements $SlaInfoCopyWith<$Res> {
  factory _$SlaInfoCopyWith(_SlaInfo value, $Res Function(_SlaInfo) _then) = __$SlaInfoCopyWithImpl;
@override @useResult
$Res call({
 String? policyId, DateTime? responseDueAt, DateTime? resolutionDueAt, DateTime? respondedAt, DateTime? resolvedAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, DateTime? escalatedAt, int? elapsedPct, int? remainingMinutes
});




}
/// @nodoc
class __$SlaInfoCopyWithImpl<$Res>
    implements _$SlaInfoCopyWith<$Res> {
  __$SlaInfoCopyWithImpl(this._self, this._then);

  final _SlaInfo _self;
  final $Res Function(_SlaInfo) _then;

/// Create a copy of SlaInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? policyId = freezed,Object? responseDueAt = freezed,Object? resolutionDueAt = freezed,Object? respondedAt = freezed,Object? resolvedAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? escalatedAt = freezed,Object? elapsedPct = freezed,Object? remainingMinutes = freezed,}) {
  return _then(_SlaInfo(
policyId: freezed == policyId ? _self.policyId : policyId // ignore: cast_nullable_to_non_nullable
as String?,responseDueAt: freezed == responseDueAt ? _self.responseDueAt : responseDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolutionDueAt: freezed == resolutionDueAt ? _self.resolutionDueAt : resolutionDueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,escalatedAt: freezed == escalatedAt ? _self.escalatedAt : escalatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,elapsedPct: freezed == elapsedPct ? _self.elapsedPct : elapsedPct // ignore: cast_nullable_to_non_nullable
as int?,remainingMinutes: freezed == remainingMinutes ? _self.remainingMinutes : remainingMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
