// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Incident {

 String get id; String get propertyId; String get incidentNumber; String get incidentType; String get category; String get title; String? get description; String get severity; String get priority; String get status; LocationRef get location; AssigneeRef get assignee; DateTime? get occurredAt; DateTime? get reportedAt; String? get reportedBy; String? get reportedByName; String? get resolution; DateTime? get resolvedAt; DateTime? get closedAt; DateTime? get slaRiskAt; DateTime? get slaBreachedAt; String? get sourceType; String? get sourceId; int get attachmentCount; int get commentCount; List<String> get flags; List<ObjectLink> get links; List<String> get allowedActions; DateTime? get createdAt; int get version;
/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncidentCopyWith<Incident> get copyWith => _$IncidentCopyWithImpl<Incident>(this as Incident, _$identity);

  /// Serializes this Incident to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Incident;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Incident&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.incidentNumber, _this.incidentNumber) || other.incidentNumber == _this.incidentNumber)&&(identical(other.incidentType, _this.incidentType) || other.incidentType == _this.incidentType)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.assignee, _this.assignee) || other.assignee == _this.assignee)&&(identical(other.occurredAt, _this.occurredAt) || other.occurredAt == _this.occurredAt)&&(identical(other.reportedAt, _this.reportedAt) || other.reportedAt == _this.reportedAt)&&(identical(other.reportedBy, _this.reportedBy) || other.reportedBy == _this.reportedBy)&&(identical(other.reportedByName, _this.reportedByName) || other.reportedByName == _this.reportedByName)&&(identical(other.resolution, _this.resolution) || other.resolution == _this.resolution)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.slaRiskAt, _this.slaRiskAt) || other.slaRiskAt == _this.slaRiskAt)&&(identical(other.slaBreachedAt, _this.slaBreachedAt) || other.slaBreachedAt == _this.slaBreachedAt)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.attachmentCount, _this.attachmentCount) || other.attachmentCount == _this.attachmentCount)&&(identical(other.commentCount, _this.commentCount) || other.commentCount == _this.commentCount)&&const DeepCollectionEquality().equals(other.flags, _this.flags)&&const DeepCollectionEquality().equals(other.links, _this.links)&&const DeepCollectionEquality().equals(other.allowedActions, _this.allowedActions)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Incident;
  return Object.hashAll([runtimeType,_this.id,_this.propertyId,_this.incidentNumber,_this.incidentType,_this.category,_this.title,_this.description,_this.severity,_this.priority,_this.status,_this.location,_this.assignee,_this.occurredAt,_this.reportedAt,_this.reportedBy,_this.reportedByName,_this.resolution,_this.resolvedAt,_this.closedAt,_this.slaRiskAt,_this.slaBreachedAt,_this.sourceType,_this.sourceId,_this.attachmentCount,_this.commentCount,const DeepCollectionEquality().hash(_this.flags),const DeepCollectionEquality().hash(_this.links),const DeepCollectionEquality().hash(_this.allowedActions),_this.createdAt,_this.version]);
}

@override
String toString() {
  final _this = this as Incident;
  return 'Incident(id: ${_this.id}, propertyId: ${_this.propertyId}, incidentNumber: ${_this.incidentNumber}, incidentType: ${_this.incidentType}, category: ${_this.category}, title: ${_this.title}, description: ${_this.description}, severity: ${_this.severity}, priority: ${_this.priority}, status: ${_this.status}, location: ${_this.location}, assignee: ${_this.assignee}, occurredAt: ${_this.occurredAt}, reportedAt: ${_this.reportedAt}, reportedBy: ${_this.reportedBy}, reportedByName: ${_this.reportedByName}, resolution: ${_this.resolution}, resolvedAt: ${_this.resolvedAt}, closedAt: ${_this.closedAt}, slaRiskAt: ${_this.slaRiskAt}, slaBreachedAt: ${_this.slaBreachedAt}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, attachmentCount: ${_this.attachmentCount}, commentCount: ${_this.commentCount}, flags: ${_this.flags}, links: ${_this.links}, allowedActions: ${_this.allowedActions}, createdAt: ${_this.createdAt}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $IncidentCopyWith<$Res>  {
  factory $IncidentCopyWith(Incident value, $Res Function(Incident) _then) = _$IncidentCopyWithImpl;
@useResult
$Res call({
 String id, String propertyId, String incidentNumber, String incidentType, String category, String title, String? description, String severity, String priority, String status, LocationRef location, AssigneeRef assignee, DateTime? occurredAt, DateTime? reportedAt, String? reportedBy, String? reportedByName, String? resolution, DateTime? resolvedAt, DateTime? closedAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, String? sourceType, String? sourceId, int attachmentCount, int commentCount, List<String> flags, List<ObjectLink> links, List<String> allowedActions, DateTime? createdAt, int version
});


$LocationRefCopyWith<$Res> get location;$AssigneeRefCopyWith<$Res> get assignee;

}
/// @nodoc
class _$IncidentCopyWithImpl<$Res>
    implements $IncidentCopyWith<$Res> {
  _$IncidentCopyWithImpl(this._self, this._then);

  final Incident _self;
  final $Res Function(Incident) _then;

/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? propertyId = null,Object? incidentNumber = null,Object? incidentType = null,Object? category = null,Object? title = null,Object? description = freezed,Object? severity = null,Object? priority = null,Object? status = null,Object? location = null,Object? assignee = null,Object? occurredAt = freezed,Object? reportedAt = freezed,Object? reportedBy = freezed,Object? reportedByName = freezed,Object? resolution = freezed,Object? resolvedAt = freezed,Object? closedAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? attachmentCount = null,Object? commentCount = null,Object? flags = null,Object? links = null,Object? allowedActions = null,Object? createdAt = freezed,Object? version = null,}) {
  return _then(Incident(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,incidentNumber: null == incidentNumber ? _self.incidentNumber : incidentNumber // ignore: cast_nullable_to_non_nullable
as String,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as AssigneeRef,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedBy: freezed == reportedBy ? _self.reportedBy : reportedBy // ignore: cast_nullable_to_non_nullable
as String?,reportedByName: freezed == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self.allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssigneeRefCopyWith<$Res> get assignee {
  
  return $AssigneeRefCopyWith<$Res>(_self.assignee, (value) {
    return _then(_self.copyWith(assignee: value));
  });
}
}


/// Adds pattern-matching-related methods to [Incident].
extension IncidentPatterns on Incident {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Incident value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Incident() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Incident value)  $default,){
final _that = this;
switch (_that) {
case _Incident():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Incident value)?  $default,){
final _that = this;
switch (_that) {
case _Incident() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String propertyId,  String incidentNumber,  String incidentType,  String category,  String title,  String? description,  String severity,  String priority,  String status,  LocationRef location,  AssigneeRef assignee,  DateTime? occurredAt,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  String? sourceType,  String? sourceId,  int attachmentCount,  int commentCount,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Incident() when $default != null:
return $default(_that.id,_that.propertyId,_that.incidentNumber,_that.incidentType,_that.category,_that.title,_that.description,_that.severity,_that.priority,_that.status,_that.location,_that.assignee,_that.occurredAt,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sourceType,_that.sourceId,_that.attachmentCount,_that.commentCount,_that.flags,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String propertyId,  String incidentNumber,  String incidentType,  String category,  String title,  String? description,  String severity,  String priority,  String status,  LocationRef location,  AssigneeRef assignee,  DateTime? occurredAt,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  String? sourceType,  String? sourceId,  int attachmentCount,  int commentCount,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)  $default,) {final _that = this;
switch (_that) {
case _Incident():
return $default(_that.id,_that.propertyId,_that.incidentNumber,_that.incidentType,_that.category,_that.title,_that.description,_that.severity,_that.priority,_that.status,_that.location,_that.assignee,_that.occurredAt,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sourceType,_that.sourceId,_that.attachmentCount,_that.commentCount,_that.flags,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String propertyId,  String incidentNumber,  String incidentType,  String category,  String title,  String? description,  String severity,  String priority,  String status,  LocationRef location,  AssigneeRef assignee,  DateTime? occurredAt,  DateTime? reportedAt,  String? reportedBy,  String? reportedByName,  String? resolution,  DateTime? resolvedAt,  DateTime? closedAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  String? sourceType,  String? sourceId,  int attachmentCount,  int commentCount,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  DateTime? createdAt,  int version)?  $default,) {final _that = this;
switch (_that) {
case _Incident() when $default != null:
return $default(_that.id,_that.propertyId,_that.incidentNumber,_that.incidentType,_that.category,_that.title,_that.description,_that.severity,_that.priority,_that.status,_that.location,_that.assignee,_that.occurredAt,_that.reportedAt,_that.reportedBy,_that.reportedByName,_that.resolution,_that.resolvedAt,_that.closedAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sourceType,_that.sourceId,_that.attachmentCount,_that.commentCount,_that.flags,_that.links,_that.allowedActions,_that.createdAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Incident implements Incident {
  const _Incident({required this.id, this.propertyId = '', required this.incidentNumber, required this.incidentType, this.category = '', required this.title, this.description, this.severity = 'medium', this.priority = 'medium', this.status = 'new', this.location = const LocationRef(), this.assignee = const AssigneeRef(), this.occurredAt, this.reportedAt, this.reportedBy, this.reportedByName, this.resolution, this.resolvedAt, this.closedAt, this.slaRiskAt, this.slaBreachedAt, this.sourceType, this.sourceId, this.attachmentCount = 0, this.commentCount = 0,  List<String> flags = const <String>[],  List<ObjectLink> links = const <ObjectLink>[],  List<String> allowedActions = const <String>[], this.createdAt, this.version = 1}): _flags = flags,_links = links,_allowedActions = allowedActions;
  factory _Incident.fromJson(Map<String, dynamic> json) => _$IncidentFromJson(json);

@override final  String id;
@override@JsonKey() final  String propertyId;
@override final  String incidentNumber;
@override final  String incidentType;
@override@JsonKey() final  String category;
@override final  String title;
@override final  String? description;
@override@JsonKey() final  String severity;
@override@JsonKey() final  String priority;
@override@JsonKey() final  String status;
@override@JsonKey() final  LocationRef location;
@override@JsonKey() final  AssigneeRef assignee;
@override final  DateTime? occurredAt;
@override final  DateTime? reportedAt;
@override final  String? reportedBy;
@override final  String? reportedByName;
@override final  String? resolution;
@override final  DateTime? resolvedAt;
@override final  DateTime? closedAt;
@override final  DateTime? slaRiskAt;
@override final  DateTime? slaBreachedAt;
@override final  String? sourceType;
@override final  String? sourceId;
@override@JsonKey() final  int attachmentCount;
@override@JsonKey() final  int commentCount;
 final  List<String> _flags;
@override@JsonKey() List<String> get flags {
  if (_flags is EqualUnmodifiableListView) return _flags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flags);
}

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

/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncidentCopyWith<_Incident> get copyWith => __$IncidentCopyWithImpl<_Incident>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncidentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Incident&&(identical(other.id, id) || other.id == id)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.incidentNumber, incidentNumber) || other.incidentNumber == incidentNumber)&&(identical(other.incidentType, incidentType) || other.incidentType == incidentType)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.reportedBy, reportedBy) || other.reportedBy == reportedBy)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.slaRiskAt, slaRiskAt) || other.slaRiskAt == slaRiskAt)&&(identical(other.slaBreachedAt, slaBreachedAt) || other.slaBreachedAt == slaBreachedAt)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.attachmentCount, attachmentCount) || other.attachmentCount == attachmentCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&const DeepCollectionEquality().equals(other.flags, _flags)&&const DeepCollectionEquality().equals(other.links, _links)&&const DeepCollectionEquality().equals(other.allowedActions, _allowedActions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,propertyId,incidentNumber,incidentType,category,title,description,severity,priority,status,location,assignee,occurredAt,reportedAt,reportedBy,reportedByName,resolution,resolvedAt,closedAt,slaRiskAt,slaBreachedAt,sourceType,sourceId,attachmentCount,commentCount,const DeepCollectionEquality().hash(_flags),const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_allowedActions),createdAt,version]);
}

@override
String toString() {
    return 'Incident(id: $id, propertyId: $propertyId, incidentNumber: $incidentNumber, incidentType: $incidentType, category: $category, title: $title, description: $description, severity: $severity, priority: $priority, status: $status, location: $location, assignee: $assignee, occurredAt: $occurredAt, reportedAt: $reportedAt, reportedBy: $reportedBy, reportedByName: $reportedByName, resolution: $resolution, resolvedAt: $resolvedAt, closedAt: $closedAt, slaRiskAt: $slaRiskAt, slaBreachedAt: $slaBreachedAt, sourceType: $sourceType, sourceId: $sourceId, attachmentCount: $attachmentCount, commentCount: $commentCount, flags: $flags, links: $links, allowedActions: $allowedActions, createdAt: $createdAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$IncidentCopyWith<$Res> implements $IncidentCopyWith<$Res> {
  factory _$IncidentCopyWith(_Incident value, $Res Function(_Incident) _then) = __$IncidentCopyWithImpl;
@override @useResult
$Res call({
 String id, String propertyId, String incidentNumber, String incidentType, String category, String title, String? description, String severity, String priority, String status, LocationRef location, AssigneeRef assignee, DateTime? occurredAt, DateTime? reportedAt, String? reportedBy, String? reportedByName, String? resolution, DateTime? resolvedAt, DateTime? closedAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, String? sourceType, String? sourceId, int attachmentCount, int commentCount, List<String> flags, List<ObjectLink> links, List<String> allowedActions, DateTime? createdAt, int version
});


@override $LocationRefCopyWith<$Res> get location;@override $AssigneeRefCopyWith<$Res> get assignee;

}
/// @nodoc
class __$IncidentCopyWithImpl<$Res>
    implements _$IncidentCopyWith<$Res> {
  __$IncidentCopyWithImpl(this._self, this._then);

  final _Incident _self;
  final $Res Function(_Incident) _then;

/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? propertyId = null,Object? incidentNumber = null,Object? incidentType = null,Object? category = null,Object? title = null,Object? description = freezed,Object? severity = null,Object? priority = null,Object? status = null,Object? location = null,Object? assignee = null,Object? occurredAt = freezed,Object? reportedAt = freezed,Object? reportedBy = freezed,Object? reportedByName = freezed,Object? resolution = freezed,Object? resolvedAt = freezed,Object? closedAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? attachmentCount = null,Object? commentCount = null,Object? flags = null,Object? links = null,Object? allowedActions = null,Object? createdAt = freezed,Object? version = null,}) {
  return _then(_Incident(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,incidentNumber: null == incidentNumber ? _self.incidentNumber : incidentNumber // ignore: cast_nullable_to_non_nullable
as String,incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as AssigneeRef,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reportedBy: freezed == reportedBy ? _self.reportedBy : reportedBy // ignore: cast_nullable_to_non_nullable
as String?,reportedByName: freezed == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self._flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self._allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Incident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssigneeRefCopyWith<$Res> get assignee {
  
  return $AssigneeRefCopyWith<$Res>(_self.assignee, (value) {
    return _then(_self.copyWith(assignee: value));
  });
}
}

// dart format on
