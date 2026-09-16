// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patrol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatrolBundle {

 WorkItem get task; List<CheckpointScan> get checkpoints;
/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatrolBundleCopyWith<PatrolBundle> get copyWith => _$PatrolBundleCopyWithImpl<PatrolBundle>(this as PatrolBundle, _$identity);

  /// Serializes this PatrolBundle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatrolBundle;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatrolBundle&&(identical(other.task, _this.task) || other.task == _this.task)&&const DeepCollectionEquality().equals(other.checkpoints, _this.checkpoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatrolBundle;
  return Object.hash(runtimeType,_this.task,const DeepCollectionEquality().hash(_this.checkpoints));
}

@override
String toString() {
  final _this = this as PatrolBundle;
  return 'PatrolBundle(task: ${_this.task}, checkpoints: ${_this.checkpoints})';
}


}

/// @nodoc
abstract mixin class $PatrolBundleCopyWith<$Res>  {
  factory $PatrolBundleCopyWith(PatrolBundle value, $Res Function(PatrolBundle) _then) = _$PatrolBundleCopyWithImpl;
@useResult
$Res call({
 WorkItem task, List<CheckpointScan> checkpoints
});


$WorkItemCopyWith<$Res> get task;

}
/// @nodoc
class _$PatrolBundleCopyWithImpl<$Res>
    implements $PatrolBundleCopyWith<$Res> {
  _$PatrolBundleCopyWithImpl(this._self, this._then);

  final PatrolBundle _self;
  final $Res Function(PatrolBundle) _then;

/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? task = null,Object? checkpoints = null,}) {
  return _then(PatrolBundle(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as WorkItem,checkpoints: null == checkpoints ? _self.checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<CheckpointScan>,
  ));
}
/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkItemCopyWith<$Res> get task {
  
  return $WorkItemCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatrolBundle].
extension PatrolBundlePatterns on PatrolBundle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatrolBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatrolBundle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatrolBundle value)  $default,){
final _that = this;
switch (_that) {
case _PatrolBundle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatrolBundle value)?  $default,){
final _that = this;
switch (_that) {
case _PatrolBundle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkItem task,  List<CheckpointScan> checkpoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatrolBundle() when $default != null:
return $default(_that.task,_that.checkpoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkItem task,  List<CheckpointScan> checkpoints)  $default,) {final _that = this;
switch (_that) {
case _PatrolBundle():
return $default(_that.task,_that.checkpoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkItem task,  List<CheckpointScan> checkpoints)?  $default,) {final _that = this;
switch (_that) {
case _PatrolBundle() when $default != null:
return $default(_that.task,_that.checkpoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatrolBundle implements PatrolBundle {
  const _PatrolBundle({required this.task,  List<CheckpointScan> checkpoints = const <CheckpointScan>[]}): _checkpoints = checkpoints;
  factory _PatrolBundle.fromJson(Map<String, dynamic> json) => _$PatrolBundleFromJson(json);

@override final  WorkItem task;
 final  List<CheckpointScan> _checkpoints;
@override@JsonKey() List<CheckpointScan> get checkpoints {
  if (_checkpoints is EqualUnmodifiableListView) return _checkpoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checkpoints);
}


/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatrolBundleCopyWith<_PatrolBundle> get copyWith => __$PatrolBundleCopyWithImpl<_PatrolBundle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatrolBundleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatrolBundle&&(identical(other.task, task) || other.task == task)&&const DeepCollectionEquality().equals(other.checkpoints, _checkpoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,task,const DeepCollectionEquality().hash(_checkpoints));
}

@override
String toString() {
    return 'PatrolBundle(task: $task, checkpoints: $checkpoints)';
}


}

/// @nodoc
abstract mixin class _$PatrolBundleCopyWith<$Res> implements $PatrolBundleCopyWith<$Res> {
  factory _$PatrolBundleCopyWith(_PatrolBundle value, $Res Function(_PatrolBundle) _then) = __$PatrolBundleCopyWithImpl;
@override @useResult
$Res call({
 WorkItem task, List<CheckpointScan> checkpoints
});


@override $WorkItemCopyWith<$Res> get task;

}
/// @nodoc
class __$PatrolBundleCopyWithImpl<$Res>
    implements _$PatrolBundleCopyWith<$Res> {
  __$PatrolBundleCopyWithImpl(this._self, this._then);

  final _PatrolBundle _self;
  final $Res Function(_PatrolBundle) _then;

/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? task = null,Object? checkpoints = null,}) {
  return _then(_PatrolBundle(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as WorkItem,checkpoints: null == checkpoints ? _self._checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<CheckpointScan>,
  ));
}

/// Create a copy of PatrolBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkItemCopyWith<$Res> get task {
  
  return $WorkItemCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}


/// @nodoc
mixin _$CheckpointScan {

 String get id; String get checkpointId; String get checkpointName; String get locationPath; int get sortOrder; String get status; String? get qrCode; String? get instructions; String? get checklistTemplateId; String? get scanMethod; String? get gpsStatus; String? get note; String? get missedReason; DateTime? get scannedAt; String? get scannedBy;
/// Create a copy of CheckpointScan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckpointScanCopyWith<CheckpointScan> get copyWith => _$CheckpointScanCopyWithImpl<CheckpointScan>(this as CheckpointScan, _$identity);

  /// Serializes this CheckpointScan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CheckpointScan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckpointScan&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.checkpointId, _this.checkpointId) || other.checkpointId == _this.checkpointId)&&(identical(other.checkpointName, _this.checkpointName) || other.checkpointName == _this.checkpointName)&&(identical(other.locationPath, _this.locationPath) || other.locationPath == _this.locationPath)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.qrCode, _this.qrCode) || other.qrCode == _this.qrCode)&&(identical(other.instructions, _this.instructions) || other.instructions == _this.instructions)&&(identical(other.checklistTemplateId, _this.checklistTemplateId) || other.checklistTemplateId == _this.checklistTemplateId)&&(identical(other.scanMethod, _this.scanMethod) || other.scanMethod == _this.scanMethod)&&(identical(other.gpsStatus, _this.gpsStatus) || other.gpsStatus == _this.gpsStatus)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.missedReason, _this.missedReason) || other.missedReason == _this.missedReason)&&(identical(other.scannedAt, _this.scannedAt) || other.scannedAt == _this.scannedAt)&&(identical(other.scannedBy, _this.scannedBy) || other.scannedBy == _this.scannedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CheckpointScan;
  return Object.hash(runtimeType,_this.id,_this.checkpointId,_this.checkpointName,_this.locationPath,_this.sortOrder,_this.status,_this.qrCode,_this.instructions,_this.checklistTemplateId,_this.scanMethod,_this.gpsStatus,_this.note,_this.missedReason,_this.scannedAt,_this.scannedBy);
}

@override
String toString() {
  final _this = this as CheckpointScan;
  return 'CheckpointScan(id: ${_this.id}, checkpointId: ${_this.checkpointId}, checkpointName: ${_this.checkpointName}, locationPath: ${_this.locationPath}, sortOrder: ${_this.sortOrder}, status: ${_this.status}, qrCode: ${_this.qrCode}, instructions: ${_this.instructions}, checklistTemplateId: ${_this.checklistTemplateId}, scanMethod: ${_this.scanMethod}, gpsStatus: ${_this.gpsStatus}, note: ${_this.note}, missedReason: ${_this.missedReason}, scannedAt: ${_this.scannedAt}, scannedBy: ${_this.scannedBy})';
}


}

/// @nodoc
abstract mixin class $CheckpointScanCopyWith<$Res>  {
  factory $CheckpointScanCopyWith(CheckpointScan value, $Res Function(CheckpointScan) _then) = _$CheckpointScanCopyWithImpl;
@useResult
$Res call({
 String id, String checkpointId, String checkpointName, String locationPath, int sortOrder, String status, String? qrCode, String? instructions, String? checklistTemplateId, String? scanMethod, String? gpsStatus, String? note, String? missedReason, DateTime? scannedAt, String? scannedBy
});




}
/// @nodoc
class _$CheckpointScanCopyWithImpl<$Res>
    implements $CheckpointScanCopyWith<$Res> {
  _$CheckpointScanCopyWithImpl(this._self, this._then);

  final CheckpointScan _self;
  final $Res Function(CheckpointScan) _then;

/// Create a copy of CheckpointScan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? checkpointId = null,Object? checkpointName = null,Object? locationPath = null,Object? sortOrder = null,Object? status = null,Object? qrCode = freezed,Object? instructions = freezed,Object? checklistTemplateId = freezed,Object? scanMethod = freezed,Object? gpsStatus = freezed,Object? note = freezed,Object? missedReason = freezed,Object? scannedAt = freezed,Object? scannedBy = freezed,}) {
  return _then(CheckpointScan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checkpointId: null == checkpointId ? _self.checkpointId : checkpointId // ignore: cast_nullable_to_non_nullable
as String,checkpointName: null == checkpointName ? _self.checkpointName : checkpointName // ignore: cast_nullable_to_non_nullable
as String,locationPath: null == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,scanMethod: freezed == scanMethod ? _self.scanMethod : scanMethod // ignore: cast_nullable_to_non_nullable
as String?,gpsStatus: freezed == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,missedReason: freezed == missedReason ? _self.missedReason : missedReason // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scannedBy: freezed == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckpointScan].
extension CheckpointScanPatterns on CheckpointScan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckpointScan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckpointScan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckpointScan value)  $default,){
final _that = this;
switch (_that) {
case _CheckpointScan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckpointScan value)?  $default,){
final _that = this;
switch (_that) {
case _CheckpointScan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String checkpointId,  String checkpointName,  String locationPath,  int sortOrder,  String status,  String? qrCode,  String? instructions,  String? checklistTemplateId,  String? scanMethod,  String? gpsStatus,  String? note,  String? missedReason,  DateTime? scannedAt,  String? scannedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckpointScan() when $default != null:
return $default(_that.id,_that.checkpointId,_that.checkpointName,_that.locationPath,_that.sortOrder,_that.status,_that.qrCode,_that.instructions,_that.checklistTemplateId,_that.scanMethod,_that.gpsStatus,_that.note,_that.missedReason,_that.scannedAt,_that.scannedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String checkpointId,  String checkpointName,  String locationPath,  int sortOrder,  String status,  String? qrCode,  String? instructions,  String? checklistTemplateId,  String? scanMethod,  String? gpsStatus,  String? note,  String? missedReason,  DateTime? scannedAt,  String? scannedBy)  $default,) {final _that = this;
switch (_that) {
case _CheckpointScan():
return $default(_that.id,_that.checkpointId,_that.checkpointName,_that.locationPath,_that.sortOrder,_that.status,_that.qrCode,_that.instructions,_that.checklistTemplateId,_that.scanMethod,_that.gpsStatus,_that.note,_that.missedReason,_that.scannedAt,_that.scannedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String checkpointId,  String checkpointName,  String locationPath,  int sortOrder,  String status,  String? qrCode,  String? instructions,  String? checklistTemplateId,  String? scanMethod,  String? gpsStatus,  String? note,  String? missedReason,  DateTime? scannedAt,  String? scannedBy)?  $default,) {final _that = this;
switch (_that) {
case _CheckpointScan() when $default != null:
return $default(_that.id,_that.checkpointId,_that.checkpointName,_that.locationPath,_that.sortOrder,_that.status,_that.qrCode,_that.instructions,_that.checklistTemplateId,_that.scanMethod,_that.gpsStatus,_that.note,_that.missedReason,_that.scannedAt,_that.scannedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckpointScan extends CheckpointScan {
  const _CheckpointScan({required this.id, required this.checkpointId, required this.checkpointName, this.locationPath = '', this.sortOrder = 0, this.status = 'pending', this.qrCode, this.instructions, this.checklistTemplateId, this.scanMethod, this.gpsStatus, this.note, this.missedReason, this.scannedAt, this.scannedBy}): super._();
  factory _CheckpointScan.fromJson(Map<String, dynamic> json) => _$CheckpointScanFromJson(json);

@override final  String id;
@override final  String checkpointId;
@override final  String checkpointName;
@override@JsonKey() final  String locationPath;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  String status;
@override final  String? qrCode;
@override final  String? instructions;
@override final  String? checklistTemplateId;
@override final  String? scanMethod;
@override final  String? gpsStatus;
@override final  String? note;
@override final  String? missedReason;
@override final  DateTime? scannedAt;
@override final  String? scannedBy;

/// Create a copy of CheckpointScan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckpointScanCopyWith<_CheckpointScan> get copyWith => __$CheckpointScanCopyWithImpl<_CheckpointScan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckpointScanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckpointScan&&(identical(other.id, id) || other.id == id)&&(identical(other.checkpointId, checkpointId) || other.checkpointId == checkpointId)&&(identical(other.checkpointName, checkpointName) || other.checkpointName == checkpointName)&&(identical(other.locationPath, locationPath) || other.locationPath == locationPath)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.status, status) || other.status == status)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.checklistTemplateId, checklistTemplateId) || other.checklistTemplateId == checklistTemplateId)&&(identical(other.scanMethod, scanMethod) || other.scanMethod == scanMethod)&&(identical(other.gpsStatus, gpsStatus) || other.gpsStatus == gpsStatus)&&(identical(other.note, note) || other.note == note)&&(identical(other.missedReason, missedReason) || other.missedReason == missedReason)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt)&&(identical(other.scannedBy, scannedBy) || other.scannedBy == scannedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,checkpointId,checkpointName,locationPath,sortOrder,status,qrCode,instructions,checklistTemplateId,scanMethod,gpsStatus,note,missedReason,scannedAt,scannedBy);
}

@override
String toString() {
    return 'CheckpointScan(id: $id, checkpointId: $checkpointId, checkpointName: $checkpointName, locationPath: $locationPath, sortOrder: $sortOrder, status: $status, qrCode: $qrCode, instructions: $instructions, checklistTemplateId: $checklistTemplateId, scanMethod: $scanMethod, gpsStatus: $gpsStatus, note: $note, missedReason: $missedReason, scannedAt: $scannedAt, scannedBy: $scannedBy)';
}


}

/// @nodoc
abstract mixin class _$CheckpointScanCopyWith<$Res> implements $CheckpointScanCopyWith<$Res> {
  factory _$CheckpointScanCopyWith(_CheckpointScan value, $Res Function(_CheckpointScan) _then) = __$CheckpointScanCopyWithImpl;
@override @useResult
$Res call({
 String id, String checkpointId, String checkpointName, String locationPath, int sortOrder, String status, String? qrCode, String? instructions, String? checklistTemplateId, String? scanMethod, String? gpsStatus, String? note, String? missedReason, DateTime? scannedAt, String? scannedBy
});




}
/// @nodoc
class __$CheckpointScanCopyWithImpl<$Res>
    implements _$CheckpointScanCopyWith<$Res> {
  __$CheckpointScanCopyWithImpl(this._self, this._then);

  final _CheckpointScan _self;
  final $Res Function(_CheckpointScan) _then;

/// Create a copy of CheckpointScan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? checkpointId = null,Object? checkpointName = null,Object? locationPath = null,Object? sortOrder = null,Object? status = null,Object? qrCode = freezed,Object? instructions = freezed,Object? checklistTemplateId = freezed,Object? scanMethod = freezed,Object? gpsStatus = freezed,Object? note = freezed,Object? missedReason = freezed,Object? scannedAt = freezed,Object? scannedBy = freezed,}) {
  return _then(_CheckpointScan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checkpointId: null == checkpointId ? _self.checkpointId : checkpointId // ignore: cast_nullable_to_non_nullable
as String,checkpointName: null == checkpointName ? _self.checkpointName : checkpointName // ignore: cast_nullable_to_non_nullable
as String,locationPath: null == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,scanMethod: freezed == scanMethod ? _self.scanMethod : scanMethod // ignore: cast_nullable_to_non_nullable
as String?,gpsStatus: freezed == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,missedReason: freezed == missedReason ? _self.missedReason : missedReason // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scannedBy: freezed == scannedBy ? _self.scannedBy : scannedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
