// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Finding {

 String get id; String get propertyId; String get findingNumber; String get findingType; String get title; String? get description; String? get category; String get severity; String get status; LocationRef get location; AssetRef get asset; String? get sourceType; String? get sourceId; String get sourceLabel; DateTime? get reportedAt; String? get reportedBy; String? get reportedByName; String? get resolution; DateTime? get resolvedAt; DateTime? get closedAt; DateTime? get escalatedAt; int get attachmentCount; List<ObjectLink> get links; List<String> get allowedActions; DateTime? get createdAt; int get version;
/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindingCopyWith<Finding> get copyWith => _$FindingCopyWithImpl<Finding>(this as Finding, _$identity);

  /// Serializes this Finding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Finding;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Finding&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.findingNumber, _this.findingNumber) || other.findingNumber == _this.findingNumber)&&(identical(other.findingType, _this.findingType) || other.findingType == _this.findingType)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.asset, _this.asset) || other.asset == _this.asset)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.sourceLabel, _this.sourceLabel) || other.sourceLabel == _this.sourceLabel)&&(identical(other.reportedAt, _this.reportedAt) || other.reportedAt == _this.reportedAt)&&(identical(other.reportedBy, _this.reportedBy) || other.reportedBy == _this.reportedBy)&&(identical(other.reportedByName, _this.reportedByName) || other.reportedByName == _this.reportedByName)&&(identical(other.resolution, _this.resolution) || other.resolution == _this.resolution)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.escalatedAt, _this.escalatedAt) || other.escalatedAt == _this.escalatedAt)&&(identical(other.attachmentCount, _this.attachmentCount) || other.attachmentCount == _this.attachmentCount)&&const DeepCollectionEquality().equals(other.links, _this.links)&&const DeepCollectionEquality().equals(other.allowedActions, _this.allowedActions)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Finding;
  return Object.hashAll([runtimeType,_this.id,_this.propertyId,_this.findingNumber,_this.findingType,_this.title,_this.description,_this.category,_this.severity,_this.status,_this.location,_this.asset,_this.sourceType,_this.sourceId,_this.sourceLabel,_this.reportedAt,_this.reportedBy,_this.reportedByName,_this.resolution,_this.resolvedAt,_this.closedAt,_this.escalatedAt,_this.attachmentCount,const DeepCollectionEquality().hash(_this.links),const DeepCollectionEquality().hash(_this.allowedActions),_this.createdAt,_this.version]);
}

@override
String toString() {
  final _this = this as Finding;
  return 'Finding(id: ${_this.id}, propertyId: ${_this.propertyId}, findingNumber: ${_this.findingNumber}, findingType: ${_this.findingType}, title: ${_this.title}, description: ${_this.description}, category: ${_this.category}, severity: ${_this.severity}, status: ${_this.status}, location: ${_this.location}, asset: ${_this.asset}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, sourceLabel: ${_this.sourceLabel}, reportedAt: ${_this.reportedAt}, reportedBy: ${_this.reportedBy}, reportedByName: ${_this.reportedByName}, resolution: ${_this.resolution}, resolvedAt: ${_this.resolvedAt}, closedAt: ${_this.closedAt}, escalatedAt: ${_this.escalatedAt}, attachmentCount: ${_this.attachmentCount}, links: ${_this.links}, allowedActions: ${_this.allowedActions}, createdAt: ${_this.createdAt}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $FindingCopyWith<$Res>  {
  factory $FindingCopyWith(Finding value, $Res Function(Finding) _then) = _$FindingCopyWithImpl;
@useResult
$Res call({
 String id, String propertyId, String findingNumber, String findingType, String title, String? description, String? category, String severity, String status, LocationRef location, AssetRef asset, String? sourceType, String? sourceId, String sourceLabel, DateTime? reportedAt, String? reportedBy, String? reportedByName, String? resolution, DateTime? resolvedAt, DateTime? closedAt, DateTime? escalatedAt, int attachmentCount, List<ObjectLink> links, List<String> allowedActions, DateTime? createdAt, int version
});


$LocationRefCopyWith<$Res> get location;$AssetRefCopyWith<$Res> get asset;

}
/// @nodoc
class _$FindingCopyWithImpl<$Res>
    implements $FindingCopyWith<$Res> {
  _$FindingCopyWithImpl(this._self, this._then);

  final Finding _self;
  final $Res Function(Finding) _then;

/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? propertyId = null,Object? findingNumber = null,Object? findingType = null,Object? title = null,Object? description = freezed,Object? category = freezed,Object? severity = null,Object? status = null,Object? location = null,Object? asset = null,Object? sourceType = freezed,Object? sourceId = freezed,Object? sourceLabel = null,Object? reportedAt = freezed,Object? reportedBy = freezed,Object? reportedByName = freezed,Object? resolution = freezed,Object? resolvedAt = freezed,Object? closedAt = freezed,Object? escalatedAt = freezed,Object? attachmentCount = null,Object? links = null,Object? allowedActions = null,Object? createdAt = freezed,Object? version = null,}) {
  return _then(Finding(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,findingNumber: null == findingNumber ? _self.findingNumber : findingNumber // ignore: cast_nullable_to_non_nullable
as String,findingType: null == findingType ? _self.findingType : findingType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as AssetRef,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,sourceLabel: null == sourceLabel ? _self.sourceLabel : sourceLabel // ignore: cast_nullable_to_non_nullable
as String,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedBy: freezed == reportedBy ? _self.reportedBy : reportedBy // ignore: cast_nullable_to_non_nullable
as String?,reportedByName: freezed == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,escalatedAt: freezed == escalatedAt ? _self.escalatedAt : escalatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self.allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetRefCopyWith<$Res> get asset {
  
  return $AssetRefCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}
}


/// Adds pattern-matching-related methods to [Finding].
extension FindingPatterns on Finding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Finding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Finding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Finding value)  $default,){
final _that = this;
switch (_that) {
case _Finding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Finding value)?  $default,){
final _that = this;
switch (_that) {
case _Finding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String propertyId,  String findingNumber,  String findingType,  String title,  String? description,  String? category,  String severity,  String status,  LocationRef location,  AssetRef asset,  String? sourceType,  String? sourceId,  String sourceLabel,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? escalatedAt,  int attachmentCount,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Finding() when $default != null:
return $default(_that.id,_that.propertyId,_that.findingNumber,_that.findingType,_that.title,_that.description,_that.category,_that.severity,_that.status,_that.location,_that.asset,_that.sourceType,_that.sourceId,_that.sourceLabel,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.escalatedAt,_that.attachmentCount,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String propertyId,  String findingNumber,  String findingType,  String title,  String? description,  String? category,  String severity,  String status,  LocationRef location,  AssetRef asset,  String? sourceType,  String? sourceId,  String sourceLabel,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? escalatedAt,  int attachmentCount,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)  $default,) {final _that = this;
switch (_that) {
case _Finding():
return $default(_that.id,_that.propertyId,_that.findingNumber,_that.findingType,_that.title,_that.description,_that.category,_that.severity,_that.status,_that.location,_that.asset,_that.sourceType,_that.sourceId,_that.sourceLabel,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.escalatedAt,_that.attachmentCount,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String propertyId,  String findingNumber,  String findingType,  String title,  String? description,  String? category,  String severity,  String status,  LocationRef location,  AssetRef asset,  String? sourceType,  String? sourceId,  String sourceLabel,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? escalatedAt,  int attachmentCount,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)?  $default,) {final _that = this;
switch (_that) {
case _Finding() when $default != null:
return $default(_that.id,_that.propertyId,_that.findingNumber,_that.findingType,_that.title,_that.description,_that.category,_that.severity,_that.status,_that.location,_that.asset,_that.sourceType,_that.sourceId,_that.sourceLabel,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.escalatedAt,_that.attachmentCount,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Finding implements Finding {
  const _Finding({required this.id, this.propertyId = '', required this.findingNumber, required this.findingType, required this.title, this.description, this.category, this.severity = 'medium', this.status = 'open', this.location = const LocationRef(), this.asset = const AssetRef(), this.sourceType, this.sourceId, this.sourceLabel = '', this.reportedAt, this.reportedBy, this.reportedByName, this.resolution, this.resolvedAt, this.closedAt, this.escalatedAt, this.attachmentCount = 0,  List<ObjectLink> links = const <ObjectLink>[],  List<String> allowedActions = const <String>[], this.createdAt, this.version = 1}): _links = links,_allowedActions = allowedActions;
  factory _Finding.fromJson(Map<String, dynamic> json) => _$FindingFromJson(json);

@override final  String id;
@override@JsonKey() final  String propertyId;
@override final  String findingNumber;
@override final  String findingType;
@override final  String title;
@override final  String? description;
@override final  String? category;
@override@JsonKey() final  String severity;
@override@JsonKey() final  String status;
@override@JsonKey() final  LocationRef location;
@override@JsonKey() final  AssetRef asset;
@override final  String? sourceType;
@override final  String? sourceId;
@override@JsonKey() final  String sourceLabel;
@override final  DateTime? reportedAt;
@override final  String? reportedBy;
@override final  String? reportedByName;
@override final  String? resolution;
@override final  DateTime? resolvedAt;
@override final  DateTime? closedAt;
@override final  DateTime? escalatedAt;
@override@JsonKey() final  int attachmentCount;
 final  List<ObjectLink> _links;
@override@JsonKey() List<ObjectLink> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}

 final  List<String> _allowedActions;
@override@JsonKey() List<String> get allowedActions {
  if (_allowedActions is EqualUnmodifiableListView) return _allowedActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allowedActions);
}

@override final  DateTime? createdAt;
@override@JsonKey() final  int version;

/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindingCopyWith<_Finding> get copyWith => __$FindingCopyWithImpl<_Finding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Finding&&(identical(other.id, id) || other.id == id)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.findingNumber, findingNumber) || other.findingNumber == findingNumber)&&(identical(other.findingType, findingType) || other.findingType == findingType)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.sourceLabel, sourceLabel) || other.sourceLabel == sourceLabel)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.reportedBy, reportedBy) || other.reportedBy == reportedBy)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.escalatedAt, escalatedAt) || other.escalatedAt == escalatedAt)&&(identical(other.attachmentCount, attachmentCount) || other.attachmentCount == attachmentCount)&&const DeepCollectionEquality().equals(other.links, _links)&&const DeepCollectionEquality().equals(other.allowedActions, _allowedActions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,propertyId,findingNumber,findingType,title,description,category,severity,status,location,asset,sourceType,sourceId,sourceLabel,reportedAt,reportedBy,reportedByName,resolution,resolvedAt,closedAt,escalatedAt,attachmentCount,const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_allowedActions),createdAt,version]);
}

@override
String toString() {
    return 'Finding(id: $id, propertyId: $propertyId, findingNumber: $findingNumber, findingType: $findingType, title: $title, description: $description, category: $category, severity: $severity, status: $status, location: $location, asset: $asset, sourceType: $sourceType, sourceId: $sourceId, sourceLabel: $sourceLabel, reportedAt: $reportedAt, reportedBy: $reportedBy, reportedByName: $reportedByName, resolution: $resolution, resolvedAt: $resolvedAt, closedAt: $closedAt, escalatedAt: $escalatedAt, attachmentCount: $attachmentCount, links: $links, allowedActions: $allowedActions, createdAt: $createdAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$FindingCopyWith<$Res> implements $FindingCopyWith<$Res> {
  factory _$FindingCopyWith(_Finding value, $Res Function(_Finding) _then) = __$FindingCopyWithImpl;
@override @useResult
$Res call({
 String id, String propertyId, String findingNumber, String findingType, String title, String? description, String? category, String severity, String status, LocationRef location, AssetRef asset, String? sourceType, String? sourceId, String sourceLabel, DateTime? reportedAt, String? reportedBy, String? reportedByName, String? resolution, DateTime? resolvedAt, DateTime? closedAt, DateTime? escalatedAt, int attachmentCount, List<ObjectLink> links, List<String> allowedActions, DateTime? createdAt, int version
});


@override $LocationRefCopyWith<$Res> get location;@override $AssetRefCopyWith<$Res> get asset;

}
/// @nodoc
class __$FindingCopyWithImpl<$Res>
    implements _$FindingCopyWith<$Res> {
  __$FindingCopyWithImpl(this._self, this._then);

  final _Finding _self;
  final $Res Function(_Finding) _then;

/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? propertyId = null,Object? findingNumber = null,Object? findingType = null,Object? title = null,Object? description = freezed,Object? category = freezed,Object? severity = null,Object? status = null,Object? location = null,Object? asset = null,Object? sourceType = freezed,Object? sourceId = freezed,Object? sourceLabel = null,Object? reportedAt = freezed,Object? reportedBy = freezed,Object? reportedByName = freezed,Object? resolution = freezed,Object? resolvedAt = freezed,Object? closedAt = freezed,Object? escalatedAt = freezed,Object? attachmentCount = null,Object? links = null,Object? allowedActions = null,Object? createdAt = freezed,Object? version = null,}) {
  return _then(_Finding(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,findingNumber: null == findingNumber ? _self.findingNumber : findingNumber // ignore: cast_nullable_to_non_nullable
as String,findingType: null == findingType ? _self.findingType : findingType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as AssetRef,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,sourceLabel: null == sourceLabel ? _self.sourceLabel : sourceLabel // ignore: cast_nullable_to_non_nullable
as String,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedBy: freezed == reportedBy ? _self.reportedBy : reportedBy // ignore: cast_nullable_to_non_nullable
as String?,reportedByName: freezed == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,escalatedAt: freezed == escalatedAt ? _self.escalatedAt : escalatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self._allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Finding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetRefCopyWith<$Res> get asset {
  
  return $AssetRefCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}
}

// dart format on
