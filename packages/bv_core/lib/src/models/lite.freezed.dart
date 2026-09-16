// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationLite {

 String get id; String get name; String get locationType; String get pathText; String? get qrCode;
/// Create a copy of LocationLite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationLiteCopyWith<LocationLite> get copyWith => _$LocationLiteCopyWithImpl<LocationLite>(this as LocationLite, _$identity);

  /// Serializes this LocationLite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LocationLite;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationLite&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.locationType, _this.locationType) || other.locationType == _this.locationType)&&(identical(other.pathText, _this.pathText) || other.pathText == _this.pathText)&&(identical(other.qrCode, _this.qrCode) || other.qrCode == _this.qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LocationLite;
  return Object.hash(runtimeType,_this.id,_this.name,_this.locationType,_this.pathText,_this.qrCode);
}

@override
String toString() {
  final _this = this as LocationLite;
  return 'LocationLite(id: ${_this.id}, name: ${_this.name}, locationType: ${_this.locationType}, pathText: ${_this.pathText}, qrCode: ${_this.qrCode})';
}


}

/// @nodoc
abstract mixin class $LocationLiteCopyWith<$Res>  {
  factory $LocationLiteCopyWith(LocationLite value, $Res Function(LocationLite) _then) = _$LocationLiteCopyWithImpl;
@useResult
$Res call({
 String id, String name, String locationType, String pathText, String? qrCode
});




}
/// @nodoc
class _$LocationLiteCopyWithImpl<$Res>
    implements $LocationLiteCopyWith<$Res> {
  _$LocationLiteCopyWithImpl(this._self, this._then);

  final LocationLite _self;
  final $Res Function(LocationLite) _then;

/// Create a copy of LocationLite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? locationType = null,Object? pathText = null,Object? qrCode = freezed,}) {
  return _then(LocationLite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationType: null == locationType ? _self.locationType : locationType // ignore: cast_nullable_to_non_nullable
as String,pathText: null == pathText ? _self.pathText : pathText // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationLite].
extension LocationLitePatterns on LocationLite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationLite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationLite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationLite value)  $default,){
final _that = this;
switch (_that) {
case _LocationLite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationLite value)?  $default,){
final _that = this;
switch (_that) {
case _LocationLite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String locationType,  String pathText,  String? qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationLite() when $default != null:
return $default(_that.id,_that.name,_that.locationType,_that.pathText,_that.qrCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String locationType,  String pathText,  String? qrCode)  $default,) {final _that = this;
switch (_that) {
case _LocationLite():
return $default(_that.id,_that.name,_that.locationType,_that.pathText,_that.qrCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String locationType,  String pathText,  String? qrCode)?  $default,) {final _that = this;
switch (_that) {
case _LocationLite() when $default != null:
return $default(_that.id,_that.name,_that.locationType,_that.pathText,_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationLite implements LocationLite {
  const _LocationLite({required this.id, required this.name, this.locationType = '', this.pathText = '', this.qrCode});
  factory _LocationLite.fromJson(Map<String, dynamic> json) => _$LocationLiteFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String locationType;
@override@JsonKey() final  String pathText;
@override final  String? qrCode;

/// Create a copy of LocationLite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationLiteCopyWith<_LocationLite> get copyWith => __$LocationLiteCopyWithImpl<_LocationLite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationLiteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationLite&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.locationType, locationType) || other.locationType == locationType)&&(identical(other.pathText, pathText) || other.pathText == pathText)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,locationType,pathText,qrCode);
}

@override
String toString() {
    return 'LocationLite(id: $id, name: $name, locationType: $locationType, pathText: $pathText, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$LocationLiteCopyWith<$Res> implements $LocationLiteCopyWith<$Res> {
  factory _$LocationLiteCopyWith(_LocationLite value, $Res Function(_LocationLite) _then) = __$LocationLiteCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String locationType, String pathText, String? qrCode
});




}
/// @nodoc
class __$LocationLiteCopyWithImpl<$Res>
    implements _$LocationLiteCopyWith<$Res> {
  __$LocationLiteCopyWithImpl(this._self, this._then);

  final _LocationLite _self;
  final $Res Function(_LocationLite) _then;

/// Create a copy of LocationLite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? locationType = null,Object? pathText = null,Object? qrCode = freezed,}) {
  return _then(_LocationLite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationType: null == locationType ? _self.locationType : locationType // ignore: cast_nullable_to_non_nullable
as String,pathText: null == pathText ? _self.pathText : pathText // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AssetLite {

 String get id; String get assetCode; String get name; String get status; String get locationId; String? get qrCode;
/// Create a copy of AssetLite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetLiteCopyWith<AssetLite> get copyWith => _$AssetLiteCopyWithImpl<AssetLite>(this as AssetLite, _$identity);

  /// Serializes this AssetLite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AssetLite;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetLite&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.assetCode, _this.assetCode) || other.assetCode == _this.assetCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.qrCode, _this.qrCode) || other.qrCode == _this.qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AssetLite;
  return Object.hash(runtimeType,_this.id,_this.assetCode,_this.name,_this.status,_this.locationId,_this.qrCode);
}

@override
String toString() {
  final _this = this as AssetLite;
  return 'AssetLite(id: ${_this.id}, assetCode: ${_this.assetCode}, name: ${_this.name}, status: ${_this.status}, locationId: ${_this.locationId}, qrCode: ${_this.qrCode})';
}


}

/// @nodoc
abstract mixin class $AssetLiteCopyWith<$Res>  {
  factory $AssetLiteCopyWith(AssetLite value, $Res Function(AssetLite) _then) = _$AssetLiteCopyWithImpl;
@useResult
$Res call({
 String id, String assetCode, String name, String status, String locationId, String? qrCode
});




}
/// @nodoc
class _$AssetLiteCopyWithImpl<$Res>
    implements $AssetLiteCopyWith<$Res> {
  _$AssetLiteCopyWithImpl(this._self, this._then);

  final AssetLite _self;
  final $Res Function(AssetLite) _then;

/// Create a copy of AssetLite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetCode = null,Object? name = null,Object? status = null,Object? locationId = null,Object? qrCode = freezed,}) {
  return _then(AssetLite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetCode: null == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetLite].
extension AssetLitePatterns on AssetLite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetLite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetLite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetLite value)  $default,){
final _that = this;
switch (_that) {
case _AssetLite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetLite value)?  $default,){
final _that = this;
switch (_that) {
case _AssetLite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String assetCode,  String name,  String status,  String locationId,  String? qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetLite() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.locationId,_that.qrCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String assetCode,  String name,  String status,  String locationId,  String? qrCode)  $default,) {final _that = this;
switch (_that) {
case _AssetLite():
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.locationId,_that.qrCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String assetCode,  String name,  String status,  String locationId,  String? qrCode)?  $default,) {final _that = this;
switch (_that) {
case _AssetLite() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.locationId,_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetLite implements AssetLite {
  const _AssetLite({required this.id, required this.assetCode, required this.name, this.status = 'active', this.locationId = '', this.qrCode});
  factory _AssetLite.fromJson(Map<String, dynamic> json) => _$AssetLiteFromJson(json);

@override final  String id;
@override final  String assetCode;
@override final  String name;
@override@JsonKey() final  String status;
@override@JsonKey() final  String locationId;
@override final  String? qrCode;

/// Create a copy of AssetLite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetLiteCopyWith<_AssetLite> get copyWith => __$AssetLiteCopyWithImpl<_AssetLite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetLiteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetLite&&(identical(other.id, id) || other.id == id)&&(identical(other.assetCode, assetCode) || other.assetCode == assetCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,assetCode,name,status,locationId,qrCode);
}

@override
String toString() {
    return 'AssetLite(id: $id, assetCode: $assetCode, name: $name, status: $status, locationId: $locationId, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$AssetLiteCopyWith<$Res> implements $AssetLiteCopyWith<$Res> {
  factory _$AssetLiteCopyWith(_AssetLite value, $Res Function(_AssetLite) _then) = __$AssetLiteCopyWithImpl;
@override @useResult
$Res call({
 String id, String assetCode, String name, String status, String locationId, String? qrCode
});




}
/// @nodoc
class __$AssetLiteCopyWithImpl<$Res>
    implements _$AssetLiteCopyWith<$Res> {
  __$AssetLiteCopyWithImpl(this._self, this._then);

  final _AssetLite _self;
  final $Res Function(_AssetLite) _then;

/// Create a copy of AssetLite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetCode = null,Object? name = null,Object? status = null,Object? locationId = null,Object? qrCode = freezed,}) {
  return _then(_AssetLite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetCode: null == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MasterData {

 List<String> get findingCategories; List<String> get incidentCategories; List<String> get priorities; List<String> get severities; List<String> get gpsStatuses;
/// Create a copy of MasterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterDataCopyWith<MasterData> get copyWith => _$MasterDataCopyWithImpl<MasterData>(this as MasterData, _$identity);

  /// Serializes this MasterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MasterData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterData&&const DeepCollectionEquality().equals(other.findingCategories, _this.findingCategories)&&const DeepCollectionEquality().equals(other.incidentCategories, _this.incidentCategories)&&const DeepCollectionEquality().equals(other.priorities, _this.priorities)&&const DeepCollectionEquality().equals(other.severities, _this.severities)&&const DeepCollectionEquality().equals(other.gpsStatuses, _this.gpsStatuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MasterData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.findingCategories),const DeepCollectionEquality().hash(_this.incidentCategories),const DeepCollectionEquality().hash(_this.priorities),const DeepCollectionEquality().hash(_this.severities),const DeepCollectionEquality().hash(_this.gpsStatuses));
}

@override
String toString() {
  final _this = this as MasterData;
  return 'MasterData(findingCategories: ${_this.findingCategories}, incidentCategories: ${_this.incidentCategories}, priorities: ${_this.priorities}, severities: ${_this.severities}, gpsStatuses: ${_this.gpsStatuses})';
}


}

/// @nodoc
abstract mixin class $MasterDataCopyWith<$Res>  {
  factory $MasterDataCopyWith(MasterData value, $Res Function(MasterData) _then) = _$MasterDataCopyWithImpl;
@useResult
$Res call({
 List<String> findingCategories, List<String> incidentCategories, List<String> priorities, List<String> severities, List<String> gpsStatuses
});




}
/// @nodoc
class _$MasterDataCopyWithImpl<$Res>
    implements $MasterDataCopyWith<$Res> {
  _$MasterDataCopyWithImpl(this._self, this._then);

  final MasterData _self;
  final $Res Function(MasterData) _then;

/// Create a copy of MasterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? findingCategories = null,Object? incidentCategories = null,Object? priorities = null,Object? severities = null,Object? gpsStatuses = null,}) {
  return _then(MasterData(
findingCategories: null == findingCategories ? _self.findingCategories : findingCategories // ignore: cast_nullable_to_non_nullable
as List<String>,incidentCategories: null == incidentCategories ? _self.incidentCategories : incidentCategories // ignore: cast_nullable_to_non_nullable
as List<String>,priorities: null == priorities ? _self.priorities : priorities // ignore: cast_nullable_to_non_nullable
as List<String>,severities: null == severities ? _self.severities : severities // ignore: cast_nullable_to_non_nullable
as List<String>,gpsStatuses: null == gpsStatuses ? _self.gpsStatuses : gpsStatuses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MasterData].
extension MasterDataPatterns on MasterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterData value)  $default,){
final _that = this;
switch (_that) {
case _MasterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterData value)?  $default,){
final _that = this;
switch (_that) {
case _MasterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> findingCategories,  List<String> incidentCategories,  List<String> priorities,  List<String> severities,  List<String> gpsStatuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterData() when $default != null:
return $default(_that.findingCategories,_that.incidentCategories,_that.priorities,_that.severities,_that.gpsStatuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> findingCategories,  List<String> incidentCategories,  List<String> priorities,  List<String> severities,  List<String> gpsStatuses)  $default,) {final _that = this;
switch (_that) {
case _MasterData():
return $default(_that.findingCategories,_that.incidentCategories,_that.priorities,_that.severities,_that.gpsStatuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> findingCategories,  List<String> incidentCategories,  List<String> priorities,  List<String> severities,  List<String> gpsStatuses)?  $default,) {final _that = this;
switch (_that) {
case _MasterData() when $default != null:
return $default(_that.findingCategories,_that.incidentCategories,_that.priorities,_that.severities,_that.gpsStatuses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasterData implements MasterData {
  const _MasterData({ List<String> findingCategories = const <String>[],  List<String> incidentCategories = const <String>[],  List<String> priorities = const <String>['low', 'medium', 'high', 'critical'],  List<String> severities = const <String>['low', 'medium', 'high', 'critical'],  List<String> gpsStatuses = const <String>['captured', 'unavailable', 'denied']}): _findingCategories = findingCategories,_incidentCategories = incidentCategories,_priorities = priorities,_severities = severities,_gpsStatuses = gpsStatuses;
  factory _MasterData.fromJson(Map<String, dynamic> json) => _$MasterDataFromJson(json);

 final  List<String> _findingCategories;
@override@JsonKey() List<String> get findingCategories {
  if (_findingCategories is EqualUnmodifiableListView) return _findingCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_findingCategories);
}

 final  List<String> _incidentCategories;
@override@JsonKey() List<String> get incidentCategories {
  if (_incidentCategories is EqualUnmodifiableListView) return _incidentCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_incidentCategories);
}

 final  List<String> _priorities;
@override@JsonKey() List<String> get priorities {
  if (_priorities is EqualUnmodifiableListView) return _priorities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priorities);
}

 final  List<String> _severities;
@override@JsonKey() List<String> get severities {
  if (_severities is EqualUnmodifiableListView) return _severities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_severities);
}

 final  List<String> _gpsStatuses;
@override@JsonKey() List<String> get gpsStatuses {
  if (_gpsStatuses is EqualUnmodifiableListView) return _gpsStatuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gpsStatuses);
}


/// Create a copy of MasterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterDataCopyWith<_MasterData> get copyWith => __$MasterDataCopyWithImpl<_MasterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterData&&const DeepCollectionEquality().equals(other.findingCategories, _findingCategories)&&const DeepCollectionEquality().equals(other.incidentCategories, _incidentCategories)&&const DeepCollectionEquality().equals(other.priorities, _priorities)&&const DeepCollectionEquality().equals(other.severities, _severities)&&const DeepCollectionEquality().equals(other.gpsStatuses, _gpsStatuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_findingCategories),const DeepCollectionEquality().hash(_incidentCategories),const DeepCollectionEquality().hash(_priorities),const DeepCollectionEquality().hash(_severities),const DeepCollectionEquality().hash(_gpsStatuses));
}

@override
String toString() {
    return 'MasterData(findingCategories: $findingCategories, incidentCategories: $incidentCategories, priorities: $priorities, severities: $severities, gpsStatuses: $gpsStatuses)';
}


}

/// @nodoc
abstract mixin class _$MasterDataCopyWith<$Res> implements $MasterDataCopyWith<$Res> {
  factory _$MasterDataCopyWith(_MasterData value, $Res Function(_MasterData) _then) = __$MasterDataCopyWithImpl;
@override @useResult
$Res call({
 List<String> findingCategories, List<String> incidentCategories, List<String> priorities, List<String> severities, List<String> gpsStatuses
});




}
/// @nodoc
class __$MasterDataCopyWithImpl<$Res>
    implements _$MasterDataCopyWith<$Res> {
  __$MasterDataCopyWithImpl(this._self, this._then);

  final _MasterData _self;
  final $Res Function(_MasterData) _then;

/// Create a copy of MasterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? findingCategories = null,Object? incidentCategories = null,Object? priorities = null,Object? severities = null,Object? gpsStatuses = null,}) {
  return _then(_MasterData(
findingCategories: null == findingCategories ? _self._findingCategories : findingCategories // ignore: cast_nullable_to_non_nullable
as List<String>,incidentCategories: null == incidentCategories ? _self._incidentCategories : incidentCategories // ignore: cast_nullable_to_non_nullable
as List<String>,priorities: null == priorities ? _self._priorities : priorities // ignore: cast_nullable_to_non_nullable
as List<String>,severities: null == severities ? _self._severities : severities // ignore: cast_nullable_to_non_nullable
as List<String>,gpsStatuses: null == gpsStatuses ? _self._gpsStatuses : gpsStatuses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$MeLite {

 String get userId; String get fullName; List<String> get permissions; List<String> get roles; List<String> get teamIds;
/// Create a copy of MeLite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeLiteCopyWith<MeLite> get copyWith => _$MeLiteCopyWithImpl<MeLite>(this as MeLite, _$identity);

  /// Serializes this MeLite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeLite;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeLite&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&const DeepCollectionEquality().equals(other.teamIds, _this.teamIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeLite;
  return Object.hash(runtimeType,_this.userId,_this.fullName,const DeepCollectionEquality().hash(_this.permissions),const DeepCollectionEquality().hash(_this.roles),const DeepCollectionEquality().hash(_this.teamIds));
}

@override
String toString() {
  final _this = this as MeLite;
  return 'MeLite(userId: ${_this.userId}, fullName: ${_this.fullName}, permissions: ${_this.permissions}, roles: ${_this.roles}, teamIds: ${_this.teamIds})';
}


}

/// @nodoc
abstract mixin class $MeLiteCopyWith<$Res>  {
  factory $MeLiteCopyWith(MeLite value, $Res Function(MeLite) _then) = _$MeLiteCopyWithImpl;
@useResult
$Res call({
 String userId, String fullName, List<String> permissions, List<String> roles, List<String> teamIds
});




}
/// @nodoc
class _$MeLiteCopyWithImpl<$Res>
    implements $MeLiteCopyWith<$Res> {
  _$MeLiteCopyWithImpl(this._self, this._then);

  final MeLite _self;
  final $Res Function(MeLite) _then;

/// Create a copy of MeLite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? fullName = null,Object? permissions = null,Object? roles = null,Object? teamIds = null,}) {
  return _then(MeLite(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,teamIds: null == teamIds ? _self.teamIds : teamIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MeLite].
extension MeLitePatterns on MeLite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeLite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeLite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeLite value)  $default,){
final _that = this;
switch (_that) {
case _MeLite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeLite value)?  $default,){
final _that = this;
switch (_that) {
case _MeLite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String fullName,  List<String> permissions,  List<String> roles,  List<String> teamIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeLite() when $default != null:
return $default(_that.userId,_that.fullName,_that.permissions,_that.roles,_that.teamIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String fullName,  List<String> permissions,  List<String> roles,  List<String> teamIds)  $default,) {final _that = this;
switch (_that) {
case _MeLite():
return $default(_that.userId,_that.fullName,_that.permissions,_that.roles,_that.teamIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String fullName,  List<String> permissions,  List<String> roles,  List<String> teamIds)?  $default,) {final _that = this;
switch (_that) {
case _MeLite() when $default != null:
return $default(_that.userId,_that.fullName,_that.permissions,_that.roles,_that.teamIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeLite implements MeLite {
  const _MeLite({required this.userId, required this.fullName,  List<String> permissions = const <String>[],  List<String> roles = const <String>[],  List<String> teamIds = const <String>[]}): _permissions = permissions,_roles = roles,_teamIds = teamIds;
  factory _MeLite.fromJson(Map<String, dynamic> json) => _$MeLiteFromJson(json);

@override final  String userId;
@override final  String fullName;
 final  List<String> _permissions;
@override@JsonKey() List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

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


/// Create a copy of MeLite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeLiteCopyWith<_MeLite> get copyWith => __$MeLiteCopyWithImpl<_MeLite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeLiteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeLite&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&const DeepCollectionEquality().equals(other.permissions, _permissions)&&const DeepCollectionEquality().equals(other.roles, _roles)&&const DeepCollectionEquality().equals(other.teamIds, _teamIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,fullName,const DeepCollectionEquality().hash(_permissions),const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_teamIds));
}

@override
String toString() {
    return 'MeLite(userId: $userId, fullName: $fullName, permissions: $permissions, roles: $roles, teamIds: $teamIds)';
}


}

/// @nodoc
abstract mixin class _$MeLiteCopyWith<$Res> implements $MeLiteCopyWith<$Res> {
  factory _$MeLiteCopyWith(_MeLite value, $Res Function(_MeLite) _then) = __$MeLiteCopyWithImpl;
@override @useResult
$Res call({
 String userId, String fullName, List<String> permissions, List<String> roles, List<String> teamIds
});




}
/// @nodoc
class __$MeLiteCopyWithImpl<$Res>
    implements _$MeLiteCopyWith<$Res> {
  __$MeLiteCopyWithImpl(this._self, this._then);

  final _MeLite _self;
  final $Res Function(_MeLite) _then;

/// Create a copy of MeLite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? fullName = null,Object? permissions = null,Object? roles = null,Object? teamIds = null,}) {
  return _then(_MeLite(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,teamIds: null == teamIds ? _self._teamIds : teamIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Asset {

 String get id; String get assetCode; String get name; String get status; String get categoryCode; String get categoryName; String? get typeName; String get locationId; String get locationName; String get locationPath; String? get manufacturer; String? get model; String? get serialNumber; String? get criticality; String? get qrCode; String? get qrUrl; DateTime? get lastMaintenanceAt; DateTime? get nextPmDue; int get openWorkOrders; Map<String, dynamic>? get specifications; String? get notes; int get version;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Asset;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.assetCode, _this.assetCode) || other.assetCode == _this.assetCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.categoryCode, _this.categoryCode) || other.categoryCode == _this.categoryCode)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName)&&(identical(other.typeName, _this.typeName) || other.typeName == _this.typeName)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.locationName, _this.locationName) || other.locationName == _this.locationName)&&(identical(other.locationPath, _this.locationPath) || other.locationPath == _this.locationPath)&&(identical(other.manufacturer, _this.manufacturer) || other.manufacturer == _this.manufacturer)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.serialNumber, _this.serialNumber) || other.serialNumber == _this.serialNumber)&&(identical(other.criticality, _this.criticality) || other.criticality == _this.criticality)&&(identical(other.qrCode, _this.qrCode) || other.qrCode == _this.qrCode)&&(identical(other.qrUrl, _this.qrUrl) || other.qrUrl == _this.qrUrl)&&(identical(other.lastMaintenanceAt, _this.lastMaintenanceAt) || other.lastMaintenanceAt == _this.lastMaintenanceAt)&&(identical(other.nextPmDue, _this.nextPmDue) || other.nextPmDue == _this.nextPmDue)&&(identical(other.openWorkOrders, _this.openWorkOrders) || other.openWorkOrders == _this.openWorkOrders)&&const DeepCollectionEquality().equals(other.specifications, _this.specifications)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Asset;
  return Object.hashAll([runtimeType,_this.id,_this.assetCode,_this.name,_this.status,_this.categoryCode,_this.categoryName,_this.typeName,_this.locationId,_this.locationName,_this.locationPath,_this.manufacturer,_this.model,_this.serialNumber,_this.criticality,_this.qrCode,_this.qrUrl,_this.lastMaintenanceAt,_this.nextPmDue,_this.openWorkOrders,const DeepCollectionEquality().hash(_this.specifications),_this.notes,_this.version]);
}

@override
String toString() {
  final _this = this as Asset;
  return 'Asset(id: ${_this.id}, assetCode: ${_this.assetCode}, name: ${_this.name}, status: ${_this.status}, categoryCode: ${_this.categoryCode}, categoryName: ${_this.categoryName}, typeName: ${_this.typeName}, locationId: ${_this.locationId}, locationName: ${_this.locationName}, locationPath: ${_this.locationPath}, manufacturer: ${_this.manufacturer}, model: ${_this.model}, serialNumber: ${_this.serialNumber}, criticality: ${_this.criticality}, qrCode: ${_this.qrCode}, qrUrl: ${_this.qrUrl}, lastMaintenanceAt: ${_this.lastMaintenanceAt}, nextPmDue: ${_this.nextPmDue}, openWorkOrders: ${_this.openWorkOrders}, specifications: ${_this.specifications}, notes: ${_this.notes}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 String id, String assetCode, String name, String status, String categoryCode, String categoryName, String? typeName, String locationId, String locationName, String locationPath, String? manufacturer, String? model, String? serialNumber, String? criticality, String? qrCode, String? qrUrl, DateTime? lastMaintenanceAt, DateTime? nextPmDue, int openWorkOrders, Map<String, dynamic>? specifications, String? notes, int version
});




}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetCode = null,Object? name = null,Object? status = null,Object? categoryCode = null,Object? categoryName = null,Object? typeName = freezed,Object? locationId = null,Object? locationName = null,Object? locationPath = null,Object? manufacturer = freezed,Object? model = freezed,Object? serialNumber = freezed,Object? criticality = freezed,Object? qrCode = freezed,Object? qrUrl = freezed,Object? lastMaintenanceAt = freezed,Object? nextPmDue = freezed,Object? openWorkOrders = null,Object? specifications = freezed,Object? notes = freezed,Object? version = null,}) {
  return _then(Asset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetCode: null == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,locationPath: null == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,criticality: freezed == criticality ? _self.criticality : criticality // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,qrUrl: freezed == qrUrl ? _self.qrUrl : qrUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMaintenanceAt: freezed == lastMaintenanceAt ? _self.lastMaintenanceAt : lastMaintenanceAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nextPmDue: freezed == nextPmDue ? _self.nextPmDue : nextPmDue // ignore: cast_nullable_to_non_nullable
as DateTime?,openWorkOrders: null == openWorkOrders ? _self.openWorkOrders : openWorkOrders // ignore: cast_nullable_to_non_nullable
as int,specifications: freezed == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Asset].
extension AssetPatterns on Asset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Asset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Asset value)  $default,){
final _that = this;
switch (_that) {
case _Asset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Asset value)?  $default,){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String assetCode,  String name,  String status,  String categoryCode,  String categoryName,  String? typeName,  String locationId,  String locationName,  String locationPath,  String? manufacturer,  String? model,  String? serialNumber,  String? criticality,  String? qrCode,  String? qrUrl,  DateTime? lastMaintenanceAt,  DateTime? nextPmDue,  int openWorkOrders,  Map<String, dynamic>? specifications,  String? notes,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.categoryCode,_that.categoryName,_that.typeName,_that.locationId,_that.locationName,_that.locationPath,_that.manufacturer,_that.model,_that.serialNumber,_that.criticality,_that.qrCode,_that.qrUrl,_that.lastMaintenanceAt,_that.nextPmDue,_that.openWorkOrders,_that.specifications,_that.notes,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String assetCode,  String name,  String status,  String categoryCode,  String categoryName,  String? typeName,  String locationId,  String locationName,  String locationPath,  String? manufacturer,  String? model,  String? serialNumber,  String? criticality,  String? qrCode,  String? qrUrl,  DateTime? lastMaintenanceAt,  DateTime? nextPmDue,  int openWorkOrders,  Map<String, dynamic>? specifications,  String? notes,  int version)  $default,) {final _that = this;
switch (_that) {
case _Asset():
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.categoryCode,_that.categoryName,_that.typeName,_that.locationId,_that.locationName,_that.locationPath,_that.manufacturer,_that.model,_that.serialNumber,_that.criticality,_that.qrCode,_that.qrUrl,_that.lastMaintenanceAt,_that.nextPmDue,_that.openWorkOrders,_that.specifications,_that.notes,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String assetCode,  String name,  String status,  String categoryCode,  String categoryName,  String? typeName,  String locationId,  String locationName,  String locationPath,  String? manufacturer,  String? model,  String? serialNumber,  String? criticality,  String? qrCode,  String? qrUrl,  DateTime? lastMaintenanceAt,  DateTime? nextPmDue,  int openWorkOrders,  Map<String, dynamic>? specifications,  String? notes,  int version)?  $default,) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.id,_that.assetCode,_that.name,_that.status,_that.categoryCode,_that.categoryName,_that.typeName,_that.locationId,_that.locationName,_that.locationPath,_that.manufacturer,_that.model,_that.serialNumber,_that.criticality,_that.qrCode,_that.qrUrl,_that.lastMaintenanceAt,_that.nextPmDue,_that.openWorkOrders,_that.specifications,_that.notes,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Asset implements Asset {
  const _Asset({required this.id, required this.assetCode, required this.name, this.status = 'active', this.categoryCode = '', this.categoryName = '', this.typeName, this.locationId = '', this.locationName = '', this.locationPath = '', this.manufacturer, this.model, this.serialNumber, this.criticality, this.qrCode, this.qrUrl, this.lastMaintenanceAt, this.nextPmDue, this.openWorkOrders = 0,  Map<String, dynamic>? specifications, this.notes, this.version = 1}): _specifications = specifications;
  factory _Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

@override final  String id;
@override final  String assetCode;
@override final  String name;
@override@JsonKey() final  String status;
@override@JsonKey() final  String categoryCode;
@override@JsonKey() final  String categoryName;
@override final  String? typeName;
@override@JsonKey() final  String locationId;
@override@JsonKey() final  String locationName;
@override@JsonKey() final  String locationPath;
@override final  String? manufacturer;
@override final  String? model;
@override final  String? serialNumber;
@override final  String? criticality;
@override final  String? qrCode;
@override final  String? qrUrl;
@override final  DateTime? lastMaintenanceAt;
@override final  DateTime? nextPmDue;
@override@JsonKey() final  int openWorkOrders;
 final  Map<String, dynamic>? _specifications;
@override Map<String, dynamic>? get specifications {
  final value = _specifications;
  if (value == null) return null;
  if (_specifications is EqualUnmodifiableMapView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? notes;
@override@JsonKey() final  int version;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.id, id) || other.id == id)&&(identical(other.assetCode, assetCode) || other.assetCode == assetCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.categoryCode, categoryCode) || other.categoryCode == categoryCode)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.locationPath, locationPath) || other.locationPath == locationPath)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&(identical(other.model, model) || other.model == model)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.criticality, criticality) || other.criticality == criticality)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.qrUrl, qrUrl) || other.qrUrl == qrUrl)&&(identical(other.lastMaintenanceAt, lastMaintenanceAt) || other.lastMaintenanceAt == lastMaintenanceAt)&&(identical(other.nextPmDue, nextPmDue) || other.nextPmDue == nextPmDue)&&(identical(other.openWorkOrders, openWorkOrders) || other.openWorkOrders == openWorkOrders)&&const DeepCollectionEquality().equals(other.specifications, _specifications)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,assetCode,name,status,categoryCode,categoryName,typeName,locationId,locationName,locationPath,manufacturer,model,serialNumber,criticality,qrCode,qrUrl,lastMaintenanceAt,nextPmDue,openWorkOrders,const DeepCollectionEquality().hash(_specifications),notes,version]);
}

@override
String toString() {
    return 'Asset(id: $id, assetCode: $assetCode, name: $name, status: $status, categoryCode: $categoryCode, categoryName: $categoryName, typeName: $typeName, locationId: $locationId, locationName: $locationName, locationPath: $locationPath, manufacturer: $manufacturer, model: $model, serialNumber: $serialNumber, criticality: $criticality, qrCode: $qrCode, qrUrl: $qrUrl, lastMaintenanceAt: $lastMaintenanceAt, nextPmDue: $nextPmDue, openWorkOrders: $openWorkOrders, specifications: $specifications, notes: $notes, version: $version)';
}


}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 String id, String assetCode, String name, String status, String categoryCode, String categoryName, String? typeName, String locationId, String locationName, String locationPath, String? manufacturer, String? model, String? serialNumber, String? criticality, String? qrCode, String? qrUrl, DateTime? lastMaintenanceAt, DateTime? nextPmDue, int openWorkOrders, Map<String, dynamic>? specifications, String? notes, int version
});




}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetCode = null,Object? name = null,Object? status = null,Object? categoryCode = null,Object? categoryName = null,Object? typeName = freezed,Object? locationId = null,Object? locationName = null,Object? locationPath = null,Object? manufacturer = freezed,Object? model = freezed,Object? serialNumber = freezed,Object? criticality = freezed,Object? qrCode = freezed,Object? qrUrl = freezed,Object? lastMaintenanceAt = freezed,Object? nextPmDue = freezed,Object? openWorkOrders = null,Object? specifications = freezed,Object? notes = freezed,Object? version = null,}) {
  return _then(_Asset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetCode: null == assetCode ? _self.assetCode : assetCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,locationPath: null == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,criticality: freezed == criticality ? _self.criticality : criticality // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,qrUrl: freezed == qrUrl ? _self.qrUrl : qrUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMaintenanceAt: freezed == lastMaintenanceAt ? _self.lastMaintenanceAt : lastMaintenanceAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nextPmDue: freezed == nextPmDue ? _self.nextPmDue : nextPmDue // ignore: cast_nullable_to_non_nullable
as DateTime?,openWorkOrders: null == openWorkOrders ? _self.openWorkOrders : openWorkOrders // ignore: cast_nullable_to_non_nullable
as int,specifications: freezed == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TeamMember {

 String get userId; String get fullName; bool get isLead;
/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<TeamMember> get copyWith => _$TeamMemberCopyWithImpl<TeamMember>(this as TeamMember, _$identity);

  /// Serializes this TeamMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeamMember;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.isLead, _this.isLead) || other.isLead == _this.isLead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeamMember;
  return Object.hash(runtimeType,_this.userId,_this.fullName,_this.isLead);
}

@override
String toString() {
  final _this = this as TeamMember;
  return 'TeamMember(userId: ${_this.userId}, fullName: ${_this.fullName}, isLead: ${_this.isLead})';
}


}

/// @nodoc
abstract mixin class $TeamMemberCopyWith<$Res>  {
  factory $TeamMemberCopyWith(TeamMember value, $Res Function(TeamMember) _then) = _$TeamMemberCopyWithImpl;
@useResult
$Res call({
 String userId, String fullName, bool isLead
});




}
/// @nodoc
class _$TeamMemberCopyWithImpl<$Res>
    implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._self, this._then);

  final TeamMember _self;
  final $Res Function(TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? fullName = null,Object? isLead = null,}) {
  return _then(TeamMember(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isLead: null == isLead ? _self.isLead : isLead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMember].
extension TeamMemberPatterns on TeamMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMember value)  $default,){
final _that = this;
switch (_that) {
case _TeamMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMember value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String fullName,  bool isLead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.userId,_that.fullName,_that.isLead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String fullName,  bool isLead)  $default,) {final _that = this;
switch (_that) {
case _TeamMember():
return $default(_that.userId,_that.fullName,_that.isLead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String fullName,  bool isLead)?  $default,) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.userId,_that.fullName,_that.isLead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamMember implements TeamMember {
  const _TeamMember({required this.userId, required this.fullName, this.isLead = false});
  factory _TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);

@override final  String userId;
@override final  String fullName;
@override@JsonKey() final  bool isLead;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberCopyWith<_TeamMember> get copyWith => __$TeamMemberCopyWithImpl<_TeamMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamMemberToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMember&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isLead, isLead) || other.isLead == isLead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,fullName,isLead);
}

@override
String toString() {
    return 'TeamMember(userId: $userId, fullName: $fullName, isLead: $isLead)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberCopyWith<$Res> implements $TeamMemberCopyWith<$Res> {
  factory _$TeamMemberCopyWith(_TeamMember value, $Res Function(_TeamMember) _then) = __$TeamMemberCopyWithImpl;
@override @useResult
$Res call({
 String userId, String fullName, bool isLead
});




}
/// @nodoc
class __$TeamMemberCopyWithImpl<$Res>
    implements _$TeamMemberCopyWith<$Res> {
  __$TeamMemberCopyWithImpl(this._self, this._then);

  final _TeamMember _self;
  final $Res Function(_TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? fullName = null,Object? isLead = null,}) {
  return _then(_TeamMember(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isLead: null == isLead ? _self.isLead : isLead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Team {

 String get id; String get name; String get domain; String? get propertyId; bool get isActive; List<TeamMember> get members; int get version;
/// Create a copy of Team
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamCopyWith<Team> get copyWith => _$TeamCopyWithImpl<Team>(this as Team, _$identity);

  /// Serializes this Team to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Team;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Team&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.domain, _this.domain) || other.domain == _this.domain)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&const DeepCollectionEquality().equals(other.members, _this.members)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Team;
  return Object.hash(runtimeType,_this.id,_this.name,_this.domain,_this.propertyId,_this.isActive,const DeepCollectionEquality().hash(_this.members),_this.version);
}

@override
String toString() {
  final _this = this as Team;
  return 'Team(id: ${_this.id}, name: ${_this.name}, domain: ${_this.domain}, propertyId: ${_this.propertyId}, isActive: ${_this.isActive}, members: ${_this.members}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $TeamCopyWith<$Res>  {
  factory $TeamCopyWith(Team value, $Res Function(Team) _then) = _$TeamCopyWithImpl;
@useResult
$Res call({
 String id, String name, String domain, String? propertyId, bool isActive, List<TeamMember> members, int version
});




}
/// @nodoc
class _$TeamCopyWithImpl<$Res>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._self, this._then);

  final Team _self;
  final $Res Function(Team) _then;

/// Create a copy of Team
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? domain = null,Object? propertyId = freezed,Object? isActive = null,Object? members = null,Object? version = null,}) {
  return _then(Team(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,domain: null == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<TeamMember>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Team].
extension TeamPatterns on Team {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Team value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Team() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Team value)  $default,){
final _that = this;
switch (_that) {
case _Team():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Team value)?  $default,){
final _that = this;
switch (_that) {
case _Team() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String domain,  String? propertyId,  bool isActive,  List<TeamMember> members,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Team() when $default != null:
return $default(_that.id,_that.name,_that.domain,_that.propertyId,_that.isActive,_that.members,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String domain,  String? propertyId,  bool isActive,  List<TeamMember> members,  int version)  $default,) {final _that = this;
switch (_that) {
case _Team():
return $default(_that.id,_that.name,_that.domain,_that.propertyId,_that.isActive,_that.members,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String domain,  String? propertyId,  bool isActive,  List<TeamMember> members,  int version)?  $default,) {final _that = this;
switch (_that) {
case _Team() when $default != null:
return $default(_that.id,_that.name,_that.domain,_that.propertyId,_that.isActive,_that.members,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Team implements Team {
  const _Team({required this.id, required this.name, this.domain = '', this.propertyId, this.isActive = true,  List<TeamMember> members = const <TeamMember>[], this.version = 1}): _members = members;
  factory _Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String domain;
@override final  String? propertyId;
@override@JsonKey() final  bool isActive;
 final  List<TeamMember> _members;
@override@JsonKey() List<TeamMember> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override@JsonKey() final  int version;

/// Create a copy of Team
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamCopyWith<_Team> get copyWith => __$TeamCopyWithImpl<_Team>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Team&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.members, _members)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,domain,propertyId,isActive,const DeepCollectionEquality().hash(_members),version);
}

@override
String toString() {
    return 'Team(id: $id, name: $name, domain: $domain, propertyId: $propertyId, isActive: $isActive, members: $members, version: $version)';
}


}

/// @nodoc
abstract mixin class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) _then) = __$TeamCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String domain, String? propertyId, bool isActive, List<TeamMember> members, int version
});




}
/// @nodoc
class __$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(this._self, this._then);

  final _Team _self;
  final $Res Function(_Team) _then;

/// Create a copy of Team
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? domain = null,Object? propertyId = freezed,Object? isActive = null,Object? members = null,Object? version = null,}) {
  return _then(_Team(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,domain: null == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<TeamMember>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
