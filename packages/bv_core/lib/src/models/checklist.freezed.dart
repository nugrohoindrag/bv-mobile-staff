// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistSummary {

 String get runId; String get status; int get totalItems; int get answeredItems; int get notOkItems; int get photoMissing;
/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistSummaryCopyWith<ChecklistSummary> get copyWith => _$ChecklistSummaryCopyWithImpl<ChecklistSummary>(this as ChecklistSummary, _$identity);

  /// Serializes this ChecklistSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChecklistSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistSummary&&(identical(other.runId, _this.runId) || other.runId == _this.runId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.answeredItems, _this.answeredItems) || other.answeredItems == _this.answeredItems)&&(identical(other.notOkItems, _this.notOkItems) || other.notOkItems == _this.notOkItems)&&(identical(other.photoMissing, _this.photoMissing) || other.photoMissing == _this.photoMissing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChecklistSummary;
  return Object.hash(runtimeType,_this.runId,_this.status,_this.totalItems,_this.answeredItems,_this.notOkItems,_this.photoMissing);
}

@override
String toString() {
  final _this = this as ChecklistSummary;
  return 'ChecklistSummary(runId: ${_this.runId}, status: ${_this.status}, totalItems: ${_this.totalItems}, answeredItems: ${_this.answeredItems}, notOkItems: ${_this.notOkItems}, photoMissing: ${_this.photoMissing})';
}


}

/// @nodoc
abstract mixin class $ChecklistSummaryCopyWith<$Res>  {
  factory $ChecklistSummaryCopyWith(ChecklistSummary value, $Res Function(ChecklistSummary) _then) = _$ChecklistSummaryCopyWithImpl;
@useResult
$Res call({
 String runId, String status, int totalItems, int answeredItems, int notOkItems, int photoMissing
});




}
/// @nodoc
class _$ChecklistSummaryCopyWithImpl<$Res>
    implements $ChecklistSummaryCopyWith<$Res> {
  _$ChecklistSummaryCopyWithImpl(this._self, this._then);

  final ChecklistSummary _self;
  final $Res Function(ChecklistSummary) _then;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? runId = null,Object? status = null,Object? totalItems = null,Object? answeredItems = null,Object? notOkItems = null,Object? photoMissing = null,}) {
  return _then(ChecklistSummary(
runId: null == runId ? _self.runId : runId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,answeredItems: null == answeredItems ? _self.answeredItems : answeredItems // ignore: cast_nullable_to_non_nullable
as int,notOkItems: null == notOkItems ? _self.notOkItems : notOkItems // ignore: cast_nullable_to_non_nullable
as int,photoMissing: null == photoMissing ? _self.photoMissing : photoMissing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistSummary].
extension ChecklistSummaryPatterns on ChecklistSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistSummary value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String runId,  String status,  int totalItems,  int answeredItems,  int notOkItems,  int photoMissing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
return $default(_that.runId,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.photoMissing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String runId,  String status,  int totalItems,  int answeredItems,  int notOkItems,  int photoMissing)  $default,) {final _that = this;
switch (_that) {
case _ChecklistSummary():
return $default(_that.runId,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.photoMissing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String runId,  String status,  int totalItems,  int answeredItems,  int notOkItems,  int photoMissing)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
return $default(_that.runId,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.photoMissing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistSummary implements ChecklistSummary {
  const _ChecklistSummary({required this.runId, required this.status, this.totalItems = 0, this.answeredItems = 0, this.notOkItems = 0, this.photoMissing = 0});
  factory _ChecklistSummary.fromJson(Map<String, dynamic> json) => _$ChecklistSummaryFromJson(json);

@override final  String runId;
@override final  String status;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int answeredItems;
@override@JsonKey() final  int notOkItems;
@override@JsonKey() final  int photoMissing;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistSummaryCopyWith<_ChecklistSummary> get copyWith => __$ChecklistSummaryCopyWithImpl<_ChecklistSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistSummary&&(identical(other.runId, runId) || other.runId == runId)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.answeredItems, answeredItems) || other.answeredItems == answeredItems)&&(identical(other.notOkItems, notOkItems) || other.notOkItems == notOkItems)&&(identical(other.photoMissing, photoMissing) || other.photoMissing == photoMissing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,runId,status,totalItems,answeredItems,notOkItems,photoMissing);
}

@override
String toString() {
    return 'ChecklistSummary(runId: $runId, status: $status, totalItems: $totalItems, answeredItems: $answeredItems, notOkItems: $notOkItems, photoMissing: $photoMissing)';
}


}

/// @nodoc
abstract mixin class _$ChecklistSummaryCopyWith<$Res> implements $ChecklistSummaryCopyWith<$Res> {
  factory _$ChecklistSummaryCopyWith(_ChecklistSummary value, $Res Function(_ChecklistSummary) _then) = __$ChecklistSummaryCopyWithImpl;
@override @useResult
$Res call({
 String runId, String status, int totalItems, int answeredItems, int notOkItems, int photoMissing
});




}
/// @nodoc
class __$ChecklistSummaryCopyWithImpl<$Res>
    implements _$ChecklistSummaryCopyWith<$Res> {
  __$ChecklistSummaryCopyWithImpl(this._self, this._then);

  final _ChecklistSummary _self;
  final $Res Function(_ChecklistSummary) _then;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? runId = null,Object? status = null,Object? totalItems = null,Object? answeredItems = null,Object? notOkItems = null,Object? photoMissing = null,}) {
  return _then(_ChecklistSummary(
runId: null == runId ? _self.runId : runId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,answeredItems: null == answeredItems ? _self.answeredItems : answeredItems // ignore: cast_nullable_to_non_nullable
as int,notOkItems: null == notOkItems ? _self.notOkItems : notOkItems // ignore: cast_nullable_to_non_nullable
as int,photoMissing: null == photoMissing ? _self.photoMissing : photoMissing // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ChecklistRun {

 String get id; String get objectType; String get objectId; String get templateId; int get templateVersion; String get templateName; String get status; int get totalItems; int get answeredItems; int get notOkItems; DateTime? get startedAt; DateTime? get completedAt; List<ChecklistRunItem> get items;
/// Create a copy of ChecklistRun
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistRunCopyWith<ChecklistRun> get copyWith => _$ChecklistRunCopyWithImpl<ChecklistRun>(this as ChecklistRun, _$identity);

  /// Serializes this ChecklistRun to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChecklistRun;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistRun&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.templateId, _this.templateId) || other.templateId == _this.templateId)&&(identical(other.templateVersion, _this.templateVersion) || other.templateVersion == _this.templateVersion)&&(identical(other.templateName, _this.templateName) || other.templateName == _this.templateName)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.answeredItems, _this.answeredItems) || other.answeredItems == _this.answeredItems)&&(identical(other.notOkItems, _this.notOkItems) || other.notOkItems == _this.notOkItems)&&(identical(other.startedAt, _this.startedAt) || other.startedAt == _this.startedAt)&&(identical(other.completedAt, _this.completedAt) || other.completedAt == _this.completedAt)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChecklistRun;
  return Object.hash(runtimeType,_this.id,_this.objectType,_this.objectId,_this.templateId,_this.templateVersion,_this.templateName,_this.status,_this.totalItems,_this.answeredItems,_this.notOkItems,_this.startedAt,_this.completedAt,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as ChecklistRun;
  return 'ChecklistRun(id: ${_this.id}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, templateId: ${_this.templateId}, templateVersion: ${_this.templateVersion}, templateName: ${_this.templateName}, status: ${_this.status}, totalItems: ${_this.totalItems}, answeredItems: ${_this.answeredItems}, notOkItems: ${_this.notOkItems}, startedAt: ${_this.startedAt}, completedAt: ${_this.completedAt}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $ChecklistRunCopyWith<$Res>  {
  factory $ChecklistRunCopyWith(ChecklistRun value, $Res Function(ChecklistRun) _then) = _$ChecklistRunCopyWithImpl;
@useResult
$Res call({
 String id, String objectType, String objectId, String templateId, int templateVersion, String templateName, String status, int totalItems, int answeredItems, int notOkItems, DateTime? startedAt, DateTime? completedAt, List<ChecklistRunItem> items
});




}
/// @nodoc
class _$ChecklistRunCopyWithImpl<$Res>
    implements $ChecklistRunCopyWith<$Res> {
  _$ChecklistRunCopyWithImpl(this._self, this._then);

  final ChecklistRun _self;
  final $Res Function(ChecklistRun) _then;

/// Create a copy of ChecklistRun
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? templateId = null,Object? templateVersion = null,Object? templateName = null,Object? status = null,Object? totalItems = null,Object? answeredItems = null,Object? notOkItems = null,Object? startedAt = freezed,Object? completedAt = freezed,Object? items = null,}) {
  return _then(ChecklistRun(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateVersion: null == templateVersion ? _self.templateVersion : templateVersion // ignore: cast_nullable_to_non_nullable
as int,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,answeredItems: null == answeredItems ? _self.answeredItems : answeredItems // ignore: cast_nullable_to_non_nullable
as int,notOkItems: null == notOkItems ? _self.notOkItems : notOkItems // ignore: cast_nullable_to_non_nullable
as int,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistRunItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistRun].
extension ChecklistRunPatterns on ChecklistRun {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistRun value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistRun() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistRun value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistRun():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistRun value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistRun() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String templateId,  int templateVersion,  String templateName,  String status,  int totalItems,  int answeredItems,  int notOkItems,  DateTime? startedAt,  DateTime? completedAt,  List<ChecklistRunItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistRun() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.templateId,_that.templateVersion,_that.templateName,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.startedAt,_that.completedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String templateId,  int templateVersion,  String templateName,  String status,  int totalItems,  int answeredItems,  int notOkItems,  DateTime? startedAt,  DateTime? completedAt,  List<ChecklistRunItem> items)  $default,) {final _that = this;
switch (_that) {
case _ChecklistRun():
return $default(_that.id,_that.objectType,_that.objectId,_that.templateId,_that.templateVersion,_that.templateName,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.startedAt,_that.completedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectType,  String objectId,  String templateId,  int templateVersion,  String templateName,  String status,  int totalItems,  int answeredItems,  int notOkItems,  DateTime? startedAt,  DateTime? completedAt,  List<ChecklistRunItem> items)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistRun() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.templateId,_that.templateVersion,_that.templateName,_that.status,_that.totalItems,_that.answeredItems,_that.notOkItems,_that.startedAt,_that.completedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistRun extends ChecklistRun {
  const _ChecklistRun({required this.id, required this.objectType, required this.objectId, required this.templateId, this.templateVersion = 1, this.templateName = '', required this.status, this.totalItems = 0, this.answeredItems = 0, this.notOkItems = 0, this.startedAt, this.completedAt,  List<ChecklistRunItem> items = const <ChecklistRunItem>[]}): _items = items,super._();
  factory _ChecklistRun.fromJson(Map<String, dynamic> json) => _$ChecklistRunFromJson(json);

@override final  String id;
@override final  String objectType;
@override final  String objectId;
@override final  String templateId;
@override@JsonKey() final  int templateVersion;
@override@JsonKey() final  String templateName;
@override final  String status;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int answeredItems;
@override@JsonKey() final  int notOkItems;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;
 final  List<ChecklistRunItem> _items;
@override@JsonKey() List<ChecklistRunItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ChecklistRun
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistRunCopyWith<_ChecklistRun> get copyWith => __$ChecklistRunCopyWithImpl<_ChecklistRun>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistRunToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistRun&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.templateVersion, templateVersion) || other.templateVersion == templateVersion)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.answeredItems, answeredItems) || other.answeredItems == answeredItems)&&(identical(other.notOkItems, notOkItems) || other.notOkItems == notOkItems)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,objectType,objectId,templateId,templateVersion,templateName,status,totalItems,answeredItems,notOkItems,startedAt,completedAt,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'ChecklistRun(id: $id, objectType: $objectType, objectId: $objectId, templateId: $templateId, templateVersion: $templateVersion, templateName: $templateName, status: $status, totalItems: $totalItems, answeredItems: $answeredItems, notOkItems: $notOkItems, startedAt: $startedAt, completedAt: $completedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ChecklistRunCopyWith<$Res> implements $ChecklistRunCopyWith<$Res> {
  factory _$ChecklistRunCopyWith(_ChecklistRun value, $Res Function(_ChecklistRun) _then) = __$ChecklistRunCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectType, String objectId, String templateId, int templateVersion, String templateName, String status, int totalItems, int answeredItems, int notOkItems, DateTime? startedAt, DateTime? completedAt, List<ChecklistRunItem> items
});




}
/// @nodoc
class __$ChecklistRunCopyWithImpl<$Res>
    implements _$ChecklistRunCopyWith<$Res> {
  __$ChecklistRunCopyWithImpl(this._self, this._then);

  final _ChecklistRun _self;
  final $Res Function(_ChecklistRun) _then;

/// Create a copy of ChecklistRun
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? templateId = null,Object? templateVersion = null,Object? templateName = null,Object? status = null,Object? totalItems = null,Object? answeredItems = null,Object? notOkItems = null,Object? startedAt = freezed,Object? completedAt = freezed,Object? items = null,}) {
  return _then(_ChecklistRun(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateVersion: null == templateVersion ? _self.templateVersion : templateVersion // ignore: cast_nullable_to_non_nullable
as int,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,answeredItems: null == answeredItems ? _self.answeredItems : answeredItems // ignore: cast_nullable_to_non_nullable
as int,notOkItems: null == notOkItems ? _self.notOkItems : notOkItems // ignore: cast_nullable_to_non_nullable
as int,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistRunItem>,
  ));
}


}


/// @nodoc
mixin _$ChecklistRunItem {

 String get id; int get sortOrder; String get label; String get itemType; String? get section; bool get isRequired; bool get photoRequired; double? get numericMin; double? get numericMax; String? get numericUnit; String? get resultValue; double? get resultNumber; String? get resultText; String? get note; String? get attachmentId; String? get findingId; bool get outOfRange; DateTime? get answeredAt; String? get answeredBy; String? get answeredByName; String? get answeredSource;
/// Create a copy of ChecklistRunItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistRunItemCopyWith<ChecklistRunItem> get copyWith => _$ChecklistRunItemCopyWithImpl<ChecklistRunItem>(this as ChecklistRunItem, _$identity);

  /// Serializes this ChecklistRunItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChecklistRunItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistRunItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.itemType, _this.itemType) || other.itemType == _this.itemType)&&(identical(other.section, _this.section) || other.section == _this.section)&&(identical(other.isRequired, _this.isRequired) || other.isRequired == _this.isRequired)&&(identical(other.photoRequired, _this.photoRequired) || other.photoRequired == _this.photoRequired)&&(identical(other.numericMin, _this.numericMin) || other.numericMin == _this.numericMin)&&(identical(other.numericMax, _this.numericMax) || other.numericMax == _this.numericMax)&&(identical(other.numericUnit, _this.numericUnit) || other.numericUnit == _this.numericUnit)&&(identical(other.resultValue, _this.resultValue) || other.resultValue == _this.resultValue)&&(identical(other.resultNumber, _this.resultNumber) || other.resultNumber == _this.resultNumber)&&(identical(other.resultText, _this.resultText) || other.resultText == _this.resultText)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.attachmentId, _this.attachmentId) || other.attachmentId == _this.attachmentId)&&(identical(other.findingId, _this.findingId) || other.findingId == _this.findingId)&&(identical(other.outOfRange, _this.outOfRange) || other.outOfRange == _this.outOfRange)&&(identical(other.answeredAt, _this.answeredAt) || other.answeredAt == _this.answeredAt)&&(identical(other.answeredBy, _this.answeredBy) || other.answeredBy == _this.answeredBy)&&(identical(other.answeredByName, _this.answeredByName) || other.answeredByName == _this.answeredByName)&&(identical(other.answeredSource, _this.answeredSource) || other.answeredSource == _this.answeredSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChecklistRunItem;
  return Object.hashAll([runtimeType,_this.id,_this.sortOrder,_this.label,_this.itemType,_this.section,_this.isRequired,_this.photoRequired,_this.numericMin,_this.numericMax,_this.numericUnit,_this.resultValue,_this.resultNumber,_this.resultText,_this.note,_this.attachmentId,_this.findingId,_this.outOfRange,_this.answeredAt,_this.answeredBy,_this.answeredByName,_this.answeredSource]);
}

@override
String toString() {
  final _this = this as ChecklistRunItem;
  return 'ChecklistRunItem(id: ${_this.id}, sortOrder: ${_this.sortOrder}, label: ${_this.label}, itemType: ${_this.itemType}, section: ${_this.section}, isRequired: ${_this.isRequired}, photoRequired: ${_this.photoRequired}, numericMin: ${_this.numericMin}, numericMax: ${_this.numericMax}, numericUnit: ${_this.numericUnit}, resultValue: ${_this.resultValue}, resultNumber: ${_this.resultNumber}, resultText: ${_this.resultText}, note: ${_this.note}, attachmentId: ${_this.attachmentId}, findingId: ${_this.findingId}, outOfRange: ${_this.outOfRange}, answeredAt: ${_this.answeredAt}, answeredBy: ${_this.answeredBy}, answeredByName: ${_this.answeredByName}, answeredSource: ${_this.answeredSource})';
}


}

/// @nodoc
abstract mixin class $ChecklistRunItemCopyWith<$Res>  {
  factory $ChecklistRunItemCopyWith(ChecklistRunItem value, $Res Function(ChecklistRunItem) _then) = _$ChecklistRunItemCopyWithImpl;
@useResult
$Res call({
 String id, int sortOrder, String label, String itemType, String? section, bool isRequired, bool photoRequired, double? numericMin, double? numericMax, String? numericUnit, String? resultValue, double? resultNumber, String? resultText, String? note, String? attachmentId, String? findingId, bool outOfRange, DateTime? answeredAt, String? answeredBy, String? answeredByName, String? answeredSource
});




}
/// @nodoc
class _$ChecklistRunItemCopyWithImpl<$Res>
    implements $ChecklistRunItemCopyWith<$Res> {
  _$ChecklistRunItemCopyWithImpl(this._self, this._then);

  final ChecklistRunItem _self;
  final $Res Function(ChecklistRunItem) _then;

/// Create a copy of ChecklistRunItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sortOrder = null,Object? label = null,Object? itemType = null,Object? section = freezed,Object? isRequired = null,Object? photoRequired = null,Object? numericMin = freezed,Object? numericMax = freezed,Object? numericUnit = freezed,Object? resultValue = freezed,Object? resultNumber = freezed,Object? resultText = freezed,Object? note = freezed,Object? attachmentId = freezed,Object? findingId = freezed,Object? outOfRange = null,Object? answeredAt = freezed,Object? answeredBy = freezed,Object? answeredByName = freezed,Object? answeredSource = freezed,}) {
  return _then(ChecklistRunItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,photoRequired: null == photoRequired ? _self.photoRequired : photoRequired // ignore: cast_nullable_to_non_nullable
as bool,numericMin: freezed == numericMin ? _self.numericMin : numericMin // ignore: cast_nullable_to_non_nullable
as double?,numericMax: freezed == numericMax ? _self.numericMax : numericMax // ignore: cast_nullable_to_non_nullable
as double?,numericUnit: freezed == numericUnit ? _self.numericUnit : numericUnit // ignore: cast_nullable_to_non_nullable
as String?,resultValue: freezed == resultValue ? _self.resultValue : resultValue // ignore: cast_nullable_to_non_nullable
as String?,resultNumber: freezed == resultNumber ? _self.resultNumber : resultNumber // ignore: cast_nullable_to_non_nullable
as double?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,findingId: freezed == findingId ? _self.findingId : findingId // ignore: cast_nullable_to_non_nullable
as String?,outOfRange: null == outOfRange ? _self.outOfRange : outOfRange // ignore: cast_nullable_to_non_nullable
as bool,answeredAt: freezed == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,answeredBy: freezed == answeredBy ? _self.answeredBy : answeredBy // ignore: cast_nullable_to_non_nullable
as String?,answeredByName: freezed == answeredByName ? _self.answeredByName : answeredByName // ignore: cast_nullable_to_non_nullable
as String?,answeredSource: freezed == answeredSource ? _self.answeredSource : answeredSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistRunItem].
extension ChecklistRunItemPatterns on ChecklistRunItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistRunItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistRunItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistRunItem value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistRunItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistRunItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistRunItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int sortOrder,  String label,  String itemType,  String? section,  bool isRequired,  bool photoRequired,  double? numericMin,  double? numericMax,  String? numericUnit,  String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? findingId,  bool outOfRange,  DateTime? answeredAt,  String? answeredBy,  String? answeredByName,  String? answeredSource)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistRunItem() when $default != null:
return $default(_that.id,_that.sortOrder,_that.label,_that.itemType,_that.section,_that.isRequired,_that.photoRequired,_that.numericMin,_that.numericMax,_that.numericUnit,_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.findingId,_that.outOfRange,_that.answeredAt,_that.answeredBy,_that.answeredByName,_that.answeredSource);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int sortOrder,  String label,  String itemType,  String? section,  bool isRequired,  bool photoRequired,  double? numericMin,  double? numericMax,  String? numericUnit,  String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? findingId,  bool outOfRange,  DateTime? answeredAt,  String? answeredBy,  String? answeredByName,  String? answeredSource)  $default,) {final _that = this;
switch (_that) {
case _ChecklistRunItem():
return $default(_that.id,_that.sortOrder,_that.label,_that.itemType,_that.section,_that.isRequired,_that.photoRequired,_that.numericMin,_that.numericMax,_that.numericUnit,_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.findingId,_that.outOfRange,_that.answeredAt,_that.answeredBy,_that.answeredByName,_that.answeredSource);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int sortOrder,  String label,  String itemType,  String? section,  bool isRequired,  bool photoRequired,  double? numericMin,  double? numericMax,  String? numericUnit,  String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? findingId,  bool outOfRange,  DateTime? answeredAt,  String? answeredBy,  String? answeredByName,  String? answeredSource)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistRunItem() when $default != null:
return $default(_that.id,_that.sortOrder,_that.label,_that.itemType,_that.section,_that.isRequired,_that.photoRequired,_that.numericMin,_that.numericMax,_that.numericUnit,_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.findingId,_that.outOfRange,_that.answeredAt,_that.answeredBy,_that.answeredByName,_that.answeredSource);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistRunItem extends ChecklistRunItem {
  const _ChecklistRunItem({required this.id, required this.sortOrder, required this.label, required this.itemType, this.section, this.isRequired = false, this.photoRequired = false, this.numericMin, this.numericMax, this.numericUnit, this.resultValue, this.resultNumber, this.resultText, this.note, this.attachmentId, this.findingId, this.outOfRange = false, this.answeredAt, this.answeredBy, this.answeredByName, this.answeredSource}): super._();
  factory _ChecklistRunItem.fromJson(Map<String, dynamic> json) => _$ChecklistRunItemFromJson(json);

@override final  String id;
@override final  int sortOrder;
@override final  String label;
@override final  String itemType;
@override final  String? section;
@override@JsonKey() final  bool isRequired;
@override@JsonKey() final  bool photoRequired;
@override final  double? numericMin;
@override final  double? numericMax;
@override final  String? numericUnit;
@override final  String? resultValue;
@override final  double? resultNumber;
@override final  String? resultText;
@override final  String? note;
@override final  String? attachmentId;
@override final  String? findingId;
@override@JsonKey() final  bool outOfRange;
@override final  DateTime? answeredAt;
@override final  String? answeredBy;
@override final  String? answeredByName;
@override final  String? answeredSource;

/// Create a copy of ChecklistRunItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistRunItemCopyWith<_ChecklistRunItem> get copyWith => __$ChecklistRunItemCopyWithImpl<_ChecklistRunItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistRunItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistRunItem&&(identical(other.id, id) || other.id == id)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.label, label) || other.label == label)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.section, section) || other.section == section)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.photoRequired, photoRequired) || other.photoRequired == photoRequired)&&(identical(other.numericMin, numericMin) || other.numericMin == numericMin)&&(identical(other.numericMax, numericMax) || other.numericMax == numericMax)&&(identical(other.numericUnit, numericUnit) || other.numericUnit == numericUnit)&&(identical(other.resultValue, resultValue) || other.resultValue == resultValue)&&(identical(other.resultNumber, resultNumber) || other.resultNumber == resultNumber)&&(identical(other.resultText, resultText) || other.resultText == resultText)&&(identical(other.note, note) || other.note == note)&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.findingId, findingId) || other.findingId == findingId)&&(identical(other.outOfRange, outOfRange) || other.outOfRange == outOfRange)&&(identical(other.answeredAt, answeredAt) || other.answeredAt == answeredAt)&&(identical(other.answeredBy, answeredBy) || other.answeredBy == answeredBy)&&(identical(other.answeredByName, answeredByName) || other.answeredByName == answeredByName)&&(identical(other.answeredSource, answeredSource) || other.answeredSource == answeredSource));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,sortOrder,label,itemType,section,isRequired,photoRequired,numericMin,numericMax,numericUnit,resultValue,resultNumber,resultText,note,attachmentId,findingId,outOfRange,answeredAt,answeredBy,answeredByName,answeredSource]);
}

@override
String toString() {
    return 'ChecklistRunItem(id: $id, sortOrder: $sortOrder, label: $label, itemType: $itemType, section: $section, isRequired: $isRequired, photoRequired: $photoRequired, numericMin: $numericMin, numericMax: $numericMax, numericUnit: $numericUnit, resultValue: $resultValue, resultNumber: $resultNumber, resultText: $resultText, note: $note, attachmentId: $attachmentId, findingId: $findingId, outOfRange: $outOfRange, answeredAt: $answeredAt, answeredBy: $answeredBy, answeredByName: $answeredByName, answeredSource: $answeredSource)';
}


}

/// @nodoc
abstract mixin class _$ChecklistRunItemCopyWith<$Res> implements $ChecklistRunItemCopyWith<$Res> {
  factory _$ChecklistRunItemCopyWith(_ChecklistRunItem value, $Res Function(_ChecklistRunItem) _then) = __$ChecklistRunItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int sortOrder, String label, String itemType, String? section, bool isRequired, bool photoRequired, double? numericMin, double? numericMax, String? numericUnit, String? resultValue, double? resultNumber, String? resultText, String? note, String? attachmentId, String? findingId, bool outOfRange, DateTime? answeredAt, String? answeredBy, String? answeredByName, String? answeredSource
});




}
/// @nodoc
class __$ChecklistRunItemCopyWithImpl<$Res>
    implements _$ChecklistRunItemCopyWith<$Res> {
  __$ChecklistRunItemCopyWithImpl(this._self, this._then);

  final _ChecklistRunItem _self;
  final $Res Function(_ChecklistRunItem) _then;

/// Create a copy of ChecklistRunItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sortOrder = null,Object? label = null,Object? itemType = null,Object? section = freezed,Object? isRequired = null,Object? photoRequired = null,Object? numericMin = freezed,Object? numericMax = freezed,Object? numericUnit = freezed,Object? resultValue = freezed,Object? resultNumber = freezed,Object? resultText = freezed,Object? note = freezed,Object? attachmentId = freezed,Object? findingId = freezed,Object? outOfRange = null,Object? answeredAt = freezed,Object? answeredBy = freezed,Object? answeredByName = freezed,Object? answeredSource = freezed,}) {
  return _then(_ChecklistRunItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,photoRequired: null == photoRequired ? _self.photoRequired : photoRequired // ignore: cast_nullable_to_non_nullable
as bool,numericMin: freezed == numericMin ? _self.numericMin : numericMin // ignore: cast_nullable_to_non_nullable
as double?,numericMax: freezed == numericMax ? _self.numericMax : numericMax // ignore: cast_nullable_to_non_nullable
as double?,numericUnit: freezed == numericUnit ? _self.numericUnit : numericUnit // ignore: cast_nullable_to_non_nullable
as String?,resultValue: freezed == resultValue ? _self.resultValue : resultValue // ignore: cast_nullable_to_non_nullable
as String?,resultNumber: freezed == resultNumber ? _self.resultNumber : resultNumber // ignore: cast_nullable_to_non_nullable
as double?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,findingId: freezed == findingId ? _self.findingId : findingId // ignore: cast_nullable_to_non_nullable
as String?,outOfRange: null == outOfRange ? _self.outOfRange : outOfRange // ignore: cast_nullable_to_non_nullable
as bool,answeredAt: freezed == answeredAt ? _self.answeredAt : answeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,answeredBy: freezed == answeredBy ? _self.answeredBy : answeredBy // ignore: cast_nullable_to_non_nullable
as String?,answeredByName: freezed == answeredByName ? _self.answeredByName : answeredByName // ignore: cast_nullable_to_non_nullable
as String?,answeredSource: freezed == answeredSource ? _self.answeredSource : answeredSource // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
