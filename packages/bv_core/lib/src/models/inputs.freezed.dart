// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransitionInput {

 String get reason; String get gpsStatus; double? get gpsLat; double? get gpsLng; String? get completionNotes; String? get resolution; String? get partsUsage; Money? get actualCost; DateTime? get dueAt; DateTime? get scheduledStartAt; DateTime? get clientRecordedAt;
/// Create a copy of TransitionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransitionInputCopyWith<TransitionInput> get copyWith => _$TransitionInputCopyWithImpl<TransitionInput>(this as TransitionInput, _$identity);

  /// Serializes this TransitionInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransitionInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransitionInput&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.gpsStatus, _this.gpsStatus) || other.gpsStatus == _this.gpsStatus)&&(identical(other.gpsLat, _this.gpsLat) || other.gpsLat == _this.gpsLat)&&(identical(other.gpsLng, _this.gpsLng) || other.gpsLng == _this.gpsLng)&&(identical(other.completionNotes, _this.completionNotes) || other.completionNotes == _this.completionNotes)&&(identical(other.resolution, _this.resolution) || other.resolution == _this.resolution)&&(identical(other.partsUsage, _this.partsUsage) || other.partsUsage == _this.partsUsage)&&(identical(other.actualCost, _this.actualCost) || other.actualCost == _this.actualCost)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.scheduledStartAt, _this.scheduledStartAt) || other.scheduledStartAt == _this.scheduledStartAt)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransitionInput;
  return Object.hash(runtimeType,_this.reason,_this.gpsStatus,_this.gpsLat,_this.gpsLng,_this.completionNotes,_this.resolution,_this.partsUsage,_this.actualCost,_this.dueAt,_this.scheduledStartAt,_this.clientRecordedAt);
}

@override
String toString() {
  final _this = this as TransitionInput;
  return 'TransitionInput(reason: ${_this.reason}, gpsStatus: ${_this.gpsStatus}, gpsLat: ${_this.gpsLat}, gpsLng: ${_this.gpsLng}, completionNotes: ${_this.completionNotes}, resolution: ${_this.resolution}, partsUsage: ${_this.partsUsage}, actualCost: ${_this.actualCost}, dueAt: ${_this.dueAt}, scheduledStartAt: ${_this.scheduledStartAt}, clientRecordedAt: ${_this.clientRecordedAt})';
}


}

/// @nodoc
abstract mixin class $TransitionInputCopyWith<$Res>  {
  factory $TransitionInputCopyWith(TransitionInput value, $Res Function(TransitionInput) _then) = _$TransitionInputCopyWithImpl;
@useResult
$Res call({
 String reason, String gpsStatus, double? gpsLat, double? gpsLng, String? completionNotes, String? resolution, String? partsUsage, Money? actualCost, DateTime? dueAt, DateTime? scheduledStartAt, DateTime? clientRecordedAt
});


$MoneyCopyWith<$Res>? get actualCost;

}
/// @nodoc
class _$TransitionInputCopyWithImpl<$Res>
    implements $TransitionInputCopyWith<$Res> {
  _$TransitionInputCopyWithImpl(this._self, this._then);

  final TransitionInput _self;
  final $Res Function(TransitionInput) _then;

/// Create a copy of TransitionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,Object? gpsStatus = null,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? completionNotes = freezed,Object? resolution = freezed,Object? partsUsage = freezed,Object? actualCost = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(TransitionInput(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,partsUsage: freezed == partsUsage ? _self.partsUsage : partsUsage // ignore: cast_nullable_to_non_nullable
as String?,actualCost: freezed == actualCost ? _self.actualCost : actualCost // ignore: cast_nullable_to_non_nullable
as Money?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of TransitionInput
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


/// Adds pattern-matching-related methods to [TransitionInput].
extension TransitionInputPatterns on TransitionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransitionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransitionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransitionInput value)  $default,){
final _that = this;
switch (_that) {
case _TransitionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransitionInput value)?  $default,){
final _that = this;
switch (_that) {
case _TransitionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reason,  String gpsStatus,  double? gpsLat,  double? gpsLng,  String? completionNotes,  String? resolution,  String? partsUsage,  Money? actualCost,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? clientRecordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransitionInput() when $default != null:
return $default(_that.reason,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.completionNotes,_that.resolution,_that.partsUsage,_that.actualCost,_that.dueAt,_that.scheduledStartAt,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reason,  String gpsStatus,  double? gpsLat,  double? gpsLng,  String? completionNotes,  String? resolution,  String? partsUsage,  Money? actualCost,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? clientRecordedAt)  $default,) {final _that = this;
switch (_that) {
case _TransitionInput():
return $default(_that.reason,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.completionNotes,_that.resolution,_that.partsUsage,_that.actualCost,_that.dueAt,_that.scheduledStartAt,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reason,  String gpsStatus,  double? gpsLat,  double? gpsLng,  String? completionNotes,  String? resolution,  String? partsUsage,  Money? actualCost,  DateTime? dueAt,  DateTime? scheduledStartAt,  DateTime? clientRecordedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransitionInput() when $default != null:
return $default(_that.reason,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.completionNotes,_that.resolution,_that.partsUsage,_that.actualCost,_that.dueAt,_that.scheduledStartAt,_that.clientRecordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransitionInput implements TransitionInput {
  const _TransitionInput({this.reason = '', this.gpsStatus = 'unavailable', this.gpsLat, this.gpsLng, this.completionNotes, this.resolution, this.partsUsage, this.actualCost, this.dueAt, this.scheduledStartAt, this.clientRecordedAt});
  factory _TransitionInput.fromJson(Map<String, dynamic> json) => _$TransitionInputFromJson(json);

@override@JsonKey() final  String reason;
@override@JsonKey() final  String gpsStatus;
@override final  double? gpsLat;
@override final  double? gpsLng;
@override final  String? completionNotes;
@override final  String? resolution;
@override final  String? partsUsage;
@override final  Money? actualCost;
@override final  DateTime? dueAt;
@override final  DateTime? scheduledStartAt;
@override final  DateTime? clientRecordedAt;

/// Create a copy of TransitionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransitionInputCopyWith<_TransitionInput> get copyWith => __$TransitionInputCopyWithImpl<_TransitionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransitionInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransitionInput&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.gpsStatus, gpsStatus) || other.gpsStatus == gpsStatus)&&(identical(other.gpsLat, gpsLat) || other.gpsLat == gpsLat)&&(identical(other.gpsLng, gpsLng) || other.gpsLng == gpsLng)&&(identical(other.completionNotes, completionNotes) || other.completionNotes == completionNotes)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.partsUsage, partsUsage) || other.partsUsage == partsUsage)&&(identical(other.actualCost, actualCost) || other.actualCost == actualCost)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reason,gpsStatus,gpsLat,gpsLng,completionNotes,resolution,partsUsage,actualCost,dueAt,scheduledStartAt,clientRecordedAt);
}

@override
String toString() {
    return 'TransitionInput(reason: $reason, gpsStatus: $gpsStatus, gpsLat: $gpsLat, gpsLng: $gpsLng, completionNotes: $completionNotes, resolution: $resolution, partsUsage: $partsUsage, actualCost: $actualCost, dueAt: $dueAt, scheduledStartAt: $scheduledStartAt, clientRecordedAt: $clientRecordedAt)';
}


}

/// @nodoc
abstract mixin class _$TransitionInputCopyWith<$Res> implements $TransitionInputCopyWith<$Res> {
  factory _$TransitionInputCopyWith(_TransitionInput value, $Res Function(_TransitionInput) _then) = __$TransitionInputCopyWithImpl;
@override @useResult
$Res call({
 String reason, String gpsStatus, double? gpsLat, double? gpsLng, String? completionNotes, String? resolution, String? partsUsage, Money? actualCost, DateTime? dueAt, DateTime? scheduledStartAt, DateTime? clientRecordedAt
});


@override $MoneyCopyWith<$Res>? get actualCost;

}
/// @nodoc
class __$TransitionInputCopyWithImpl<$Res>
    implements _$TransitionInputCopyWith<$Res> {
  __$TransitionInputCopyWithImpl(this._self, this._then);

  final _TransitionInput _self;
  final $Res Function(_TransitionInput) _then;

/// Create a copy of TransitionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? gpsStatus = null,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? completionNotes = freezed,Object? resolution = freezed,Object? partsUsage = freezed,Object? actualCost = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(_TransitionInput(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,partsUsage: freezed == partsUsage ? _self.partsUsage : partsUsage // ignore: cast_nullable_to_non_nullable
as String?,actualCost: freezed == actualCost ? _self.actualCost : actualCost // ignore: cast_nullable_to_non_nullable
as Money?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of TransitionInput
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


/// @nodoc
mixin _$AnswerInput {

 String? get resultValue; double? get resultNumber; String? get resultText; String? get note; String? get attachmentId; String? get clientAttachmentId; bool? get createFinding; String? get findingSeverity; DateTime? get clientRecordedAt;
/// Create a copy of AnswerInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerInputCopyWith<AnswerInput> get copyWith => _$AnswerInputCopyWithImpl<AnswerInput>(this as AnswerInput, _$identity);

  /// Serializes this AnswerInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AnswerInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerInput&&(identical(other.resultValue, _this.resultValue) || other.resultValue == _this.resultValue)&&(identical(other.resultNumber, _this.resultNumber) || other.resultNumber == _this.resultNumber)&&(identical(other.resultText, _this.resultText) || other.resultText == _this.resultText)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.attachmentId, _this.attachmentId) || other.attachmentId == _this.attachmentId)&&(identical(other.clientAttachmentId, _this.clientAttachmentId) || other.clientAttachmentId == _this.clientAttachmentId)&&(identical(other.createFinding, _this.createFinding) || other.createFinding == _this.createFinding)&&(identical(other.findingSeverity, _this.findingSeverity) || other.findingSeverity == _this.findingSeverity)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AnswerInput;
  return Object.hash(runtimeType,_this.resultValue,_this.resultNumber,_this.resultText,_this.note,_this.attachmentId,_this.clientAttachmentId,_this.createFinding,_this.findingSeverity,_this.clientRecordedAt);
}

@override
String toString() {
  final _this = this as AnswerInput;
  return 'AnswerInput(resultValue: ${_this.resultValue}, resultNumber: ${_this.resultNumber}, resultText: ${_this.resultText}, note: ${_this.note}, attachmentId: ${_this.attachmentId}, clientAttachmentId: ${_this.clientAttachmentId}, createFinding: ${_this.createFinding}, findingSeverity: ${_this.findingSeverity}, clientRecordedAt: ${_this.clientRecordedAt})';
}


}

/// @nodoc
abstract mixin class $AnswerInputCopyWith<$Res>  {
  factory $AnswerInputCopyWith(AnswerInput value, $Res Function(AnswerInput) _then) = _$AnswerInputCopyWithImpl;
@useResult
$Res call({
 String? resultValue, double? resultNumber, String? resultText, String? note, String? attachmentId, String? clientAttachmentId, bool? createFinding, String? findingSeverity, DateTime? clientRecordedAt
});




}
/// @nodoc
class _$AnswerInputCopyWithImpl<$Res>
    implements $AnswerInputCopyWith<$Res> {
  _$AnswerInputCopyWithImpl(this._self, this._then);

  final AnswerInput _self;
  final $Res Function(AnswerInput) _then;

/// Create a copy of AnswerInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultValue = freezed,Object? resultNumber = freezed,Object? resultText = freezed,Object? note = freezed,Object? attachmentId = freezed,Object? clientAttachmentId = freezed,Object? createFinding = freezed,Object? findingSeverity = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(AnswerInput(
resultValue: freezed == resultValue ? _self.resultValue : resultValue // ignore: cast_nullable_to_non_nullable
as String?,resultNumber: freezed == resultNumber ? _self.resultNumber : resultNumber // ignore: cast_nullable_to_non_nullable
as double?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,createFinding: freezed == createFinding ? _self.createFinding : createFinding // ignore: cast_nullable_to_non_nullable
as bool?,findingSeverity: freezed == findingSeverity ? _self.findingSeverity : findingSeverity // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerInput].
extension AnswerInputPatterns on AnswerInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerInput value)  $default,){
final _that = this;
switch (_that) {
case _AnswerInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerInput value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? clientAttachmentId,  bool? createFinding,  String? findingSeverity,  DateTime? clientRecordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerInput() when $default != null:
return $default(_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.clientAttachmentId,_that.createFinding,_that.findingSeverity,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? clientAttachmentId,  bool? createFinding,  String? findingSeverity,  DateTime? clientRecordedAt)  $default,) {final _that = this;
switch (_that) {
case _AnswerInput():
return $default(_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.clientAttachmentId,_that.createFinding,_that.findingSeverity,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? resultValue,  double? resultNumber,  String? resultText,  String? note,  String? attachmentId,  String? clientAttachmentId,  bool? createFinding,  String? findingSeverity,  DateTime? clientRecordedAt)?  $default,) {final _that = this;
switch (_that) {
case _AnswerInput() when $default != null:
return $default(_that.resultValue,_that.resultNumber,_that.resultText,_that.note,_that.attachmentId,_that.clientAttachmentId,_that.createFinding,_that.findingSeverity,_that.clientRecordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnswerInput implements AnswerInput {
  const _AnswerInput({this.resultValue, this.resultNumber, this.resultText, this.note, this.attachmentId, this.clientAttachmentId, this.createFinding, this.findingSeverity, this.clientRecordedAt});
  factory _AnswerInput.fromJson(Map<String, dynamic> json) => _$AnswerInputFromJson(json);

@override final  String? resultValue;
@override final  double? resultNumber;
@override final  String? resultText;
@override final  String? note;
@override final  String? attachmentId;
@override final  String? clientAttachmentId;
@override final  bool? createFinding;
@override final  String? findingSeverity;
@override final  DateTime? clientRecordedAt;

/// Create a copy of AnswerInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerInputCopyWith<_AnswerInput> get copyWith => __$AnswerInputCopyWithImpl<_AnswerInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerInput&&(identical(other.resultValue, resultValue) || other.resultValue == resultValue)&&(identical(other.resultNumber, resultNumber) || other.resultNumber == resultNumber)&&(identical(other.resultText, resultText) || other.resultText == resultText)&&(identical(other.note, note) || other.note == note)&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.clientAttachmentId, clientAttachmentId) || other.clientAttachmentId == clientAttachmentId)&&(identical(other.createFinding, createFinding) || other.createFinding == createFinding)&&(identical(other.findingSeverity, findingSeverity) || other.findingSeverity == findingSeverity)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,resultValue,resultNumber,resultText,note,attachmentId,clientAttachmentId,createFinding,findingSeverity,clientRecordedAt);
}

@override
String toString() {
    return 'AnswerInput(resultValue: $resultValue, resultNumber: $resultNumber, resultText: $resultText, note: $note, attachmentId: $attachmentId, clientAttachmentId: $clientAttachmentId, createFinding: $createFinding, findingSeverity: $findingSeverity, clientRecordedAt: $clientRecordedAt)';
}


}

/// @nodoc
abstract mixin class _$AnswerInputCopyWith<$Res> implements $AnswerInputCopyWith<$Res> {
  factory _$AnswerInputCopyWith(_AnswerInput value, $Res Function(_AnswerInput) _then) = __$AnswerInputCopyWithImpl;
@override @useResult
$Res call({
 String? resultValue, double? resultNumber, String? resultText, String? note, String? attachmentId, String? clientAttachmentId, bool? createFinding, String? findingSeverity, DateTime? clientRecordedAt
});




}
/// @nodoc
class __$AnswerInputCopyWithImpl<$Res>
    implements _$AnswerInputCopyWith<$Res> {
  __$AnswerInputCopyWithImpl(this._self, this._then);

  final _AnswerInput _self;
  final $Res Function(_AnswerInput) _then;

/// Create a copy of AnswerInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultValue = freezed,Object? resultNumber = freezed,Object? resultText = freezed,Object? note = freezed,Object? attachmentId = freezed,Object? clientAttachmentId = freezed,Object? createFinding = freezed,Object? findingSeverity = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(_AnswerInput(
resultValue: freezed == resultValue ? _self.resultValue : resultValue // ignore: cast_nullable_to_non_nullable
as String?,resultNumber: freezed == resultNumber ? _self.resultNumber : resultNumber // ignore: cast_nullable_to_non_nullable
as double?,resultText: freezed == resultText ? _self.resultText : resultText // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,createFinding: freezed == createFinding ? _self.createFinding : createFinding // ignore: cast_nullable_to_non_nullable
as bool?,findingSeverity: freezed == findingSeverity ? _self.findingSeverity : findingSeverity // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ScanInput {

 String get scanMethod; String get gpsStatus; String? get checkpointId; String? get qrCode; double? get gpsLat; double? get gpsLng; String? get note; String? get clientScanId; DateTime? get clientRecordedAt;
/// Create a copy of ScanInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanInputCopyWith<ScanInput> get copyWith => _$ScanInputCopyWithImpl<ScanInput>(this as ScanInput, _$identity);

  /// Serializes this ScanInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ScanInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanInput&&(identical(other.scanMethod, _this.scanMethod) || other.scanMethod == _this.scanMethod)&&(identical(other.gpsStatus, _this.gpsStatus) || other.gpsStatus == _this.gpsStatus)&&(identical(other.checkpointId, _this.checkpointId) || other.checkpointId == _this.checkpointId)&&(identical(other.qrCode, _this.qrCode) || other.qrCode == _this.qrCode)&&(identical(other.gpsLat, _this.gpsLat) || other.gpsLat == _this.gpsLat)&&(identical(other.gpsLng, _this.gpsLng) || other.gpsLng == _this.gpsLng)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.clientScanId, _this.clientScanId) || other.clientScanId == _this.clientScanId)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ScanInput;
  return Object.hash(runtimeType,_this.scanMethod,_this.gpsStatus,_this.checkpointId,_this.qrCode,_this.gpsLat,_this.gpsLng,_this.note,_this.clientScanId,_this.clientRecordedAt);
}

@override
String toString() {
  final _this = this as ScanInput;
  return 'ScanInput(scanMethod: ${_this.scanMethod}, gpsStatus: ${_this.gpsStatus}, checkpointId: ${_this.checkpointId}, qrCode: ${_this.qrCode}, gpsLat: ${_this.gpsLat}, gpsLng: ${_this.gpsLng}, note: ${_this.note}, clientScanId: ${_this.clientScanId}, clientRecordedAt: ${_this.clientRecordedAt})';
}


}

/// @nodoc
abstract mixin class $ScanInputCopyWith<$Res>  {
  factory $ScanInputCopyWith(ScanInput value, $Res Function(ScanInput) _then) = _$ScanInputCopyWithImpl;
@useResult
$Res call({
 String scanMethod, String gpsStatus, String? checkpointId, String? qrCode, double? gpsLat, double? gpsLng, String? note, String? clientScanId, DateTime? clientRecordedAt
});




}
/// @nodoc
class _$ScanInputCopyWithImpl<$Res>
    implements $ScanInputCopyWith<$Res> {
  _$ScanInputCopyWithImpl(this._self, this._then);

  final ScanInput _self;
  final $Res Function(ScanInput) _then;

/// Create a copy of ScanInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scanMethod = null,Object? gpsStatus = null,Object? checkpointId = freezed,Object? qrCode = freezed,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? note = freezed,Object? clientScanId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(ScanInput(
scanMethod: null == scanMethod ? _self.scanMethod : scanMethod // ignore: cast_nullable_to_non_nullable
as String,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,checkpointId: freezed == checkpointId ? _self.checkpointId : checkpointId // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,clientScanId: freezed == clientScanId ? _self.clientScanId : clientScanId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScanInput].
extension ScanInputPatterns on ScanInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanInput value)  $default,){
final _that = this;
switch (_that) {
case _ScanInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanInput value)?  $default,){
final _that = this;
switch (_that) {
case _ScanInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scanMethod,  String gpsStatus,  String? checkpointId,  String? qrCode,  double? gpsLat,  double? gpsLng,  String? note,  String? clientScanId,  DateTime? clientRecordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanInput() when $default != null:
return $default(_that.scanMethod,_that.gpsStatus,_that.checkpointId,_that.qrCode,_that.gpsLat,_that.gpsLng,_that.note,_that.clientScanId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scanMethod,  String gpsStatus,  String? checkpointId,  String? qrCode,  double? gpsLat,  double? gpsLng,  String? note,  String? clientScanId,  DateTime? clientRecordedAt)  $default,) {final _that = this;
switch (_that) {
case _ScanInput():
return $default(_that.scanMethod,_that.gpsStatus,_that.checkpointId,_that.qrCode,_that.gpsLat,_that.gpsLng,_that.note,_that.clientScanId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scanMethod,  String gpsStatus,  String? checkpointId,  String? qrCode,  double? gpsLat,  double? gpsLng,  String? note,  String? clientScanId,  DateTime? clientRecordedAt)?  $default,) {final _that = this;
switch (_that) {
case _ScanInput() when $default != null:
return $default(_that.scanMethod,_that.gpsStatus,_that.checkpointId,_that.qrCode,_that.gpsLat,_that.gpsLng,_that.note,_that.clientScanId,_that.clientRecordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScanInput implements ScanInput {
  const _ScanInput({required this.scanMethod, this.gpsStatus = 'unavailable', this.checkpointId, this.qrCode, this.gpsLat, this.gpsLng, this.note, this.clientScanId, this.clientRecordedAt});
  factory _ScanInput.fromJson(Map<String, dynamic> json) => _$ScanInputFromJson(json);

@override final  String scanMethod;
@override@JsonKey() final  String gpsStatus;
@override final  String? checkpointId;
@override final  String? qrCode;
@override final  double? gpsLat;
@override final  double? gpsLng;
@override final  String? note;
@override final  String? clientScanId;
@override final  DateTime? clientRecordedAt;

/// Create a copy of ScanInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanInputCopyWith<_ScanInput> get copyWith => __$ScanInputCopyWithImpl<_ScanInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScanInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanInput&&(identical(other.scanMethod, scanMethod) || other.scanMethod == scanMethod)&&(identical(other.gpsStatus, gpsStatus) || other.gpsStatus == gpsStatus)&&(identical(other.checkpointId, checkpointId) || other.checkpointId == checkpointId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.gpsLat, gpsLat) || other.gpsLat == gpsLat)&&(identical(other.gpsLng, gpsLng) || other.gpsLng == gpsLng)&&(identical(other.note, note) || other.note == note)&&(identical(other.clientScanId, clientScanId) || other.clientScanId == clientScanId)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,scanMethod,gpsStatus,checkpointId,qrCode,gpsLat,gpsLng,note,clientScanId,clientRecordedAt);
}

@override
String toString() {
    return 'ScanInput(scanMethod: $scanMethod, gpsStatus: $gpsStatus, checkpointId: $checkpointId, qrCode: $qrCode, gpsLat: $gpsLat, gpsLng: $gpsLng, note: $note, clientScanId: $clientScanId, clientRecordedAt: $clientRecordedAt)';
}


}

/// @nodoc
abstract mixin class _$ScanInputCopyWith<$Res> implements $ScanInputCopyWith<$Res> {
  factory _$ScanInputCopyWith(_ScanInput value, $Res Function(_ScanInput) _then) = __$ScanInputCopyWithImpl;
@override @useResult
$Res call({
 String scanMethod, String gpsStatus, String? checkpointId, String? qrCode, double? gpsLat, double? gpsLng, String? note, String? clientScanId, DateTime? clientRecordedAt
});




}
/// @nodoc
class __$ScanInputCopyWithImpl<$Res>
    implements _$ScanInputCopyWith<$Res> {
  __$ScanInputCopyWithImpl(this._self, this._then);

  final _ScanInput _self;
  final $Res Function(_ScanInput) _then;

/// Create a copy of ScanInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scanMethod = null,Object? gpsStatus = null,Object? checkpointId = freezed,Object? qrCode = freezed,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? note = freezed,Object? clientScanId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(_ScanInput(
scanMethod: null == scanMethod ? _self.scanMethod : scanMethod // ignore: cast_nullable_to_non_nullable
as String,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,checkpointId: freezed == checkpointId ? _self.checkpointId : checkpointId // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,clientScanId: freezed == clientScanId ? _self.clientScanId : clientScanId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CreateFindingInput {

 String get findingType; String get title; String get severity; String? get description; String? get category; String? get propertyId; String? get locationId; String? get assetId; String? get attachmentId; String? get sourceType; String? get sourceId; DateTime? get clientRecordedAt;
/// Create a copy of CreateFindingInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFindingInputCopyWith<CreateFindingInput> get copyWith => _$CreateFindingInputCopyWithImpl<CreateFindingInput>(this as CreateFindingInput, _$identity);

  /// Serializes this CreateFindingInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateFindingInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFindingInput&&(identical(other.findingType, _this.findingType) || other.findingType == _this.findingType)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.assetId, _this.assetId) || other.assetId == _this.assetId)&&(identical(other.attachmentId, _this.attachmentId) || other.attachmentId == _this.attachmentId)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateFindingInput;
  return Object.hash(runtimeType,_this.findingType,_this.title,_this.severity,_this.description,_this.category,_this.propertyId,_this.locationId,_this.assetId,_this.attachmentId,_this.sourceType,_this.sourceId,_this.clientRecordedAt);
}

@override
String toString() {
  final _this = this as CreateFindingInput;
  return 'CreateFindingInput(findingType: ${_this.findingType}, title: ${_this.title}, severity: ${_this.severity}, description: ${_this.description}, category: ${_this.category}, propertyId: ${_this.propertyId}, locationId: ${_this.locationId}, assetId: ${_this.assetId}, attachmentId: ${_this.attachmentId}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, clientRecordedAt: ${_this.clientRecordedAt})';
}


}

/// @nodoc
abstract mixin class $CreateFindingInputCopyWith<$Res>  {
  factory $CreateFindingInputCopyWith(CreateFindingInput value, $Res Function(CreateFindingInput) _then) = _$CreateFindingInputCopyWithImpl;
@useResult
$Res call({
 String findingType, String title, String severity, String? description, String? category, String? propertyId, String? locationId, String? assetId, String? attachmentId, String? sourceType, String? sourceId, DateTime? clientRecordedAt
});




}
/// @nodoc
class _$CreateFindingInputCopyWithImpl<$Res>
    implements $CreateFindingInputCopyWith<$Res> {
  _$CreateFindingInputCopyWithImpl(this._self, this._then);

  final CreateFindingInput _self;
  final $Res Function(CreateFindingInput) _then;

/// Create a copy of CreateFindingInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? findingType = null,Object? title = null,Object? severity = null,Object? description = freezed,Object? category = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? attachmentId = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(CreateFindingInput(
findingType: null == findingType ? _self.findingType : findingType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFindingInput].
extension CreateFindingInputPatterns on CreateFindingInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFindingInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFindingInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFindingInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFindingInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFindingInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFindingInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String findingType,  String title,  String severity,  String? description,  String? category,  String? propertyId,  String? locationId,  String? assetId,  String? attachmentId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFindingInput() when $default != null:
return $default(_that.findingType,_that.title,_that.severity,_that.description,_that.category,_that.propertyId,_that.locationId,_that.assetId,_that.attachmentId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String findingType,  String title,  String severity,  String? description,  String? category,  String? propertyId,  String? locationId,  String? assetId,  String? attachmentId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)  $default,) {final _that = this;
switch (_that) {
case _CreateFindingInput():
return $default(_that.findingType,_that.title,_that.severity,_that.description,_that.category,_that.propertyId,_that.locationId,_that.assetId,_that.attachmentId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String findingType,  String title,  String severity,  String? description,  String? category,  String? propertyId,  String? locationId,  String? assetId,  String? attachmentId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateFindingInput() when $default != null:
return $default(_that.findingType,_that.title,_that.severity,_that.description,_that.category,_that.propertyId,_that.locationId,_that.assetId,_that.attachmentId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFindingInput implements CreateFindingInput {
  const _CreateFindingInput({required this.findingType, required this.title, required this.severity, this.description, this.category, this.propertyId, this.locationId, this.assetId, this.attachmentId, this.sourceType, this.sourceId, this.clientRecordedAt});
  factory _CreateFindingInput.fromJson(Map<String, dynamic> json) => _$CreateFindingInputFromJson(json);

@override final  String findingType;
@override final  String title;
@override final  String severity;
@override final  String? description;
@override final  String? category;
@override final  String? propertyId;
@override final  String? locationId;
@override final  String? assetId;
@override final  String? attachmentId;
@override final  String? sourceType;
@override final  String? sourceId;
@override final  DateTime? clientRecordedAt;

/// Create a copy of CreateFindingInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFindingInputCopyWith<_CreateFindingInput> get copyWith => __$CreateFindingInputCopyWithImpl<_CreateFindingInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFindingInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFindingInput&&(identical(other.findingType, findingType) || other.findingType == findingType)&&(identical(other.title, title) || other.title == title)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,findingType,title,severity,description,category,propertyId,locationId,assetId,attachmentId,sourceType,sourceId,clientRecordedAt);
}

@override
String toString() {
    return 'CreateFindingInput(findingType: $findingType, title: $title, severity: $severity, description: $description, category: $category, propertyId: $propertyId, locationId: $locationId, assetId: $assetId, attachmentId: $attachmentId, sourceType: $sourceType, sourceId: $sourceId, clientRecordedAt: $clientRecordedAt)';
}


}

/// @nodoc
abstract mixin class _$CreateFindingInputCopyWith<$Res> implements $CreateFindingInputCopyWith<$Res> {
  factory _$CreateFindingInputCopyWith(_CreateFindingInput value, $Res Function(_CreateFindingInput) _then) = __$CreateFindingInputCopyWithImpl;
@override @useResult
$Res call({
 String findingType, String title, String severity, String? description, String? category, String? propertyId, String? locationId, String? assetId, String? attachmentId, String? sourceType, String? sourceId, DateTime? clientRecordedAt
});




}
/// @nodoc
class __$CreateFindingInputCopyWithImpl<$Res>
    implements _$CreateFindingInputCopyWith<$Res> {
  __$CreateFindingInputCopyWithImpl(this._self, this._then);

  final _CreateFindingInput _self;
  final $Res Function(_CreateFindingInput) _then;

/// Create a copy of CreateFindingInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? findingType = null,Object? title = null,Object? severity = null,Object? description = freezed,Object? category = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? attachmentId = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(_CreateFindingInput(
findingType: null == findingType ? _self.findingType : findingType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CreateIncidentInput {

 String get incidentType; String get category; String get title; String get severity; String get priority; String? get description; String? get propertyId; String? get locationId; DateTime? get occurredAt; String? get assigneeTeamId; String? get assigneeUserId; String? get sourceType; String? get sourceId; DateTime? get clientRecordedAt;
/// Create a copy of CreateIncidentInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateIncidentInputCopyWith<CreateIncidentInput> get copyWith => _$CreateIncidentInputCopyWithImpl<CreateIncidentInput>(this as CreateIncidentInput, _$identity);

  /// Serializes this CreateIncidentInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateIncidentInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateIncidentInput&&(identical(other.incidentType, _this.incidentType) || other.incidentType == _this.incidentType)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.severity, _this.severity) || other.severity == _this.severity)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.occurredAt, _this.occurredAt) || other.occurredAt == _this.occurredAt)&&(identical(other.assigneeTeamId, _this.assigneeTeamId) || other.assigneeTeamId == _this.assigneeTeamId)&&(identical(other.assigneeUserId, _this.assigneeUserId) || other.assigneeUserId == _this.assigneeUserId)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.clientRecordedAt, _this.clientRecordedAt) || other.clientRecordedAt == _this.clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateIncidentInput;
  return Object.hash(runtimeType,_this.incidentType,_this.category,_this.title,_this.severity,_this.priority,_this.description,_this.propertyId,_this.locationId,_this.occurredAt,_this.assigneeTeamId,_this.assigneeUserId,_this.sourceType,_this.sourceId,_this.clientRecordedAt);
}

@override
String toString() {
  final _this = this as CreateIncidentInput;
  return 'CreateIncidentInput(incidentType: ${_this.incidentType}, category: ${_this.category}, title: ${_this.title}, severity: ${_this.severity}, priority: ${_this.priority}, description: ${_this.description}, propertyId: ${_this.propertyId}, locationId: ${_this.locationId}, occurredAt: ${_this.occurredAt}, assigneeTeamId: ${_this.assigneeTeamId}, assigneeUserId: ${_this.assigneeUserId}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, clientRecordedAt: ${_this.clientRecordedAt})';
}


}

/// @nodoc
abstract mixin class $CreateIncidentInputCopyWith<$Res>  {
  factory $CreateIncidentInputCopyWith(CreateIncidentInput value, $Res Function(CreateIncidentInput) _then) = _$CreateIncidentInputCopyWithImpl;
@useResult
$Res call({
 String incidentType, String category, String title, String severity, String priority, String? description, String? propertyId, String? locationId, DateTime? occurredAt, String? assigneeTeamId, String? assigneeUserId, String? sourceType, String? sourceId, DateTime? clientRecordedAt
});




}
/// @nodoc
class _$CreateIncidentInputCopyWithImpl<$Res>
    implements $CreateIncidentInputCopyWith<$Res> {
  _$CreateIncidentInputCopyWithImpl(this._self, this._then);

  final CreateIncidentInput _self;
  final $Res Function(CreateIncidentInput) _then;

/// Create a copy of CreateIncidentInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? incidentType = null,Object? category = null,Object? title = null,Object? severity = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? occurredAt = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(CreateIncidentInput(
incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateIncidentInput].
extension CreateIncidentInputPatterns on CreateIncidentInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateIncidentInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateIncidentInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateIncidentInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateIncidentInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateIncidentInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateIncidentInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String incidentType,  String category,  String title,  String severity,  String priority,  String? description,  String? propertyId,  String? locationId,  DateTime? occurredAt,  String? assigneeTeamId,  String? assigneeUserId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateIncidentInput() when $default != null:
return $default(_that.incidentType,_that.category,_that.title,_that.severity,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.occurredAt,_that.assigneeTeamId,_that.assigneeUserId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String incidentType,  String category,  String title,  String severity,  String priority,  String? description,  String? propertyId,  String? locationId,  DateTime? occurredAt,  String? assigneeTeamId,  String? assigneeUserId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)  $default,) {final _that = this;
switch (_that) {
case _CreateIncidentInput():
return $default(_that.incidentType,_that.category,_that.title,_that.severity,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.occurredAt,_that.assigneeTeamId,_that.assigneeUserId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String incidentType,  String category,  String title,  String severity,  String priority,  String? description,  String? propertyId,  String? locationId,  DateTime? occurredAt,  String? assigneeTeamId,  String? assigneeUserId,  String? sourceType,  String? sourceId,  DateTime? clientRecordedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateIncidentInput() when $default != null:
return $default(_that.incidentType,_that.category,_that.title,_that.severity,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.occurredAt,_that.assigneeTeamId,_that.assigneeUserId,_that.sourceType,_that.sourceId,_that.clientRecordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateIncidentInput implements CreateIncidentInput {
  const _CreateIncidentInput({required this.incidentType, required this.category, required this.title, required this.severity, required this.priority, this.description, this.propertyId, this.locationId, this.occurredAt, this.assigneeTeamId, this.assigneeUserId, this.sourceType, this.sourceId, this.clientRecordedAt});
  factory _CreateIncidentInput.fromJson(Map<String, dynamic> json) => _$CreateIncidentInputFromJson(json);

@override final  String incidentType;
@override final  String category;
@override final  String title;
@override final  String severity;
@override final  String priority;
@override final  String? description;
@override final  String? propertyId;
@override final  String? locationId;
@override final  DateTime? occurredAt;
@override final  String? assigneeTeamId;
@override final  String? assigneeUserId;
@override final  String? sourceType;
@override final  String? sourceId;
@override final  DateTime? clientRecordedAt;

/// Create a copy of CreateIncidentInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateIncidentInputCopyWith<_CreateIncidentInput> get copyWith => __$CreateIncidentInputCopyWithImpl<_CreateIncidentInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateIncidentInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateIncidentInput&&(identical(other.incidentType, incidentType) || other.incidentType == incidentType)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.assigneeTeamId, assigneeTeamId) || other.assigneeTeamId == assigneeTeamId)&&(identical(other.assigneeUserId, assigneeUserId) || other.assigneeUserId == assigneeUserId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.clientRecordedAt, clientRecordedAt) || other.clientRecordedAt == clientRecordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,incidentType,category,title,severity,priority,description,propertyId,locationId,occurredAt,assigneeTeamId,assigneeUserId,sourceType,sourceId,clientRecordedAt);
}

@override
String toString() {
    return 'CreateIncidentInput(incidentType: $incidentType, category: $category, title: $title, severity: $severity, priority: $priority, description: $description, propertyId: $propertyId, locationId: $locationId, occurredAt: $occurredAt, assigneeTeamId: $assigneeTeamId, assigneeUserId: $assigneeUserId, sourceType: $sourceType, sourceId: $sourceId, clientRecordedAt: $clientRecordedAt)';
}


}

/// @nodoc
abstract mixin class _$CreateIncidentInputCopyWith<$Res> implements $CreateIncidentInputCopyWith<$Res> {
  factory _$CreateIncidentInputCopyWith(_CreateIncidentInput value, $Res Function(_CreateIncidentInput) _then) = __$CreateIncidentInputCopyWithImpl;
@override @useResult
$Res call({
 String incidentType, String category, String title, String severity, String priority, String? description, String? propertyId, String? locationId, DateTime? occurredAt, String? assigneeTeamId, String? assigneeUserId, String? sourceType, String? sourceId, DateTime? clientRecordedAt
});




}
/// @nodoc
class __$CreateIncidentInputCopyWithImpl<$Res>
    implements _$CreateIncidentInputCopyWith<$Res> {
  __$CreateIncidentInputCopyWithImpl(this._self, this._then);

  final _CreateIncidentInput _self;
  final $Res Function(_CreateIncidentInput) _then;

/// Create a copy of CreateIncidentInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? incidentType = null,Object? category = null,Object? title = null,Object? severity = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? occurredAt = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? clientRecordedAt = freezed,}) {
  return _then(_CreateIncidentInput(
incidentType: null == incidentType ? _self.incidentType : incidentType // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,clientRecordedAt: freezed == clientRecordedAt ? _self.clientRecordedAt : clientRecordedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CreateWorkOrderInput {

 String get title; String get workOrderType; String get priority; String? get description; String? get propertyId; String? get locationId; String? get assetId; String? get assigneeTeamId; String? get assigneeUserId; String? get checklistTemplateId; DateTime? get dueAt; DateTime? get scheduledStartAt; bool? get requiresEvidence; String? get sourceType; String? get sourceId; LinkRef? get linkTo; String? get vendorReference; Money? get estimatedCost;
/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateWorkOrderInputCopyWith<CreateWorkOrderInput> get copyWith => _$CreateWorkOrderInputCopyWithImpl<CreateWorkOrderInput>(this as CreateWorkOrderInput, _$identity);

  /// Serializes this CreateWorkOrderInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateWorkOrderInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWorkOrderInput&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.workOrderType, _this.workOrderType) || other.workOrderType == _this.workOrderType)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.assetId, _this.assetId) || other.assetId == _this.assetId)&&(identical(other.assigneeTeamId, _this.assigneeTeamId) || other.assigneeTeamId == _this.assigneeTeamId)&&(identical(other.assigneeUserId, _this.assigneeUserId) || other.assigneeUserId == _this.assigneeUserId)&&(identical(other.checklistTemplateId, _this.checklistTemplateId) || other.checklistTemplateId == _this.checklistTemplateId)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.scheduledStartAt, _this.scheduledStartAt) || other.scheduledStartAt == _this.scheduledStartAt)&&(identical(other.requiresEvidence, _this.requiresEvidence) || other.requiresEvidence == _this.requiresEvidence)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.linkTo, _this.linkTo) || other.linkTo == _this.linkTo)&&(identical(other.vendorReference, _this.vendorReference) || other.vendorReference == _this.vendorReference)&&(identical(other.estimatedCost, _this.estimatedCost) || other.estimatedCost == _this.estimatedCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateWorkOrderInput;
  return Object.hash(runtimeType,_this.title,_this.workOrderType,_this.priority,_this.description,_this.propertyId,_this.locationId,_this.assetId,_this.assigneeTeamId,_this.assigneeUserId,_this.checklistTemplateId,_this.dueAt,_this.scheduledStartAt,_this.requiresEvidence,_this.sourceType,_this.sourceId,_this.linkTo,_this.vendorReference,_this.estimatedCost);
}

@override
String toString() {
  final _this = this as CreateWorkOrderInput;
  return 'CreateWorkOrderInput(title: ${_this.title}, workOrderType: ${_this.workOrderType}, priority: ${_this.priority}, description: ${_this.description}, propertyId: ${_this.propertyId}, locationId: ${_this.locationId}, assetId: ${_this.assetId}, assigneeTeamId: ${_this.assigneeTeamId}, assigneeUserId: ${_this.assigneeUserId}, checklistTemplateId: ${_this.checklistTemplateId}, dueAt: ${_this.dueAt}, scheduledStartAt: ${_this.scheduledStartAt}, requiresEvidence: ${_this.requiresEvidence}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, linkTo: ${_this.linkTo}, vendorReference: ${_this.vendorReference}, estimatedCost: ${_this.estimatedCost})';
}


}

/// @nodoc
abstract mixin class $CreateWorkOrderInputCopyWith<$Res>  {
  factory $CreateWorkOrderInputCopyWith(CreateWorkOrderInput value, $Res Function(CreateWorkOrderInput) _then) = _$CreateWorkOrderInputCopyWithImpl;
@useResult
$Res call({
 String title, String workOrderType, String priority, String? description, String? propertyId, String? locationId, String? assetId, String? assigneeTeamId, String? assigneeUserId, String? checklistTemplateId, DateTime? dueAt, DateTime? scheduledStartAt, bool? requiresEvidence, String? sourceType, String? sourceId, LinkRef? linkTo, String? vendorReference, Money? estimatedCost
});


$LinkRefCopyWith<$Res>? get linkTo;$MoneyCopyWith<$Res>? get estimatedCost;

}
/// @nodoc
class _$CreateWorkOrderInputCopyWithImpl<$Res>
    implements $CreateWorkOrderInputCopyWith<$Res> {
  _$CreateWorkOrderInputCopyWithImpl(this._self, this._then);

  final CreateWorkOrderInput _self;
  final $Res Function(CreateWorkOrderInput) _then;

/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? workOrderType = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? checklistTemplateId = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? requiresEvidence = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? linkTo = freezed,Object? vendorReference = freezed,Object? estimatedCost = freezed,}) {
  return _then(CreateWorkOrderInput(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,workOrderType: null == workOrderType ? _self.workOrderType : workOrderType // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requiresEvidence: freezed == requiresEvidence ? _self.requiresEvidence : requiresEvidence // ignore: cast_nullable_to_non_nullable
as bool?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,linkTo: freezed == linkTo ? _self.linkTo : linkTo // ignore: cast_nullable_to_non_nullable
as LinkRef?,vendorReference: freezed == vendorReference ? _self.vendorReference : vendorReference // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: freezed == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}
/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkRefCopyWith<$Res>? get linkTo {
    if (_self.linkTo == null) {
    return null;
  }

  return $LinkRefCopyWith<$Res>(_self.linkTo!, (value) {
    return _then(_self.copyWith(linkTo: value));
  });
}/// Create a copy of CreateWorkOrderInput
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
}
}


/// Adds pattern-matching-related methods to [CreateWorkOrderInput].
extension CreateWorkOrderInputPatterns on CreateWorkOrderInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateWorkOrderInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateWorkOrderInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateWorkOrderInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateWorkOrderInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateWorkOrderInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateWorkOrderInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String workOrderType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool? requiresEvidence,  String? sourceType,  String? sourceId,  LinkRef? linkTo,  String? vendorReference,  Money? estimatedCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateWorkOrderInput() when $default != null:
return $default(_that.title,_that.workOrderType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresEvidence,_that.sourceType,_that.sourceId,_that.linkTo,_that.vendorReference,_that.estimatedCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String workOrderType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool? requiresEvidence,  String? sourceType,  String? sourceId,  LinkRef? linkTo,  String? vendorReference,  Money? estimatedCost)  $default,) {final _that = this;
switch (_that) {
case _CreateWorkOrderInput():
return $default(_that.title,_that.workOrderType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresEvidence,_that.sourceType,_that.sourceId,_that.linkTo,_that.vendorReference,_that.estimatedCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String workOrderType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool? requiresEvidence,  String? sourceType,  String? sourceId,  LinkRef? linkTo,  String? vendorReference,  Money? estimatedCost)?  $default,) {final _that = this;
switch (_that) {
case _CreateWorkOrderInput() when $default != null:
return $default(_that.title,_that.workOrderType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresEvidence,_that.sourceType,_that.sourceId,_that.linkTo,_that.vendorReference,_that.estimatedCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateWorkOrderInput implements CreateWorkOrderInput {
  const _CreateWorkOrderInput({required this.title, required this.workOrderType, this.priority = 'medium', this.description, this.propertyId, this.locationId, this.assetId, this.assigneeTeamId, this.assigneeUserId, this.checklistTemplateId, this.dueAt, this.scheduledStartAt, this.requiresEvidence, this.sourceType, this.sourceId, this.linkTo, this.vendorReference, this.estimatedCost});
  factory _CreateWorkOrderInput.fromJson(Map<String, dynamic> json) => _$CreateWorkOrderInputFromJson(json);

@override final  String title;
@override final  String workOrderType;
@override@JsonKey() final  String priority;
@override final  String? description;
@override final  String? propertyId;
@override final  String? locationId;
@override final  String? assetId;
@override final  String? assigneeTeamId;
@override final  String? assigneeUserId;
@override final  String? checklistTemplateId;
@override final  DateTime? dueAt;
@override final  DateTime? scheduledStartAt;
@override final  bool? requiresEvidence;
@override final  String? sourceType;
@override final  String? sourceId;
@override final  LinkRef? linkTo;
@override final  String? vendorReference;
@override final  Money? estimatedCost;

/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateWorkOrderInputCopyWith<_CreateWorkOrderInput> get copyWith => __$CreateWorkOrderInputCopyWithImpl<_CreateWorkOrderInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateWorkOrderInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateWorkOrderInput&&(identical(other.title, title) || other.title == title)&&(identical(other.workOrderType, workOrderType) || other.workOrderType == workOrderType)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.assigneeTeamId, assigneeTeamId) || other.assigneeTeamId == assigneeTeamId)&&(identical(other.assigneeUserId, assigneeUserId) || other.assigneeUserId == assigneeUserId)&&(identical(other.checklistTemplateId, checklistTemplateId) || other.checklistTemplateId == checklistTemplateId)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.requiresEvidence, requiresEvidence) || other.requiresEvidence == requiresEvidence)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.linkTo, linkTo) || other.linkTo == linkTo)&&(identical(other.vendorReference, vendorReference) || other.vendorReference == vendorReference)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,title,workOrderType,priority,description,propertyId,locationId,assetId,assigneeTeamId,assigneeUserId,checklistTemplateId,dueAt,scheduledStartAt,requiresEvidence,sourceType,sourceId,linkTo,vendorReference,estimatedCost);
}

@override
String toString() {
    return 'CreateWorkOrderInput(title: $title, workOrderType: $workOrderType, priority: $priority, description: $description, propertyId: $propertyId, locationId: $locationId, assetId: $assetId, assigneeTeamId: $assigneeTeamId, assigneeUserId: $assigneeUserId, checklistTemplateId: $checklistTemplateId, dueAt: $dueAt, scheduledStartAt: $scheduledStartAt, requiresEvidence: $requiresEvidence, sourceType: $sourceType, sourceId: $sourceId, linkTo: $linkTo, vendorReference: $vendorReference, estimatedCost: $estimatedCost)';
}


}

/// @nodoc
abstract mixin class _$CreateWorkOrderInputCopyWith<$Res> implements $CreateWorkOrderInputCopyWith<$Res> {
  factory _$CreateWorkOrderInputCopyWith(_CreateWorkOrderInput value, $Res Function(_CreateWorkOrderInput) _then) = __$CreateWorkOrderInputCopyWithImpl;
@override @useResult
$Res call({
 String title, String workOrderType, String priority, String? description, String? propertyId, String? locationId, String? assetId, String? assigneeTeamId, String? assigneeUserId, String? checklistTemplateId, DateTime? dueAt, DateTime? scheduledStartAt, bool? requiresEvidence, String? sourceType, String? sourceId, LinkRef? linkTo, String? vendorReference, Money? estimatedCost
});


@override $LinkRefCopyWith<$Res>? get linkTo;@override $MoneyCopyWith<$Res>? get estimatedCost;

}
/// @nodoc
class __$CreateWorkOrderInputCopyWithImpl<$Res>
    implements _$CreateWorkOrderInputCopyWith<$Res> {
  __$CreateWorkOrderInputCopyWithImpl(this._self, this._then);

  final _CreateWorkOrderInput _self;
  final $Res Function(_CreateWorkOrderInput) _then;

/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? workOrderType = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? checklistTemplateId = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? requiresEvidence = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? linkTo = freezed,Object? vendorReference = freezed,Object? estimatedCost = freezed,}) {
  return _then(_CreateWorkOrderInput(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,workOrderType: null == workOrderType ? _self.workOrderType : workOrderType // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requiresEvidence: freezed == requiresEvidence ? _self.requiresEvidence : requiresEvidence // ignore: cast_nullable_to_non_nullable
as bool?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,linkTo: freezed == linkTo ? _self.linkTo : linkTo // ignore: cast_nullable_to_non_nullable
as LinkRef?,vendorReference: freezed == vendorReference ? _self.vendorReference : vendorReference // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: freezed == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}

/// Create a copy of CreateWorkOrderInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkRefCopyWith<$Res>? get linkTo {
    if (_self.linkTo == null) {
    return null;
  }

  return $LinkRefCopyWith<$Res>(_self.linkTo!, (value) {
    return _then(_self.copyWith(linkTo: value));
  });
}/// Create a copy of CreateWorkOrderInput
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
}
}


/// @nodoc
mixin _$CreateTaskInput {

 String get title; String get taskType; String get priority; String? get description; String? get propertyId; String? get locationId; String? get assetId; String? get assigneeTeamId; String? get assigneeUserId; String? get checklistTemplateId; DateTime? get dueAt; DateTime? get scheduledStartAt; bool get requiresPhoto; String? get sourceType; String? get sourceId; LinkRef? get linkTo;
/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTaskInputCopyWith<CreateTaskInput> get copyWith => _$CreateTaskInputCopyWithImpl<CreateTaskInput>(this as CreateTaskInput, _$identity);

  /// Serializes this CreateTaskInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateTaskInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTaskInput&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.taskType, _this.taskType) || other.taskType == _this.taskType)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.locationId, _this.locationId) || other.locationId == _this.locationId)&&(identical(other.assetId, _this.assetId) || other.assetId == _this.assetId)&&(identical(other.assigneeTeamId, _this.assigneeTeamId) || other.assigneeTeamId == _this.assigneeTeamId)&&(identical(other.assigneeUserId, _this.assigneeUserId) || other.assigneeUserId == _this.assigneeUserId)&&(identical(other.checklistTemplateId, _this.checklistTemplateId) || other.checklistTemplateId == _this.checklistTemplateId)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.scheduledStartAt, _this.scheduledStartAt) || other.scheduledStartAt == _this.scheduledStartAt)&&(identical(other.requiresPhoto, _this.requiresPhoto) || other.requiresPhoto == _this.requiresPhoto)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&(identical(other.linkTo, _this.linkTo) || other.linkTo == _this.linkTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateTaskInput;
  return Object.hash(runtimeType,_this.title,_this.taskType,_this.priority,_this.description,_this.propertyId,_this.locationId,_this.assetId,_this.assigneeTeamId,_this.assigneeUserId,_this.checklistTemplateId,_this.dueAt,_this.scheduledStartAt,_this.requiresPhoto,_this.sourceType,_this.sourceId,_this.linkTo);
}

@override
String toString() {
  final _this = this as CreateTaskInput;
  return 'CreateTaskInput(title: ${_this.title}, taskType: ${_this.taskType}, priority: ${_this.priority}, description: ${_this.description}, propertyId: ${_this.propertyId}, locationId: ${_this.locationId}, assetId: ${_this.assetId}, assigneeTeamId: ${_this.assigneeTeamId}, assigneeUserId: ${_this.assigneeUserId}, checklistTemplateId: ${_this.checklistTemplateId}, dueAt: ${_this.dueAt}, scheduledStartAt: ${_this.scheduledStartAt}, requiresPhoto: ${_this.requiresPhoto}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, linkTo: ${_this.linkTo})';
}


}

/// @nodoc
abstract mixin class $CreateTaskInputCopyWith<$Res>  {
  factory $CreateTaskInputCopyWith(CreateTaskInput value, $Res Function(CreateTaskInput) _then) = _$CreateTaskInputCopyWithImpl;
@useResult
$Res call({
 String title, String taskType, String priority, String? description, String? propertyId, String? locationId, String? assetId, String? assigneeTeamId, String? assigneeUserId, String? checklistTemplateId, DateTime? dueAt, DateTime? scheduledStartAt, bool requiresPhoto, String? sourceType, String? sourceId, LinkRef? linkTo
});


$LinkRefCopyWith<$Res>? get linkTo;

}
/// @nodoc
class _$CreateTaskInputCopyWithImpl<$Res>
    implements $CreateTaskInputCopyWith<$Res> {
  _$CreateTaskInputCopyWithImpl(this._self, this._then);

  final CreateTaskInput _self;
  final $Res Function(CreateTaskInput) _then;

/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? taskType = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? checklistTemplateId = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? requiresPhoto = null,Object? sourceType = freezed,Object? sourceId = freezed,Object? linkTo = freezed,}) {
  return _then(CreateTaskInput(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requiresPhoto: null == requiresPhoto ? _self.requiresPhoto : requiresPhoto // ignore: cast_nullable_to_non_nullable
as bool,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,linkTo: freezed == linkTo ? _self.linkTo : linkTo // ignore: cast_nullable_to_non_nullable
as LinkRef?,
  ));
}
/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkRefCopyWith<$Res>? get linkTo {
    if (_self.linkTo == null) {
    return null;
  }

  return $LinkRefCopyWith<$Res>(_self.linkTo!, (value) {
    return _then(_self.copyWith(linkTo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTaskInput].
extension CreateTaskInputPatterns on CreateTaskInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTaskInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTaskInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTaskInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateTaskInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTaskInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTaskInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String taskType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool requiresPhoto,  String? sourceType,  String? sourceId,  LinkRef? linkTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTaskInput() when $default != null:
return $default(_that.title,_that.taskType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresPhoto,_that.sourceType,_that.sourceId,_that.linkTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String taskType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool requiresPhoto,  String? sourceType,  String? sourceId,  LinkRef? linkTo)  $default,) {final _that = this;
switch (_that) {
case _CreateTaskInput():
return $default(_that.title,_that.taskType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresPhoto,_that.sourceType,_that.sourceId,_that.linkTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String taskType,  String priority,  String? description,  String? propertyId,  String? locationId,  String? assetId,  String? assigneeTeamId,  String? assigneeUserId,  String? checklistTemplateId,  DateTime? dueAt,  DateTime? scheduledStartAt,  bool requiresPhoto,  String? sourceType,  String? sourceId,  LinkRef? linkTo)?  $default,) {final _that = this;
switch (_that) {
case _CreateTaskInput() when $default != null:
return $default(_that.title,_that.taskType,_that.priority,_that.description,_that.propertyId,_that.locationId,_that.assetId,_that.assigneeTeamId,_that.assigneeUserId,_that.checklistTemplateId,_that.dueAt,_that.scheduledStartAt,_that.requiresPhoto,_that.sourceType,_that.sourceId,_that.linkTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTaskInput implements CreateTaskInput {
  const _CreateTaskInput({required this.title, required this.taskType, this.priority = 'medium', this.description, this.propertyId, this.locationId, this.assetId, this.assigneeTeamId, this.assigneeUserId, this.checklistTemplateId, this.dueAt, this.scheduledStartAt, this.requiresPhoto = false, this.sourceType, this.sourceId, this.linkTo});
  factory _CreateTaskInput.fromJson(Map<String, dynamic> json) => _$CreateTaskInputFromJson(json);

@override final  String title;
@override final  String taskType;
@override@JsonKey() final  String priority;
@override final  String? description;
@override final  String? propertyId;
@override final  String? locationId;
@override final  String? assetId;
@override final  String? assigneeTeamId;
@override final  String? assigneeUserId;
@override final  String? checklistTemplateId;
@override final  DateTime? dueAt;
@override final  DateTime? scheduledStartAt;
@override@JsonKey() final  bool requiresPhoto;
@override final  String? sourceType;
@override final  String? sourceId;
@override final  LinkRef? linkTo;

/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTaskInputCopyWith<_CreateTaskInput> get copyWith => __$CreateTaskInputCopyWithImpl<_CreateTaskInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTaskInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTaskInput&&(identical(other.title, title) || other.title == title)&&(identical(other.taskType, taskType) || other.taskType == taskType)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.assigneeTeamId, assigneeTeamId) || other.assigneeTeamId == assigneeTeamId)&&(identical(other.assigneeUserId, assigneeUserId) || other.assigneeUserId == assigneeUserId)&&(identical(other.checklistTemplateId, checklistTemplateId) || other.checklistTemplateId == checklistTemplateId)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.scheduledStartAt, scheduledStartAt) || other.scheduledStartAt == scheduledStartAt)&&(identical(other.requiresPhoto, requiresPhoto) || other.requiresPhoto == requiresPhoto)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.linkTo, linkTo) || other.linkTo == linkTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,title,taskType,priority,description,propertyId,locationId,assetId,assigneeTeamId,assigneeUserId,checklistTemplateId,dueAt,scheduledStartAt,requiresPhoto,sourceType,sourceId,linkTo);
}

@override
String toString() {
    return 'CreateTaskInput(title: $title, taskType: $taskType, priority: $priority, description: $description, propertyId: $propertyId, locationId: $locationId, assetId: $assetId, assigneeTeamId: $assigneeTeamId, assigneeUserId: $assigneeUserId, checklistTemplateId: $checklistTemplateId, dueAt: $dueAt, scheduledStartAt: $scheduledStartAt, requiresPhoto: $requiresPhoto, sourceType: $sourceType, sourceId: $sourceId, linkTo: $linkTo)';
}


}

/// @nodoc
abstract mixin class _$CreateTaskInputCopyWith<$Res> implements $CreateTaskInputCopyWith<$Res> {
  factory _$CreateTaskInputCopyWith(_CreateTaskInput value, $Res Function(_CreateTaskInput) _then) = __$CreateTaskInputCopyWithImpl;
@override @useResult
$Res call({
 String title, String taskType, String priority, String? description, String? propertyId, String? locationId, String? assetId, String? assigneeTeamId, String? assigneeUserId, String? checklistTemplateId, DateTime? dueAt, DateTime? scheduledStartAt, bool requiresPhoto, String? sourceType, String? sourceId, LinkRef? linkTo
});


@override $LinkRefCopyWith<$Res>? get linkTo;

}
/// @nodoc
class __$CreateTaskInputCopyWithImpl<$Res>
    implements _$CreateTaskInputCopyWith<$Res> {
  __$CreateTaskInputCopyWithImpl(this._self, this._then);

  final _CreateTaskInput _self;
  final $Res Function(_CreateTaskInput) _then;

/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? taskType = null,Object? priority = null,Object? description = freezed,Object? propertyId = freezed,Object? locationId = freezed,Object? assetId = freezed,Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? checklistTemplateId = freezed,Object? dueAt = freezed,Object? scheduledStartAt = freezed,Object? requiresPhoto = null,Object? sourceType = freezed,Object? sourceId = freezed,Object? linkTo = freezed,}) {
  return _then(_CreateTaskInput(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,checklistTemplateId: freezed == checklistTemplateId ? _self.checklistTemplateId : checklistTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledStartAt: freezed == scheduledStartAt ? _self.scheduledStartAt : scheduledStartAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requiresPhoto: null == requiresPhoto ? _self.requiresPhoto : requiresPhoto // ignore: cast_nullable_to_non_nullable
as bool,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as String?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,linkTo: freezed == linkTo ? _self.linkTo : linkTo // ignore: cast_nullable_to_non_nullable
as LinkRef?,
  ));
}

/// Create a copy of CreateTaskInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkRefCopyWith<$Res>? get linkTo {
    if (_self.linkTo == null) {
    return null;
  }

  return $LinkRefCopyWith<$Res>(_self.linkTo!, (value) {
    return _then(_self.copyWith(linkTo: value));
  });
}
}


/// @nodoc
mixin _$AssignInput {

 String? get assigneeTeamId; String? get assigneeUserId; String? get note;
/// Create a copy of AssignInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignInputCopyWith<AssignInput> get copyWith => _$AssignInputCopyWithImpl<AssignInput>(this as AssignInput, _$identity);

  /// Serializes this AssignInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AssignInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignInput&&(identical(other.assigneeTeamId, _this.assigneeTeamId) || other.assigneeTeamId == _this.assigneeTeamId)&&(identical(other.assigneeUserId, _this.assigneeUserId) || other.assigneeUserId == _this.assigneeUserId)&&(identical(other.note, _this.note) || other.note == _this.note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AssignInput;
  return Object.hash(runtimeType,_this.assigneeTeamId,_this.assigneeUserId,_this.note);
}

@override
String toString() {
  final _this = this as AssignInput;
  return 'AssignInput(assigneeTeamId: ${_this.assigneeTeamId}, assigneeUserId: ${_this.assigneeUserId}, note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $AssignInputCopyWith<$Res>  {
  factory $AssignInputCopyWith(AssignInput value, $Res Function(AssignInput) _then) = _$AssignInputCopyWithImpl;
@useResult
$Res call({
 String? assigneeTeamId, String? assigneeUserId, String? note
});




}
/// @nodoc
class _$AssignInputCopyWithImpl<$Res>
    implements $AssignInputCopyWith<$Res> {
  _$AssignInputCopyWithImpl(this._self, this._then);

  final AssignInput _self;
  final $Res Function(AssignInput) _then;

/// Create a copy of AssignInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? note = freezed,}) {
  return _then(AssignInput(
assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignInput].
extension AssignInputPatterns on AssignInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignInput value)  $default,){
final _that = this;
switch (_that) {
case _AssignInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignInput value)?  $default,){
final _that = this;
switch (_that) {
case _AssignInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? assigneeTeamId,  String? assigneeUserId,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignInput() when $default != null:
return $default(_that.assigneeTeamId,_that.assigneeUserId,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? assigneeTeamId,  String? assigneeUserId,  String? note)  $default,) {final _that = this;
switch (_that) {
case _AssignInput():
return $default(_that.assigneeTeamId,_that.assigneeUserId,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? assigneeTeamId,  String? assigneeUserId,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _AssignInput() when $default != null:
return $default(_that.assigneeTeamId,_that.assigneeUserId,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignInput implements AssignInput {
  const _AssignInput({this.assigneeTeamId, this.assigneeUserId, this.note});
  factory _AssignInput.fromJson(Map<String, dynamic> json) => _$AssignInputFromJson(json);

@override final  String? assigneeTeamId;
@override final  String? assigneeUserId;
@override final  String? note;

/// Create a copy of AssignInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignInputCopyWith<_AssignInput> get copyWith => __$AssignInputCopyWithImpl<_AssignInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignInput&&(identical(other.assigneeTeamId, assigneeTeamId) || other.assigneeTeamId == assigneeTeamId)&&(identical(other.assigneeUserId, assigneeUserId) || other.assigneeUserId == assigneeUserId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assigneeTeamId,assigneeUserId,note);
}

@override
String toString() {
    return 'AssignInput(assigneeTeamId: $assigneeTeamId, assigneeUserId: $assigneeUserId, note: $note)';
}


}

/// @nodoc
abstract mixin class _$AssignInputCopyWith<$Res> implements $AssignInputCopyWith<$Res> {
  factory _$AssignInputCopyWith(_AssignInput value, $Res Function(_AssignInput) _then) = __$AssignInputCopyWithImpl;
@override @useResult
$Res call({
 String? assigneeTeamId, String? assigneeUserId, String? note
});




}
/// @nodoc
class __$AssignInputCopyWithImpl<$Res>
    implements _$AssignInputCopyWith<$Res> {
  __$AssignInputCopyWithImpl(this._self, this._then);

  final _AssignInput _self;
  final $Res Function(_AssignInput) _then;

/// Create a copy of AssignInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assigneeTeamId = freezed,Object? assigneeUserId = freezed,Object? note = freezed,}) {
  return _then(_AssignInput(
assigneeTeamId: freezed == assigneeTeamId ? _self.assigneeTeamId : assigneeTeamId // ignore: cast_nullable_to_non_nullable
as String?,assigneeUserId: freezed == assigneeUserId ? _self.assigneeUserId : assigneeUserId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceInput {

 String get platform; String get token; String get deviceId; String get appVersion;
/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInputCopyWith<DeviceInput> get copyWith => _$DeviceInputCopyWithImpl<DeviceInput>(this as DeviceInput, _$identity);

  /// Serializes this DeviceInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeviceInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInput&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&(identical(other.appVersion, _this.appVersion) || other.appVersion == _this.appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeviceInput;
  return Object.hash(runtimeType,_this.platform,_this.token,_this.deviceId,_this.appVersion);
}

@override
String toString() {
  final _this = this as DeviceInput;
  return 'DeviceInput(platform: ${_this.platform}, token: ${_this.token}, deviceId: ${_this.deviceId}, appVersion: ${_this.appVersion})';
}


}

/// @nodoc
abstract mixin class $DeviceInputCopyWith<$Res>  {
  factory $DeviceInputCopyWith(DeviceInput value, $Res Function(DeviceInput) _then) = _$DeviceInputCopyWithImpl;
@useResult
$Res call({
 String platform, String token, String deviceId, String appVersion
});




}
/// @nodoc
class _$DeviceInputCopyWithImpl<$Res>
    implements $DeviceInputCopyWith<$Res> {
  _$DeviceInputCopyWithImpl(this._self, this._then);

  final DeviceInput _self;
  final $Res Function(DeviceInput) _then;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platform = null,Object? token = null,Object? deviceId = null,Object? appVersion = null,}) {
  return _then(DeviceInput(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceInput].
extension DeviceInputPatterns on DeviceInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceInput value)  $default,){
final _that = this;
switch (_that) {
case _DeviceInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceInput value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String platform,  String token,  String deviceId,  String appVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
return $default(_that.platform,_that.token,_that.deviceId,_that.appVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String platform,  String token,  String deviceId,  String appVersion)  $default,) {final _that = this;
switch (_that) {
case _DeviceInput():
return $default(_that.platform,_that.token,_that.deviceId,_that.appVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String platform,  String token,  String deviceId,  String appVersion)?  $default,) {final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
return $default(_that.platform,_that.token,_that.deviceId,_that.appVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceInput implements DeviceInput {
  const _DeviceInput({required this.platform, required this.token, required this.deviceId, required this.appVersion});
  factory _DeviceInput.fromJson(Map<String, dynamic> json) => _$DeviceInputFromJson(json);

@override final  String platform;
@override final  String token;
@override final  String deviceId;
@override final  String appVersion;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceInputCopyWith<_DeviceInput> get copyWith => __$DeviceInputCopyWithImpl<_DeviceInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceInput&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,platform,token,deviceId,appVersion);
}

@override
String toString() {
    return 'DeviceInput(platform: $platform, token: $token, deviceId: $deviceId, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class _$DeviceInputCopyWith<$Res> implements $DeviceInputCopyWith<$Res> {
  factory _$DeviceInputCopyWith(_DeviceInput value, $Res Function(_DeviceInput) _then) = __$DeviceInputCopyWithImpl;
@override @useResult
$Res call({
 String platform, String token, String deviceId, String appVersion
});




}
/// @nodoc
class __$DeviceInputCopyWithImpl<$Res>
    implements _$DeviceInputCopyWith<$Res> {
  __$DeviceInputCopyWithImpl(this._self, this._then);

  final _DeviceInput _self;
  final $Res Function(_DeviceInput) _then;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platform = null,Object? token = null,Object? deviceId = null,Object? appVersion = null,}) {
  return _then(_DeviceInput(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
