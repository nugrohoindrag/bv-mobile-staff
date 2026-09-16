// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkItem {

 String get id; String get objectType; String get number; String get type; String get title; String get status; String get priority; String get propertyId; String? get description; LocationRef get location; AssetRef get asset; AssigneeRef get assignee; String? get checklistTemplateId; ChecklistSummary? get checklistSummary; bool get requiresEvidence; bool get evidenceIncomplete; bool get isOverdue; int get attachmentCount; int get commentCount; int get reopenCount; DateTime? get dueAt; DateTime? get scheduledStartAt; DateTime? get startedAt; DateTime? get completedAt; DateTime? get closedAt; DateTime? get cancelledAt; DateTime? get slaRiskAt; DateTime? get slaBreachedAt; SlaInfo? get sla; String? get completionNotes; String? get resolution; String? get partsUsage; String? get vendorReference; String? get vendorId; String? get vendorName; String? get vendorNotes; Money? get estimatedCost; Money? get actualCost; String? get sourceType; String? get sourceId; String? get maintenanceScheduleId; String? get requesterUserId; String? get createdBy; String? get createdByName; List<String> get flags; List<ObjectLink> get links; List<String> get allowedActions; Map<String, dynamic>? get extension; DateTime get createdAt; DateTime get updatedAt; int get version;
/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkItemCopyWith<WorkItem> get copyWith => _$WorkItemCopyWithImpl<WorkItem>(this as WorkItem, _$identity);

  /// Serializes this WorkItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WorkItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.asset, _this.asset) || other.asset == _this.asset)&&(identical(other.assignee, _this.assignee) || other.assignee == _this.assignee)&&(identical(other.checklistTemplateId, _this.checklistTemplateId) || other.checklistTemplateId == _this.checklistTemplateId)&&(identical(other.checklistSummary, _this.checklistSummary) || other.checklistSummary == _this.checklistSummary)&&(identical(other.requiresEvidence, _this.requiresEvidence) || other.requiresEvidence == _this.requiresEvidence)&&(identical(other.evidenceIncomplete, _this.evidenceIncomplete) || other.evidenceIncomplete == _this.evidenceIncomplete)&&(identical(other.isOverdue, _this.isOverdue) || other.isOverdue == _this.isOverdue)&&(identical(other.attachmentCount, _this.attachmentCount) || other.attachmentCount == _this.attachmentCount)&&(identical(other.commentCount, _this.commentCount) || other.commentCount == _this.commentCount)&&(identical(other.reopenCount, _this.reopenCount) || other.reopenCount == _this.reopenCount)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.scheduledStartAt, _this.scheduledStartAt) || other.scheduledStartAt == _this.scheduledStartAt)&&(identical(other.startedAt, _this.startedAt) || other.startedAt == _this.startedAt)&&(identical(other.completedAt, _this.completedAt) || other.completedAt == _this.completedAt)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.cancelledAt, _this.cancelledAt) || other.cancelledAt == _this.cancelledAt)&&(identical(other.slaRiskAt, _this.slaRiskAt) || other.slaRiskAt == _this.slaRiskAt)&&(identical(other.slaBreachedAt, _this.slaBreachedAt) || other.slaBreachedAt == _this.slaBreachedAt)&&(identical(other.sla, _this.sla) || other.sla == _this.sla)&&(identical(other.completionNotes, _this.completionNotes) || other.completionNotes == _this.completionNotes)&&(identical(other.resolution, _this.resolution) || other.resolution == _this.resolution)&&(identical(other.partsUsage, _this.partsUsage) || other.partsUsage == _this.partsUsage)&&(identical(other.vendorReference, _this.vendorReference) || other.vendorReference == _this.vendorReference)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.vendorName, _this.vendorName) || other.vendorName == _this.vendorName)&&(identical(other.vendorNotes, _this.vendorNotes) || other.vendorNotes == _this.vendorNotes)&&(identical(other.estimatedCost, _this.estimatedCost) || other.estimatedCost == _this.estimatedCost)&&(identical(other.actualCost, _this.actualCost) || other.actualCost == _this.actualCost)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.maintenanceScheduleId, _this.maintenanceScheduleId) || other.maintenanceScheduleId == _this.maintenanceScheduleId)&&(identical(other.requesterUserId, _this.requesterUserId) || other.requesterUserId == _this.requesterUserId)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdByName, _this.createdByName) || other.createdByName == _this.createdByName)&&const DeepCollectionEquality().equals(other.flags, _this.flags)&&const DeepCollectionEquality().equals(other.links, _this.links)&&const DeepCollectionEquality().equals(other.allowedActions, _this.allowedActions)&&const DeepCollectionEquality().equals(other.extension, _this.extension)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WorkItem;
  return Object.hashAll([runtimeType,_this.id,_this.objectType,_this.number,_this.type,_this.title,_this.status,_this.priority,_this.propertyId,_this.description,_this.location,_this.asset,_this.assignee,_this.checklistTemplateId,_this.checklistSummary,_this.requiresEvidence,_this.evidenceIncomplete,_this.isOverdue,_this.attachmentCount,_this.commentCount,_this.reopenCount,_this.dueAt,_this.scheduledStartAt,_this.startedAt,_this.completedAt,_this.closedAt,_this.cancelledAt,_this.slaRiskAt,_this.slaBreachedAt,_this.sla,_this.completionNotes,_this.resolution,_this.partsUsage,_this.vendorReference,_this.vendorId,_this.vendorName,_this.vendorNotes,_this.estimatedCost,_this.actualCost,_this.sourceType,_this.sourceId,_this.maintenanceScheduleId,_this.requesterUserId,_this.createdBy,_this.createdByName,const DeepCollectionEquality().hash(_this.flags),const DeepCollectionEquality().hash(_this.links),const DeepCollectionEquality().hash(_this.allowedActions),const DeepCollectionEquality().hash(_this.extension),_this.createdAt,_this.updatedAt,_this.version]);
}

@override
String toString() {
  final _this = this as WorkItem;
  return 'WorkItem(id: ${_this.id}, objectType: ${_this.objectType}, number: ${_this.number}, type: ${_this.type}, title: ${_this.title}, status: ${_this.status}, priority: ${_this.priority}, propertyId: ${_this.propertyId}, description: ${_this.description}, location: ${_this.location}, asset: ${_this.asset}, assignee: ${_this.assignee}, checklistTemplateId: ${_this.checklistTemplateId}, checklistSummary: ${_this.checklistSummary}, requiresEvidence: ${_this.requiresEvidence}, evidenceIncomplete: ${_this.evidenceIncomplete}, isOverdue: ${_this.isOverdue}, attachmentCount: ${_this.attachmentCount}, commentCount: ${_this.commentCount}, reopenCount: ${_this.reopenCount}, dueAt: ${_this.dueAt}, scheduledStartAt: ${_this.scheduledStartAt}, startedAt: ${_this.startedAt}, completedAt: ${_this.completedAt}, closedAt: ${_this.closedAt}, cancelledAt: ${_this.cancelledAt}, slaRiskAt: ${_this.slaRiskAt}, slaBreachedAt: ${_this.slaBreachedAt}, sla: ${_this.sla}, completionNotes: ${_this.completionNotes}, resolution: ${_this.resolution}, partsUsage: ${_this.partsUsage}, vendorReference: ${_this.vendorReference}, vendorId: ${_this.vendorId}, vendorName: ${_this.vendorName}, vendorNotes: ${_this.vendorNotes}, estimatedCost: ${_this.estimatedCost}, actualCost: ${_this.actualCost}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, maintenanceScheduleId: ${_this.maintenanceScheduleId}, requesterUserId: ${_this.requesterUserId}, createdBy: ${_this.createdBy}, createdByName: ${_this.createdByName}, flags: ${_this.flags}, links: ${_this.links}, allowedActions: ${_this.allowedActions}, extension: ${_this.extension}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $WorkItemCopyWith<$Res>  {
  factory $WorkItemCopyWith(WorkItem value, $Res Function(WorkItem) _then) = _$WorkItemCopyWithImpl;
@useResult
$Res call({
 String id, String objectType, String number, String type, String title, String status, String priority, String propertyId, String? description, LocationRef location, AssetRef asset, AssigneeRef assignee, String? checklistTemplateId, ChecklistSummary? checklistSummary, bool requiresEvidence, bool evidenceIncomplete, bool isOverdue, int attachmentCount, int commentCount, int reopenCount, DateTime? dueAt, DateTime? scheduledStartAt, DateTime? startedAt, DateTime? completedAt, DateTime? closedAt, DateTime? cancelledAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, SlaInfo? sla, String? completionNotes, String? resolution, String? partsUsage, String? vendorReference, String? vendorId, String? vendorName, String? vendorNotes, Money? estimatedCost, Money? actualCost, String? sourceType, String? sourceId, String? maintenanceScheduleId, String? requesterUserId, String? createdBy, String? createdByName, List<String> flags, List<ObjectLink> links, List<String> allowedActions, Map<String, dynamic>? extension, DateTime createdAt, DateTime updatedAt, int version
});


$LocationRefCopyWith<$Res> get location;$AssetRefCopyWith<$Res> get asset;$AssigneeRefCopyWith<$Res> get assignee;$ChecklistSummaryCopyWith<$Res>? get checklistSummary;$SlaInfoCopyWith<$Res>? get sla;$MoneyCopyWith<$Res>? get estimatedCost;$MoneyCopyWith<$Res>? get actualCost;

}
/// @nodoc
class _$WorkItemCopyWithImpl<$Res>
    implements $WorkItemCopyWith<$Res> {
  _$WorkItemCopyWithImpl(this._self, this._then);

  final WorkItem _self;
  final $Res Function(WorkItem) _then;

/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? number = null,Object? type = null,Object? title = null,Object? status = null,Object? priority = null,Object? propertyId = null,Object? description = freezed,Object? location = null,Object? asset = null,Object? assignee = null,Object? checklistTemplateId = freezed,Object? checklistSummary = freezed,Object? requiresEvidence = null,Object? evidenceIncomplete = null,Object? isOverdue = null,Object? attachmentCount = null,Object? commentCount = null,Object? reopenCount = null,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? closedAt = freezed,Object? cancelledAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? sla = freezed,Object? completionNotes = freezed,Object? resolution = freezed,Object? partsUsage = freezed,Object? vendorReference = freezed,Object? vendorId = freezed,Object? vendorName = freezed,Object? vendorNotes = freezed,Object? estimatedCost = freezed,Object? actualCost = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? maintenanceScheduleId = freezed,Object? requesterUserId = freezed,Object? createdBy = freezed,Object? createdByName = freezed,Object? flags = null,Object? links = null,Object? allowedActions = null,Object? extension = freezed,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(WorkItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as AssetRef,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as AssigneeRef,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,checklistSummary: freezed == checklistSummary ? _self.checklistSummary : checklistSummary // ignore: cast_nullable_to_non_nullable
as ChecklistSummary?,requiresEvidence: null == requiresEvidence ? _self.requiresEvidence : requiresEvidence // ignore: cast_nullable_to_non_nullable
as bool,evidenceIncomplete: null == evidenceIncomplete ? _self.evidenceIncomplete : evidenceIncomplete // ignore: cast_nullable_to_non_nullable
as bool,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,reopenCount: null == reopenCount ? _self.reopenCount : reopenCount // ignore: cast_nullable_to_non_nullable
as int,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sla: freezed == sla ? _self.sla : sla // ignore: cast_nullable_to_non_nullable
as SlaInfo?,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,partsUsage: freezed == partsUsage ? _self.partsUsage : partsUsage // ignore: cast_nullable_to_non_nullable
as String?,vendorReference: freezed == vendorReference ? _self.vendorReference : vendorReference // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,vendorName: freezed == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String?,vendorNotes: freezed == vendorNotes ? _self.vendorNotes : vendorNotes // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: freezed == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as Money?,actualCost: freezed == actualCost ? _self.actualCost : actualCost // ignore: cast_nullable_to_non_nullable
as Money?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,maintenanceScheduleId: freezed == maintenanceScheduleId ? _self.maintenanceScheduleId : maintenanceScheduleId // ignore: cast_nullable_to_non_nullable
as String?,requesterUserId: freezed == requesterUserId ? _self.requesterUserId : requesterUserId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByName: freezed == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String?,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self.allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetRefCopyWith<$Res> get asset {
  
  return $AssetRefCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssigneeRefCopyWith<$Res> get assignee {
  
  return $AssigneeRefCopyWith<$Res>(_self.assignee, (value) {
    return _then(_self.copyWith(assignee: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistSummaryCopyWith<$Res>? get checklistSummary {
    if (_self.checklistSummary == null) {
    return null;
  }

  return $ChecklistSummaryCopyWith<$Res>(_self.checklistSummary!, (value) {
    return _then(_self.copyWith(checklistSummary: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlaInfoCopyWith<$Res>? get sla {
    if (_self.sla == null) {
    return null;
  }

  return $SlaInfoCopyWith<$Res>(_self.sla!, (value) {
    return _then(_self.copyWith(sla: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get estimatedCost {
    if (_self.estimatedCost == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.estimatedCost!, (value) {
    return _then(_self.copyWith(estimatedCost: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get actualCost {
    if (_self.actualCost == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.actualCost!, (value) {
    return _then(_self.copyWith(actualCost: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkItem].
extension WorkItemPatterns on WorkItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkItem value)  $default,){
final _that = this;
switch (_that) {
case _WorkItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkItem value)?  $default,){
final _that = this;
switch (_that) {
case _WorkItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectType,  String number,  String type,  String title,  String status,  String priority,  String propertyId,  String? description,  LocationRef location,  AssetRef asset,  AssigneeRef assignee,  String? checklistTemplateId,  ChecklistSummary? checklistSummary,  bool requiresEvidence,  bool evidenceIncomplete,  bool isOverdue,  int attachmentCount,  int commentCount,  int reopenCount,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? startedAt,  DateTime? completedAt,  DateTime? closedAt,  DateTime? cancelledAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  SlaInfo? sla,  String? completionNotes,  String? resolution,  String? partsUsage,  String? vendorReference,  String? vendorId,  String? vendorName,  String? vendorNotes,  Money? estimatedCost,  Money? actualCost,  String? sourceType,  String? sourceId,  String? maintenanceScheduleId,  String? requesterUserId,  String? createdBy,  String? createdByName,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  Map<String, dynamic>? extension,  DateTime createdAt,  DateTime updatedAt,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkItem() when $default != null:
return $default(_that.id,_that.objectType,_that.number,_that.type,_that.title,_that.status,_that.priority,_that.propertyId,_that.description,_that.location,_that.asset,_that.assignee,_that.checklistTemplateId,_that.checklistSummary,_that.requiresEvidence,_that.evidenceIncomplete,_that.isOverdue,_that.attachmentCount,_that.commentCount,_that.reopenCount,_that.dueAt,_that.scheduledStartAt,_that.startedAt,_that.completedAt,_that.closedAt,_that.cancelledAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sla,_that.completionNotes,_that.resolution,_that.partsUsage,_that.vendorReference,_that.vendorId,_that.vendorName,_that.vendorNotes,_that.estimatedCost,_that.actualCost,_that.sourceType,_that.sourceId,_that.maintenanceScheduleId,_that.requesterUserId,_that.createdBy,_that.createdByName,_that.flags,_that.links,_that.allowedActions,_that.extension,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectType,  String number,  String type,  String title,  String status,  String priority,  String propertyId,  String? description,  LocationRef location,  AssetRef asset,  AssigneeRef assignee,  String? checklistTemplateId,  ChecklistSummary? checklistSummary,  bool requiresEvidence,  bool evidenceIncomplete,  bool isOverdue,  int attachmentCount,  int commentCount,  int reopenCount,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? startedAt,  DateTime? completedAt,  DateTime? closedAt,  DateTime? cancelledAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  SlaInfo? sla,  String? completionNotes,  String? resolution,  String? partsUsage,  String? vendorReference,  String? vendorId,  String? vendorName,  String? vendorNotes,  Money? estimatedCost,  Money? actualCost,  String? sourceType,  String? sourceId,  String? maintenanceScheduleId,  String? requesterUserId,  String? createdBy,  String? createdByName,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  Map<String, dynamic>? extension,  DateTime createdAt,  DateTime updatedAt,  int version)  $default,) {final _that = this;
switch (_that) {
case _WorkItem():
return $default(_that.id,_that.objectType,_that.number,_that.type,_that.title,_that.status,_that.priority,_that.propertyId,_that.description,_that.location,_that.asset,_that.assignee,_that.checklistTemplateId,_that.checklistSummary,_that.requiresEvidence,_that.evidenceIncomplete,_that.isOverdue,_that.attachmentCount,_that.commentCount,_that.reopenCount,_that.dueAt,_that.scheduledStartAt,_that.startedAt,_that.completedAt,_that.closedAt,_that.cancelledAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sla,_that.completionNotes,_that.resolution,_that.partsUsage,_that.vendorReference,_that.vendorId,_that.vendorName,_that.vendorNotes,_that.estimatedCost,_that.actualCost,_that.sourceType,_that.sourceId,_that.maintenanceScheduleId,_that.requesterUserId,_that.createdBy,_that.createdByName,_that.flags,_that.links,_that.allowedActions,_that.extension,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectType,  String number,  String type,  String title,  String status,  String priority,  String propertyId,  String? description,  LocationRef location,  AssetRef asset,  AssigneeRef assignee,  String? checklistTemplateId,  ChecklistSummary? checklistSummary,  bool requiresEvidence,  bool evidenceIncomplete,  bool isOverdue,  int attachmentCount,  int commentCount,  int reopenCount,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? startedAt,  DateTime? completedAt,  DateTime? closedAt,  DateTime? cancelledAt,  DateTime? slaRiskAt,  DateTime? slaBreachedAt,  SlaInfo? sla,  String? completionNotes,  String? resolution,  String? partsUsage,  String? vendorReference,  String? vendorId,  String? vendorName,  String? vendorNotes,  Money? estimatedCost,  Money? actualCost,  String? sourceType,  String? sourceId,  String? maintenanceScheduleId,  String? requesterUserId,  String? createdBy,  String? createdByName,  List<String> flags,  List<ObjectLink> links,  List<String> allowedActions,  Map<String, dynamic>? extension,  DateTime createdAt,  DateTime updatedAt,  int version)?  $default,) {final _that = this;
switch (_that) {
case _WorkItem() when $default != null:
return $default(_that.id,_that.objectType,_that.number,_that.type,_that.title,_that.status,_that.priority,_that.propertyId,_that.description,_that.location,_that.asset,_that.assignee,_that.checklistTemplateId,_that.checklistSummary,_that.requiresEvidence,_that.evidenceIncomplete,_that.isOverdue,_that.attachmentCount,_that.commentCount,_that.reopenCount,_that.dueAt,_that.scheduledStartAt,_that.startedAt,_that.completedAt,_that.closedAt,_that.cancelledAt,_that.slaRiskAt,_that.slaBreachedAt,_that.sla,_that.completionNotes,_that.resolution,_that.partsUsage,_that.vendorReference,_that.vendorId,_that.vendorName,_that.vendorNotes,_that.estimatedCost,_that.actualCost,_that.sourceType,_that.sourceId,_that.maintenanceScheduleId,_that.requesterUserId,_that.createdBy,_that.createdByName,_that.flags,_that.links,_that.allowedActions,_that.extension,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkItem extends WorkItem {
  const _WorkItem({required this.id, required this.objectType, required this.number, this.type = '', required this.title, required this.status, this.priority = 'medium', this.propertyId = '', this.description, this.location = const LocationRef(), this.asset = const AssetRef(), this.assignee = const AssigneeRef(), this.checklistTemplateId, this.checklistSummary, this.requiresEvidence = false, this.evidenceIncomplete = false, this.isOverdue = false, this.attachmentCount = 0, this.commentCount = 0, this.reopenCount = 0, this.dueAt, this.scheduledStartAt, this.startedAt, this.completedAt, this.closedAt, this.cancelledAt, this.slaRiskAt, this.slaBreachedAt, this.sla, this.completionNotes, this.resolution, this.partsUsage, this.vendorReference, this.vendorId, this.vendorName, this.vendorNotes, this.estimatedCost, this.actualCost, this.sourceType, this.sourceId, this.maintenanceScheduleId, this.requesterUserId, this.createdBy, this.createdByName,  List<String> flags = const <String>[],  List<ObjectLink> links = const <ObjectLink>[],  List<String> allowedActions = const <String>[],  Map<String, dynamic>? extension, required this.createdAt, required this.updatedAt, this.version = 1}): _flags = flags,_links = links,_allowedActions = allowedActions,_extension = extension,super._();
  factory _WorkItem.fromJson(Map<String, dynamic> json) => _$WorkItemFromJson(json);

@override final  String id;
@override final  String objectType;
@override final  String number;
@override@JsonKey() final  String type;
@override final  String title;
@override final  String status;
@override@JsonKey() final  String priority;
@override@JsonKey() final  String propertyId;
@override final  String? description;
@override@JsonKey() final  LocationRef location;
@override@JsonKey() final  AssetRef asset;
@override@JsonKey() final  AssigneeRef assignee;
@override final  String? checklistTemplateId;
@override final  ChecklistSummary? checklistSummary;
@override@JsonKey() final  bool requiresEvidence;
@override@JsonKey() final  bool evidenceIncomplete;
@override@JsonKey() final  bool isOverdue;
@override@JsonKey() final  int attachmentCount;
@override@JsonKey() final  int commentCount;
@override@JsonKey() final  int reopenCount;
@override final  DateTime? dueAt;
@override final  DateTime? scheduledStartAt;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;
@override final  DateTime? closedAt;
@override final  DateTime? cancelledAt;
@override final  DateTime? slaRiskAt;
@override final  DateTime? slaBreachedAt;
@override final  SlaInfo? sla;
@override final  String? completionNotes;
@override final  String? resolution;
@override final  String? partsUsage;
@override final  String? vendorReference;
@override final  String? vendorId;
@override final  String? vendorName;
@override final  String? vendorNotes;
@override final  Money? estimatedCost;
@override final  Money? actualCost;
@override final  String? sourceType;
@override final  String? sourceId;
@override final  String? maintenanceScheduleId;
@override final  String? requesterUserId;
@override final  String? createdBy;
@override final  String? createdByName;
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

 final  Map<String, dynamic>? _extension;
@override Map<String, dynamic>? get extension {
  final value = _extension;
  if (value == null) return null;
  if (_extension is EqualUnmodifiableMapView) return _extension;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  int version;

/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkItemCopyWith<_WorkItem> get copyWith => __$WorkItemCopyWithImpl<_WorkItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkItem&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.assignee, assignee) || other.assignee == assignee)&&(identical(other.checklistTemplateId, checklistTemplateId) || other.checklistTemplateId == checklistTemplateId)&&(identical(other.checklistSummary, checklistSummary) || other.checklistSummary == checklistSummary)&&(identical(other.requiresEvidence, requiresEvidence) || other.requiresEvidence == requiresEvidence)&&(identical(other.evidenceIncomplete, evidenceIncomplete) || other.evidenceIncomplete == evidenceIncomplete)&&(identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue)&&(identical(other.attachmentCount, attachmentCount) || other.attachmentCount == attachmentCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.reopenCount, reopenCount) || other.reopenCount == reopenCount)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.slaRiskAt, slaRiskAt) || other.slaRiskAt == slaRiskAt)&&(identical(other.slaBreachedAt, slaBreachedAt) || other.slaBreachedAt == slaBreachedAt)&&(identical(other.sla, sla) || other.sla == sla)&&(identical(other.completionNotes, completionNotes) || other.completionNotes == completionNotes)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.partsUsage, partsUsage) || other.partsUsage == partsUsage)&&(identical(other.vendorReference, vendorReference) || other.vendorReference == vendorReference)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.vendorName, vendorName) || other.vendorName == vendorName)&&(identical(other.vendorNotes, vendorNotes) || other.vendorNotes == vendorNotes)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.actualCost, actualCost) || other.actualCost == actualCost)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.maintenanceScheduleId, maintenanceScheduleId) || other.maintenanceScheduleId == maintenanceScheduleId)&&(identical(other.requesterUserId, requesterUserId) || other.requesterUserId == requesterUserId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&const DeepCollectionEquality().equals(other.flags, _flags)&&const DeepCollectionEquality().equals(other.links, _links)&&const DeepCollectionEquality().equals(other.allowedActions, _allowedActions)&&const DeepCollectionEquality().equals(other.extension, _extension)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,objectType,number,type,title,status,priority,propertyId,description,location,asset,assignee,checklistTemplateId,checklistSummary,requiresEvidence,evidenceIncomplete,isOverdue,attachmentCount,commentCount,reopenCount,dueAt,scheduledStartAt,startedAt,completedAt,closedAt,cancelledAt,slaRiskAt,slaBreachedAt,sla,completionNotes,resolution,partsUsage,vendorReference,vendorId,vendorName,vendorNotes,estimatedCost,actualCost,sourceType,sourceId,maintenanceScheduleId,requesterUserId,createdBy,createdByName,const DeepCollectionEquality().hash(_flags),const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_allowedActions),const DeepCollectionEquality().hash(_extension),createdAt,updatedAt,version]);
}

@override
String toString() {
    return 'WorkItem(id: $id, objectType: $objectType, number: $number, type: $type, title: $title, status: $status, priority: $priority, propertyId: $propertyId, description: $description, location: $location, asset: $asset, assignee: $assignee, checklistTemplateId: $checklistTemplateId, checklistSummary: $checklistSummary, requiresEvidence: $requiresEvidence, evidenceIncomplete: $evidenceIncomplete, isOverdue: $isOverdue, attachmentCount: $attachmentCount, commentCount: $commentCount, reopenCount: $reopenCount, dueAt: $dueAt, scheduledStartAt: $scheduledStartAt, startedAt: $startedAt, completedAt: $completedAt, closedAt: $closedAt, cancelledAt: $cancelledAt, slaRiskAt: $slaRiskAt, slaBreachedAt: $slaBreachedAt, sla: $sla, completionNotes: $completionNotes, resolution: $resolution, partsUsage: $partsUsage, vendorReference: $vendorReference, vendorId: $vendorId, vendorName: $vendorName, vendorNotes: $vendorNotes, estimatedCost: $estimatedCost, actualCost: $actualCost, sourceType: $sourceType, sourceId: $sourceId, maintenanceScheduleId: $maintenanceScheduleId, requesterUserId: $requesterUserId, createdBy: $createdBy, createdByName: $createdByName, flags: $flags, links: $links, allowedActions: $allowedActions, extension: $extension, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$WorkItemCopyWith<$Res> implements $WorkItemCopyWith<$Res> {
  factory _$WorkItemCopyWith(_WorkItem value, $Res Function(_WorkItem) _then) = __$WorkItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectType, String number, String type, String title, String status, String priority, String propertyId, String? description, LocationRef location, AssetRef asset, AssigneeRef assignee, String? checklistTemplateId, ChecklistSummary? checklistSummary, bool requiresEvidence, bool evidenceIncomplete, bool isOverdue, int attachmentCount, int commentCount, int reopenCount, DateTime? dueAt, DateTime? scheduledStartAt, DateTime? startedAt, DateTime? completedAt, DateTime? closedAt, DateTime? cancelledAt, DateTime? slaRiskAt, DateTime? slaBreachedAt, SlaInfo? sla, String? completionNotes, String? resolution, String? partsUsage, String? vendorReference, String? vendorId, String? vendorName, String? vendorNotes, Money? estimatedCost, Money? actualCost, String? sourceType, String? sourceId, String? maintenanceScheduleId, String? requesterUserId, String? createdBy, String? createdByName, List<String> flags, List<ObjectLink> links, List<String> allowedActions, Map<String, dynamic>? extension, DateTime createdAt, DateTime updatedAt, int version
});


@override $LocationRefCopyWith<$Res> get location;@override $AssetRefCopyWith<$Res> get asset;@override $AssigneeRefCopyWith<$Res> get assignee;@override $ChecklistSummaryCopyWith<$Res>? get checklistSummary;@override $SlaInfoCopyWith<$Res>? get sla;@override $MoneyCopyWith<$Res>? get estimatedCost;@override $MoneyCopyWith<$Res>? get actualCost;

}
/// @nodoc
class __$WorkItemCopyWithImpl<$Res>
    implements _$WorkItemCopyWith<$Res> {
  __$WorkItemCopyWithImpl(this._self, this._then);

  final _WorkItem _self;
  final $Res Function(_WorkItem) _then;

/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? number = null,Object? type = null,Object? title = null,Object? status = null,Object? priority = null,Object? propertyId = null,Object? description = freezed,Object? location = null,Object? asset = null,Object? assignee = null,Object? checklistTemplateId = freezed,Object? checklistSummary = freezed,Object? requiresEvidence = null,Object? evidenceIncomplete = null,Object? isOverdue = null,Object? attachmentCount = null,Object? commentCount = null,Object? reopenCount = null,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? closedAt = freezed,Object? cancelledAt = freezed,Object? slaRiskAt = freezed,Object? slaBreachedAt = freezed,Object? sla = freezed,Object? completionNotes = freezed,Object? resolution = freezed,Object? partsUsage = freezed,Object? vendorReference = freezed,Object? vendorId = freezed,Object? vendorName = freezed,Object? vendorNotes = freezed,Object? estimatedCost = freezed,Object? actualCost = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? maintenanceScheduleId = freezed,Object? requesterUserId = freezed,Object? createdBy = freezed,Object? createdByName = freezed,Object? flags = null,Object? links = null,Object? allowedActions = null,Object? extension = freezed,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_WorkItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationRef,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as AssetRef,assignee: null == assignee ? _self.assignee : assignee // ignore: cast_nullable_to_non_nullable
as AssigneeRef,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,checklistSummary: freezed == checklistSummary ? _self.checklistSummary : checklistSummary // ignore: cast_nullable_to_non_nullable
as ChecklistSummary?,requiresEvidence: null == requiresEvidence ? _self.requiresEvidence : requiresEvidence // ignore: cast_nullable_to_non_nullable
as bool,evidenceIncomplete: null == evidenceIncomplete ? _self.evidenceIncomplete : evidenceIncomplete // ignore: cast_nullable_to_non_nullable
as bool,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,attachmentCount: null == attachmentCount ? _self.attachmentCount : attachmentCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,reopenCount: null == reopenCount ? _self.reopenCount : reopenCount // ignore: cast_nullable_to_non_nullable
as int,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaRiskAt: freezed == slaRiskAt ? _self.slaRiskAt : slaRiskAt // ignore: cast_nullable_to_non_nullable
as DateTime?,slaBreachedAt: freezed == slaBreachedAt ? _self.slaBreachedAt : slaBreachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sla: freezed == sla ? _self.sla : sla // ignore: cast_nullable_to_non_nullable
as SlaInfo?,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,partsUsage: freezed == partsUsage ? _self.partsUsage : partsUsage // ignore: cast_nullable_to_non_nullable
as String?,vendorReference: freezed == vendorReference ? _self.vendorReference : vendorReference // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,vendorName: freezed == vendorName ? _self.vendorName : vendorName // ignore: cast_nullable_to_non_nullable
as String?,vendorNotes: freezed == vendorNotes ? _self.vendorNotes : vendorNotes // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: freezed == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as Money?,actualCost: freezed == actualCost ? _self.actualCost : actualCost // ignore: cast_nullable_to_non_nullable
as Money?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,maintenanceScheduleId: freezed == maintenanceScheduleId ? _self.maintenanceScheduleId : maintenanceScheduleId // ignore: cast_nullable_to_non_nullable
as String?,requesterUserId: freezed == requesterUserId ? _self.requesterUserId : requesterUserId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByName: freezed == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String?,flags: null == flags ? _self._flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<ObjectLink>,allowedActions: null == allowedActions ? _self._allowedActions : allowedActions // ignore: cast_nullable_to_non_nullable
as List<String>,extension: freezed == extension ? _self._extension : extension // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationRefCopyWith<$Res> get location {
  
  return $LocationRefCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetRefCopyWith<$Res> get asset {
  
  return $AssetRefCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssigneeRefCopyWith<$Res> get assignee {
  
  return $AssigneeRefCopyWith<$Res>(_self.assignee, (value) {
    return _then(_self.copyWith(assignee: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistSummaryCopyWith<$Res>? get checklistSummary {
    if (_self.checklistSummary == null) {
    return null;
  }

  return $ChecklistSummaryCopyWith<$Res>(_self.checklistSummary!, (value) {
    return _then(_self.copyWith(checklistSummary: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlaInfoCopyWith<$Res>? get sla {
    if (_self.sla == null) {
    return null;
  }

  return $SlaInfoCopyWith<$Res>(_self.sla!, (value) {
    return _then(_self.copyWith(sla: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get estimatedCost {
    if (_self.estimatedCost == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.estimatedCost!, (value) {
    return _then(_self.copyWith(estimatedCost: value));
  });
}/// Create a copy of WorkItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get actualCost {
    if (_self.actualCost == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.actualCost!, (value) {
    return _then(_self.copyWith(actualCost: value));
  });
}
}

// dart format on
