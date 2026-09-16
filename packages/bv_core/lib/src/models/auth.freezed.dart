// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenPair {

 String get accessToken; String? get refreshToken; String get tokenType; DateTime get accessExpiresAt; DateTime get refreshExpiresAt;
/// Create a copy of TokenPair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenPairCopyWith<TokenPair> get copyWith => _$TokenPairCopyWithImpl<TokenPair>(this as TokenPair, _$identity);

  /// Serializes this TokenPair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TokenPair;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenPair&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.tokenType, _this.tokenType) || other.tokenType == _this.tokenType)&&(identical(other.accessExpiresAt, _this.accessExpiresAt) || other.accessExpiresAt == _this.accessExpiresAt)&&(identical(other.refreshExpiresAt, _this.refreshExpiresAt) || other.refreshExpiresAt == _this.refreshExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TokenPair;
  return Object.hash(runtimeType,_this.accessToken,_this.refreshToken,_this.tokenType,_this.accessExpiresAt,_this.refreshExpiresAt);
}

@override
String toString() {
  final _this = this as TokenPair;
  return 'TokenPair(accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken}, tokenType: ${_this.tokenType}, accessExpiresAt: ${_this.accessExpiresAt}, refreshExpiresAt: ${_this.refreshExpiresAt})';
}


}

/// @nodoc
abstract mixin class $TokenPairCopyWith<$Res>  {
  factory $TokenPairCopyWith(TokenPair value, $Res Function(TokenPair) _then) = _$TokenPairCopyWithImpl;
@useResult
$Res call({
 String accessToken, String? refreshToken, String tokenType, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class _$TokenPairCopyWithImpl<$Res>
    implements $TokenPairCopyWith<$Res> {
  _$TokenPairCopyWithImpl(this._self, this._then);

  final TokenPair _self;
  final $Res Function(TokenPair) _then;

/// Create a copy of TokenPair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(TokenPair(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenPair].
extension TokenPairPatterns on TokenPair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenPair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenPair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenPair value)  $default,){
final _that = this;
switch (_that) {
case _TokenPair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenPair value)?  $default,){
final _that = this;
switch (_that) {
case _TokenPair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenPair() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _TokenPair():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _TokenPair() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenPair implements TokenPair {
  const _TokenPair({required this.accessToken, this.refreshToken, this.tokenType = 'Bearer', required this.accessExpiresAt, required this.refreshExpiresAt});
  factory _TokenPair.fromJson(Map<String, dynamic> json) => _$TokenPairFromJson(json);

@override final  String accessToken;
@override final  String? refreshToken;
@override@JsonKey() final  String tokenType;
@override final  DateTime accessExpiresAt;
@override final  DateTime refreshExpiresAt;

/// Create a copy of TokenPair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenPairCopyWith<_TokenPair> get copyWith => __$TokenPairCopyWithImpl<_TokenPair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenPairToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenPair&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,refreshToken,tokenType,accessExpiresAt,refreshExpiresAt);
}

@override
String toString() {
    return 'TokenPair(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$TokenPairCopyWith<$Res> implements $TokenPairCopyWith<$Res> {
  factory _$TokenPairCopyWith(_TokenPair value, $Res Function(_TokenPair) _then) = __$TokenPairCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String? refreshToken, String tokenType, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class __$TokenPairCopyWithImpl<$Res>
    implements _$TokenPairCopyWith<$Res> {
  __$TokenPairCopyWithImpl(this._self, this._then);

  final _TokenPair _self;
  final $Res Function(_TokenPair) _then;

/// Create a copy of TokenPair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(_TokenPair(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PropertyScope {

 String? get propertyId; List<String> get permissions;
/// Create a copy of PropertyScope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyScopeCopyWith<PropertyScope> get copyWith => _$PropertyScopeCopyWithImpl<PropertyScope>(this as PropertyScope, _$identity);

  /// Serializes this PropertyScope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PropertyScope;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyScope&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PropertyScope;
  return Object.hash(runtimeType,_this.propertyId,const DeepCollectionEquality().hash(_this.permissions));
}

@override
String toString() {
  final _this = this as PropertyScope;
  return 'PropertyScope(propertyId: ${_this.propertyId}, permissions: ${_this.permissions})';
}


}

/// @nodoc
abstract mixin class $PropertyScopeCopyWith<$Res>  {
  factory $PropertyScopeCopyWith(PropertyScope value, $Res Function(PropertyScope) _then) = _$PropertyScopeCopyWithImpl;
@useResult
$Res call({
 String? propertyId, List<String> permissions
});




}
/// @nodoc
class _$PropertyScopeCopyWithImpl<$Res>
    implements $PropertyScopeCopyWith<$Res> {
  _$PropertyScopeCopyWithImpl(this._self, this._then);

  final PropertyScope _self;
  final $Res Function(PropertyScope) _then;

/// Create a copy of PropertyScope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? propertyId = freezed,Object? permissions = null,}) {
  return _then(PropertyScope(
propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyScope].
extension PropertyScopePatterns on PropertyScope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyScope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyScope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyScope value)  $default,){
final _that = this;
switch (_that) {
case _PropertyScope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyScope value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyScope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? propertyId,  List<String> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyScope() when $default != null:
return $default(_that.propertyId,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? propertyId,  List<String> permissions)  $default,) {final _that = this;
switch (_that) {
case _PropertyScope():
return $default(_that.propertyId,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? propertyId,  List<String> permissions)?  $default,) {final _that = this;
switch (_that) {
case _PropertyScope() when $default != null:
return $default(_that.propertyId,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyScope implements PropertyScope {
  const _PropertyScope({this.propertyId,  List<String> permissions = const <String>[]}): _permissions = permissions;
  factory _PropertyScope.fromJson(Map<String, dynamic> json) => _$PropertyScopeFromJson(json);

@override final  String? propertyId;
 final  List<String> _permissions;
@override@JsonKey() List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of PropertyScope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyScopeCopyWith<_PropertyScope> get copyWith => __$PropertyScopeCopyWithImpl<_PropertyScope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyScopeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyScope&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&const DeepCollectionEquality().equals(other.permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,propertyId,const DeepCollectionEquality().hash(_permissions));
}

@override
String toString() {
    return 'PropertyScope(propertyId: $propertyId, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$PropertyScopeCopyWith<$Res> implements $PropertyScopeCopyWith<$Res> {
  factory _$PropertyScopeCopyWith(_PropertyScope value, $Res Function(_PropertyScope) _then) = __$PropertyScopeCopyWithImpl;
@override @useResult
$Res call({
 String? propertyId, List<String> permissions
});




}
/// @nodoc
class __$PropertyScopeCopyWithImpl<$Res>
    implements _$PropertyScopeCopyWith<$Res> {
  __$PropertyScopeCopyWithImpl(this._self, this._then);

  final _PropertyScope _self;
  final $Res Function(_PropertyScope) _then;

/// Create a copy of PropertyScope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? propertyId = freezed,Object? permissions = null,}) {
  return _then(_PropertyScope(
propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Me {

 String get id; String get fullName; String get organizationId; List<String> get roles; List<String> get teamIds; List<String> get leadTeamIds; List<String> get permissions; List<PropertyScope> get properties;
/// Create a copy of Me
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeCopyWith<Me> get copyWith => _$MeCopyWithImpl<Me>(this as Me, _$identity);

  /// Serializes this Me to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Me;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Me&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.organizationId, _this.organizationId) || other.organizationId == _this.organizationId)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&const DeepCollectionEquality().equals(other.teamIds, _this.teamIds)&&const DeepCollectionEquality().equals(other.leadTeamIds, _this.leadTeamIds)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions)&&const DeepCollectionEquality().equals(other.properties, _this.properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Me;
  return Object.hash(runtimeType,_this.id,_this.fullName,_this.organizationId,const DeepCollectionEquality().hash(_this.roles),const DeepCollectionEquality().hash(_this.teamIds),const DeepCollectionEquality().hash(_this.leadTeamIds),const DeepCollectionEquality().hash(_this.permissions),const DeepCollectionEquality().hash(_this.properties));
}

@override
String toString() {
  final _this = this as Me;
  return 'Me(id: ${_this.id}, fullName: ${_this.fullName}, organizationId: ${_this.organizationId}, roles: ${_this.roles}, teamIds: ${_this.teamIds}, leadTeamIds: ${_this.leadTeamIds}, permissions: ${_this.permissions}, properties: ${_this.properties})';
}


}

/// @nodoc
abstract mixin class $MeCopyWith<$Res>  {
  factory $MeCopyWith(Me value, $Res Function(Me) _then) = _$MeCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String organizationId, List<String> roles, List<String> teamIds, List<String> leadTeamIds, List<String> permissions, List<PropertyScope> properties
});




}
/// @nodoc
class _$MeCopyWithImpl<$Res>
    implements $MeCopyWith<$Res> {
  _$MeCopyWithImpl(this._self, this._then);

  final Me _self;
  final $Res Function(Me) _then;

/// Create a copy of Me
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? organizationId = null,Object? roles = null,Object? teamIds = null,Object? leadTeamIds = null,Object? permissions = null,Object? properties = null,}) {
  return _then(Me(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,teamIds: null == teamIds ? _self.teamIds : teamIds // ignore: cast_nullable_to_non_nullable
as List<String>,leadTeamIds: null == leadTeamIds ? _self.leadTeamIds : leadTeamIds // ignore: cast_nullable_to_non_nullable
as List<String>,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<PropertyScope>,
  ));
}

}


/// Adds pattern-matching-related methods to [Me].
extension MePatterns on Me {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Me value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Me() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Me value)  $default,){
final _that = this;
switch (_that) {
case _Me():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Me value)?  $default,){
final _that = this;
switch (_that) {
case _Me() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String organizationId,  List<String> roles,  List<String> teamIds,  List<String> leadTeamIds,  List<String> permissions,  List<PropertyScope> properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Me() when $default != null:
return $default(_that.id,_that.fullName,_that.organizationId,_that.roles,_that.teamIds,_that.leadTeamIds,_that.permissions,_that.properties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String organizationId,  List<String> roles,  List<String> teamIds,  List<String> leadTeamIds,  List<String> permissions,  List<PropertyScope> properties)  $default,) {final _that = this;
switch (_that) {
case _Me():
return $default(_that.id,_that.fullName,_that.organizationId,_that.roles,_that.teamIds,_that.leadTeamIds,_that.permissions,_that.properties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String organizationId,  List<String> roles,  List<String> teamIds,  List<String> leadTeamIds,  List<String> permissions,  List<PropertyScope> properties)?  $default,) {final _that = this;
switch (_that) {
case _Me() when $default != null:
return $default(_that.id,_that.fullName,_that.organizationId,_that.roles,_that.teamIds,_that.leadTeamIds,_that.permissions,_that.properties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Me implements Me {
  const _Me({required this.id, required this.fullName, this.organizationId = '',  List<String> roles = const <String>[],  List<String> teamIds = const <String>[],  List<String> leadTeamIds = const <String>[],  List<String> permissions = const <String>[],  List<PropertyScope> properties = const <PropertyScope>[]}): _roles = roles,_teamIds = teamIds,_leadTeamIds = leadTeamIds,_permissions = permissions,_properties = properties;
  factory _Me.fromJson(Map<String, dynamic> json) => _$MeFromJson(json);

@override final  String id;
@override final  String fullName;
@override@JsonKey() final  String organizationId;
 final  List<String> _roles;
@override@JsonKey() List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

 final  List<String> _teamIds;
@override@JsonKey() List<String> get teamIds {
  if (_teamIds is EqualUnmodifiableListView) return _teamIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teamIds);
}

 final  List<String> _leadTeamIds;
@override@JsonKey() List<String> get leadTeamIds {
  if (_leadTeamIds is EqualUnmodifiableListView) return _leadTeamIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leadTeamIds);
}

 final  List<String> _permissions;
@override@JsonKey() List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

 final  List<PropertyScope> _properties;
@override@JsonKey() List<PropertyScope> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}


/// Create a copy of Me
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeCopyWith<_Me> get copyWith => __$MeCopyWithImpl<_Me>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Me&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&const DeepCollectionEquality().equals(other.roles, _roles)&&const DeepCollectionEquality().equals(other.teamIds, _teamIds)&&const DeepCollectionEquality().equals(other.leadTeamIds, _leadTeamIds)&&const DeepCollectionEquality().equals(other.permissions, _permissions)&&const DeepCollectionEquality().equals(other.properties, _properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,fullName,organizationId,const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_teamIds),const DeepCollectionEquality().hash(_leadTeamIds),const DeepCollectionEquality().hash(_permissions),const DeepCollectionEquality().hash(_properties));
}

@override
String toString() {
    return 'Me(id: $id, fullName: $fullName, organizationId: $organizationId, roles: $roles, teamIds: $teamIds, leadTeamIds: $leadTeamIds, permissions: $permissions, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$MeCopyWith<$Res> implements $MeCopyWith<$Res> {
  factory _$MeCopyWith(_Me value, $Res Function(_Me) _then) = __$MeCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String organizationId, List<String> roles, List<String> teamIds, List<String> leadTeamIds, List<String> permissions, List<PropertyScope> properties
});




}
/// @nodoc
class __$MeCopyWithImpl<$Res>
    implements _$MeCopyWith<$Res> {
  __$MeCopyWithImpl(this._self, this._then);

  final _Me _self;
  final $Res Function(_Me) _then;

/// Create a copy of Me
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? organizationId = null,Object? roles = null,Object? teamIds = null,Object? leadTeamIds = null,Object? permissions = null,Object? properties = null,}) {
  return _then(_Me(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,teamIds: null == teamIds ? _self._teamIds : teamIds // ignore: cast_nullable_to_non_nullable
as List<String>,leadTeamIds: null == leadTeamIds ? _self._leadTeamIds : leadTeamIds // ignore: cast_nullable_to_non_nullable
as List<String>,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<PropertyScope>,
  ));
}


}


/// @nodoc
mixin _$LoginResponse {

 String get accessToken; String? get refreshToken; String get tokenType; DateTime get accessExpiresAt; DateTime get refreshExpiresAt; Me get user;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LoginResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.tokenType, _this.tokenType) || other.tokenType == _this.tokenType)&&(identical(other.accessExpiresAt, _this.accessExpiresAt) || other.accessExpiresAt == _this.accessExpiresAt)&&(identical(other.refreshExpiresAt, _this.refreshExpiresAt) || other.refreshExpiresAt == _this.refreshExpiresAt)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LoginResponse;
  return Object.hash(runtimeType,_this.accessToken,_this.refreshToken,_this.tokenType,_this.accessExpiresAt,_this.refreshExpiresAt,_this.user);
}

@override
String toString() {
  final _this = this as LoginResponse;
  return 'LoginResponse(accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken}, tokenType: ${_this.tokenType}, accessExpiresAt: ${_this.accessExpiresAt}, refreshExpiresAt: ${_this.refreshExpiresAt}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 String accessToken, String? refreshToken, String tokenType, DateTime accessExpiresAt, DateTime refreshExpiresAt, Me user
});


$MeCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,Object? user = null,}) {
  return _then(LoginResponse(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Me,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeCopyWith<$Res> get user {
  
  return $MeCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt,  Me user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt,  Me user)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String? refreshToken,  String tokenType,  DateTime accessExpiresAt,  DateTime refreshExpiresAt,  Me user)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.accessExpiresAt,_that.refreshExpiresAt,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse extends LoginResponse {
  const _LoginResponse({required this.accessToken, this.refreshToken, this.tokenType = 'Bearer', required this.accessExpiresAt, required this.refreshExpiresAt, required this.user}): super._();
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  String accessToken;
@override final  String? refreshToken;
@override@JsonKey() final  String tokenType;
@override final  DateTime accessExpiresAt;
@override final  DateTime refreshExpiresAt;
@override final  Me user;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,refreshToken,tokenType,accessExpiresAt,refreshExpiresAt,user);
}

@override
String toString() {
    return 'LoginResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String? refreshToken, String tokenType, DateTime accessExpiresAt, DateTime refreshExpiresAt, Me user
});


@override $MeCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,Object? user = null,}) {
  return _then(_LoginResponse(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Me,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeCopyWith<$Res> get user {
  
  return $MeCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$HealthInfo {

 String get status; DateTime? get time; String get minSupportedAppVersion;
/// Create a copy of HealthInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthInfoCopyWith<HealthInfo> get copyWith => _$HealthInfoCopyWithImpl<HealthInfo>(this as HealthInfo, _$identity);

  /// Serializes this HealthInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HealthInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthInfo&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.time, _this.time) || other.time == _this.time)&&(identical(other.minSupportedAppVersion, _this.minSupportedAppVersion) || other.minSupportedAppVersion == _this.minSupportedAppVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HealthInfo;
  return Object.hash(runtimeType,_this.status,_this.time,_this.minSupportedAppVersion);
}

@override
String toString() {
  final _this = this as HealthInfo;
  return 'HealthInfo(status: ${_this.status}, time: ${_this.time}, minSupportedAppVersion: ${_this.minSupportedAppVersion})';
}


}

/// @nodoc
abstract mixin class $HealthInfoCopyWith<$Res>  {
  factory $HealthInfoCopyWith(HealthInfo value, $Res Function(HealthInfo) _then) = _$HealthInfoCopyWithImpl;
@useResult
$Res call({
 String status, DateTime? time, String minSupportedAppVersion
});




}
/// @nodoc
class _$HealthInfoCopyWithImpl<$Res>
    implements $HealthInfoCopyWith<$Res> {
  _$HealthInfoCopyWithImpl(this._self, this._then);

  final HealthInfo _self;
  final $Res Function(HealthInfo) _then;

/// Create a copy of HealthInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? time = freezed,Object? minSupportedAppVersion = null,}) {
  return _then(HealthInfo(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime?,minSupportedAppVersion: null == minSupportedAppVersion ? _self.minSupportedAppVersion : minSupportedAppVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthInfo].
extension HealthInfoPatterns on HealthInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthInfo value)  $default,){
final _that = this;
switch (_that) {
case _HealthInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthInfo value)?  $default,){
final _that = this;
switch (_that) {
case _HealthInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  DateTime? time,  String minSupportedAppVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthInfo() when $default != null:
return $default(_that.status,_that.time,_that.minSupportedAppVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  DateTime? time,  String minSupportedAppVersion)  $default,) {final _that = this;
switch (_that) {
case _HealthInfo():
return $default(_that.status,_that.time,_that.minSupportedAppVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  DateTime? time,  String minSupportedAppVersion)?  $default,) {final _that = this;
switch (_that) {
case _HealthInfo() when $default != null:
return $default(_that.status,_that.time,_that.minSupportedAppVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthInfo implements HealthInfo {
  const _HealthInfo({this.status = 'ok', this.time, this.minSupportedAppVersion = '0.0.0'});
  factory _HealthInfo.fromJson(Map<String, dynamic> json) => _$HealthInfoFromJson(json);

@override@JsonKey() final  String status;
@override final  DateTime? time;
@override@JsonKey() final  String minSupportedAppVersion;

/// Create a copy of HealthInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthInfoCopyWith<_HealthInfo> get copyWith => __$HealthInfoCopyWithImpl<_HealthInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthInfo&&(identical(other.status, status) || other.status == status)&&(identical(other.time, time) || other.time == time)&&(identical(other.minSupportedAppVersion, minSupportedAppVersion) || other.minSupportedAppVersion == minSupportedAppVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,time,minSupportedAppVersion);
}

@override
String toString() {
    return 'HealthInfo(status: $status, time: $time, minSupportedAppVersion: $minSupportedAppVersion)';
}


}

/// @nodoc
abstract mixin class _$HealthInfoCopyWith<$Res> implements $HealthInfoCopyWith<$Res> {
  factory _$HealthInfoCopyWith(_HealthInfo value, $Res Function(_HealthInfo) _then) = __$HealthInfoCopyWithImpl;
@override @useResult
$Res call({
 String status, DateTime? time, String minSupportedAppVersion
});




}
/// @nodoc
class __$HealthInfoCopyWithImpl<$Res>
    implements _$HealthInfoCopyWith<$Res> {
  __$HealthInfoCopyWithImpl(this._self, this._then);

  final _HealthInfo _self;
  final $Res Function(_HealthInfo) _then;

/// Create a copy of HealthInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? time = freezed,Object? minSupportedAppVersion = null,}) {
  return _then(_HealthInfo(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime?,minSupportedAppVersion: null == minSupportedAppVersion ? _self.minSupportedAppVersion : minSupportedAppVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
