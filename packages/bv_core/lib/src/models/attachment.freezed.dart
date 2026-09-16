// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Attachment {

 String get id; String get objectType; String get objectId; String get attachmentType; String get contentType; int get sizeBytes; String get uploadedBy; String get uploadedByName; DateTime? get uploadedAt; DateTime? get capturedAt; String get gpsStatus; double? get gpsLat; double? get gpsLng; double? get gpsAccuracyM; String get status; String? get url; String? get thumbUrl; int? get width; int? get height; String? get caption; String? get originalFilename; String? get clientAttachmentId;
/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentCopyWith<Attachment> get copyWith => _$AttachmentCopyWithImpl<Attachment>(this as Attachment, _$identity);

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Attachment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attachment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.attachmentType, _this.attachmentType) || other.attachmentType == _this.attachmentType)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&(identical(other.sizeBytes, _this.sizeBytes) || other.sizeBytes == _this.sizeBytes)&&(identical(other.uploadedBy, _this.uploadedBy) || other.uploadedBy == _this.uploadedBy)&&(identical(other.uploadedByName, _this.uploadedByName) || other.uploadedByName == _this.uploadedByName)&&(identical(other.uploadedAt, _this.uploadedAt) || other.uploadedAt == _this.uploadedAt)&&(identical(other.capturedAt, _this.capturedAt) || other.capturedAt == _this.capturedAt)&&(identical(other.gpsStatus, _this.gpsStatus) || other.gpsStatus == _this.gpsStatus)&&(identical(other.gpsLat, _this.gpsLat) || other.gpsLat == _this.gpsLat)&&(identical(other.gpsLng, _this.gpsLng) || other.gpsLng == _this.gpsLng)&&(identical(other.gpsAccuracyM, _this.gpsAccuracyM) || other.gpsAccuracyM == _this.gpsAccuracyM)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.thumbUrl, _this.thumbUrl) || other.thumbUrl == _this.thumbUrl)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.height, _this.height) || other.height == _this.height)&&(identical(other.caption, _this.caption) || other.caption == _this.caption)&&(identical(other.originalFilename, _this.originalFilename) || other.originalFilename == _this.originalFilename)&&(identical(other.clientAttachmentId, _this.clientAttachmentId) || other.clientAttachmentId == _this.clientAttachmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Attachment;
  return Object.hashAll([runtimeType,_this.id,_this.objectType,_this.objectId,_this.attachmentType,_this.contentType,_this.sizeBytes,_this.uploadedBy,_this.uploadedByName,_this.uploadedAt,_this.capturedAt,_this.gpsStatus,_this.gpsLat,_this.gpsLng,_this.gpsAccuracyM,_this.status,_this.url,_this.thumbUrl,_this.width,_this.height,_this.caption,_this.originalFilename,_this.clientAttachmentId]);
}

@override
String toString() {
  final _this = this as Attachment;
  return 'Attachment(id: ${_this.id}, objectType: ${_this.objectType}, objectId: ${_this.objectId}, attachmentType: ${_this.attachmentType}, contentType: ${_this.contentType}, sizeBytes: ${_this.sizeBytes}, uploadedBy: ${_this.uploadedBy}, uploadedByName: ${_this.uploadedByName}, uploadedAt: ${_this.uploadedAt}, capturedAt: ${_this.capturedAt}, gpsStatus: ${_this.gpsStatus}, gpsLat: ${_this.gpsLat}, gpsLng: ${_this.gpsLng}, gpsAccuracyM: ${_this.gpsAccuracyM}, status: ${_this.status}, url: ${_this.url}, thumbUrl: ${_this.thumbUrl}, width: ${_this.width}, height: ${_this.height}, caption: ${_this.caption}, originalFilename: ${_this.originalFilename}, clientAttachmentId: ${_this.clientAttachmentId})';
}


}

/// @nodoc
abstract mixin class $AttachmentCopyWith<$Res>  {
  factory $AttachmentCopyWith(Attachment value, $Res Function(Attachment) _then) = _$AttachmentCopyWithImpl;
@useResult
$Res call({
 String id, String objectType, String objectId, String attachmentType, String contentType, int sizeBytes, String uploadedBy, String uploadedByName, DateTime? uploadedAt, DateTime? capturedAt, String gpsStatus, double? gpsLat, double? gpsLng, double? gpsAccuracyM, String status, String? url, String? thumbUrl, int? width, int? height, String? caption, String? originalFilename, String? clientAttachmentId
});




}
/// @nodoc
class _$AttachmentCopyWithImpl<$Res>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._self, this._then);

  final Attachment _self;
  final $Res Function(Attachment) _then;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? attachmentType = null,Object? contentType = null,Object? sizeBytes = null,Object? uploadedBy = null,Object? uploadedByName = null,Object? uploadedAt = freezed,Object? capturedAt = freezed,Object? gpsStatus = null,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? gpsAccuracyM = freezed,Object? status = null,Object? url = freezed,Object? thumbUrl = freezed,Object? width = freezed,Object? height = freezed,Object? caption = freezed,Object? originalFilename = freezed,Object? clientAttachmentId = freezed,}) {
  return _then(Attachment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,attachmentType: null == attachmentType ? _self.attachmentType : attachmentType // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,uploadedBy: null == uploadedBy ? _self.uploadedBy : uploadedBy // ignore: cast_nullable_to_non_nullable
as String,uploadedByName: null == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracyM: freezed == gpsAccuracyM ? _self.gpsAccuracyM : gpsAccuracyM // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,thumbUrl: freezed == thumbUrl ? _self.thumbUrl : thumbUrl // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,originalFilename: freezed == originalFilename ? _self.originalFilename : originalFilename // ignore: cast_nullable_to_non_nullable
as String?,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Attachment].
extension AttachmentPatterns on Attachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attachment value)  $default,){
final _that = this;
switch (_that) {
case _Attachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attachment value)?  $default,){
final _that = this;
switch (_that) {
case _Attachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String uploadedBy,  String uploadedByName,  DateTime? uploadedAt,  DateTime? capturedAt,  String gpsStatus,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  String status,  String? url,  String? thumbUrl,  int? width,  int? height,  String? caption,  String? originalFilename,  String? clientAttachmentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attachment() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.uploadedBy,_that.uploadedByName,_that.uploadedAt,_that.capturedAt,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.status,_that.url,_that.thumbUrl,_that.width,_that.height,_that.caption,_that.originalFilename,_that.clientAttachmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String uploadedBy,  String uploadedByName,  DateTime? uploadedAt,  DateTime? capturedAt,  String gpsStatus,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  String status,  String? url,  String? thumbUrl,  int? width,  int? height,  String? caption,  String? originalFilename,  String? clientAttachmentId)  $default,) {final _that = this;
switch (_that) {
case _Attachment():
return $default(_that.id,_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.uploadedBy,_that.uploadedByName,_that.uploadedAt,_that.capturedAt,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.status,_that.url,_that.thumbUrl,_that.width,_that.height,_that.caption,_that.originalFilename,_that.clientAttachmentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String uploadedBy,  String uploadedByName,  DateTime? uploadedAt,  DateTime? capturedAt,  String gpsStatus,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  String status,  String? url,  String? thumbUrl,  int? width,  int? height,  String? caption,  String? originalFilename,  String? clientAttachmentId)?  $default,) {final _that = this;
switch (_that) {
case _Attachment() when $default != null:
return $default(_that.id,_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.uploadedBy,_that.uploadedByName,_that.uploadedAt,_that.capturedAt,_that.gpsStatus,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.status,_that.url,_that.thumbUrl,_that.width,_that.height,_that.caption,_that.originalFilename,_that.clientAttachmentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Attachment implements Attachment {
  const _Attachment({required this.id, required this.objectType, required this.objectId, required this.attachmentType, this.contentType = 'image/jpeg', this.sizeBytes = 0, this.uploadedBy = '', this.uploadedByName = '', this.uploadedAt, this.capturedAt, this.gpsStatus = 'unavailable', this.gpsLat, this.gpsLng, this.gpsAccuracyM, this.status = 'pending', this.url, this.thumbUrl, this.width, this.height, this.caption, this.originalFilename, this.clientAttachmentId});
  factory _Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);

@override final  String id;
@override final  String objectType;
@override final  String objectId;
@override final  String attachmentType;
@override@JsonKey() final  String contentType;
@override@JsonKey() final  int sizeBytes;
@override@JsonKey() final  String uploadedBy;
@override@JsonKey() final  String uploadedByName;
@override final  DateTime? uploadedAt;
@override final  DateTime? capturedAt;
@override@JsonKey() final  String gpsStatus;
@override final  double? gpsLat;
@override final  double? gpsLng;
@override final  double? gpsAccuracyM;
@override@JsonKey() final  String status;
@override final  String? url;
@override final  String? thumbUrl;
@override final  int? width;
@override final  int? height;
@override final  String? caption;
@override final  String? originalFilename;
@override final  String? clientAttachmentId;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentCopyWith<_Attachment> get copyWith => __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attachment&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.attachmentType, attachmentType) || other.attachmentType == attachmentType)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.uploadedBy, uploadedBy) || other.uploadedBy == uploadedBy)&&(identical(other.uploadedByName, uploadedByName) || other.uploadedByName == uploadedByName)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&(identical(other.gpsStatus, gpsStatus) || other.gpsStatus == gpsStatus)&&(identical(other.gpsLat, gpsLat) || other.gpsLat == gpsLat)&&(identical(other.gpsLng, gpsLng) || other.gpsLng == gpsLng)&&(identical(other.gpsAccuracyM, gpsAccuracyM) || other.gpsAccuracyM == gpsAccuracyM)&&(identical(other.status, status) || other.status == status)&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbUrl, thumbUrl) || other.thumbUrl == thumbUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.originalFilename, originalFilename) || other.originalFilename == originalFilename)&&(identical(other.clientAttachmentId, clientAttachmentId) || other.clientAttachmentId == clientAttachmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,objectType,objectId,attachmentType,contentType,sizeBytes,uploadedBy,uploadedByName,uploadedAt,capturedAt,gpsStatus,gpsLat,gpsLng,gpsAccuracyM,status,url,thumbUrl,width,height,caption,originalFilename,clientAttachmentId]);
}

@override
String toString() {
    return 'Attachment(id: $id, objectType: $objectType, objectId: $objectId, attachmentType: $attachmentType, contentType: $contentType, sizeBytes: $sizeBytes, uploadedBy: $uploadedBy, uploadedByName: $uploadedByName, uploadedAt: $uploadedAt, capturedAt: $capturedAt, gpsStatus: $gpsStatus, gpsLat: $gpsLat, gpsLng: $gpsLng, gpsAccuracyM: $gpsAccuracyM, status: $status, url: $url, thumbUrl: $thumbUrl, width: $width, height: $height, caption: $caption, originalFilename: $originalFilename, clientAttachmentId: $clientAttachmentId)';
}


}

/// @nodoc
abstract mixin class _$AttachmentCopyWith<$Res> implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(_Attachment value, $Res Function(_Attachment) _then) = __$AttachmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectType, String objectId, String attachmentType, String contentType, int sizeBytes, String uploadedBy, String uploadedByName, DateTime? uploadedAt, DateTime? capturedAt, String gpsStatus, double? gpsLat, double? gpsLng, double? gpsAccuracyM, String status, String? url, String? thumbUrl, int? width, int? height, String? caption, String? originalFilename, String? clientAttachmentId
});




}
/// @nodoc
class __$AttachmentCopyWithImpl<$Res>
    implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(this._self, this._then);

  final _Attachment _self;
  final $Res Function(_Attachment) _then;

/// Create a copy of Attachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? objectId = null,Object? attachmentType = null,Object? contentType = null,Object? sizeBytes = null,Object? uploadedBy = null,Object? uploadedByName = null,Object? uploadedAt = freezed,Object? capturedAt = freezed,Object? gpsStatus = null,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? gpsAccuracyM = freezed,Object? status = null,Object? url = freezed,Object? thumbUrl = freezed,Object? width = freezed,Object? height = freezed,Object? caption = freezed,Object? originalFilename = freezed,Object? clientAttachmentId = freezed,}) {
  return _then(_Attachment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,attachmentType: null == attachmentType ? _self.attachmentType : attachmentType // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,uploadedBy: null == uploadedBy ? _self.uploadedBy : uploadedBy // ignore: cast_nullable_to_non_nullable
as String,uploadedByName: null == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracyM: freezed == gpsAccuracyM ? _self.gpsAccuracyM : gpsAccuracyM // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,thumbUrl: freezed == thumbUrl ? _self.thumbUrl : thumbUrl // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,originalFilename: freezed == originalFilename ? _self.originalFilename : originalFilename // ignore: cast_nullable_to_non_nullable
as String?,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PresignInput {

 String get objectType; String get objectId; String get attachmentType; String get contentType; int get sizeBytes; String? get clientAttachmentId; String? get sha256; String? get originalFilename;
/// Create a copy of PresignInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresignInputCopyWith<PresignInput> get copyWith => _$PresignInputCopyWithImpl<PresignInput>(this as PresignInput, _$identity);

  /// Serializes this PresignInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PresignInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresignInput&&(identical(other.objectType, _this.objectType) || other.objectType == _this.objectType)&&(identical(other.objectId, _this.objectId) || other.objectId == _this.objectId)&&(identical(other.attachmentType, _this.attachmentType) || other.attachmentType == _this.attachmentType)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&(identical(other.sizeBytes, _this.sizeBytes) || other.sizeBytes == _this.sizeBytes)&&(identical(other.clientAttachmentId, _this.clientAttachmentId) || other.clientAttachmentId == _this.clientAttachmentId)&&(identical(other.sha256, _this.sha256) || other.sha256 == _this.sha256)&&(identical(other.originalFilename, _this.originalFilename) || other.originalFilename == _this.originalFilename));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PresignInput;
  return Object.hash(runtimeType,_this.objectType,_this.objectId,_this.attachmentType,_this.contentType,_this.sizeBytes,_this.clientAttachmentId,_this.sha256,_this.originalFilename);
}

@override
String toString() {
  final _this = this as PresignInput;
  return 'PresignInput(objectType: ${_this.objectType}, objectId: ${_this.objectId}, attachmentType: ${_this.attachmentType}, contentType: ${_this.contentType}, sizeBytes: ${_this.sizeBytes}, clientAttachmentId: ${_this.clientAttachmentId}, sha256: ${_this.sha256}, originalFilename: ${_this.originalFilename})';
}


}

/// @nodoc
abstract mixin class $PresignInputCopyWith<$Res>  {
  factory $PresignInputCopyWith(PresignInput value, $Res Function(PresignInput) _then) = _$PresignInputCopyWithImpl;
@useResult
$Res call({
 String objectType, String objectId, String attachmentType, String contentType, int sizeBytes, String? clientAttachmentId, String? sha256, String? originalFilename
});




}
/// @nodoc
class _$PresignInputCopyWithImpl<$Res>
    implements $PresignInputCopyWith<$Res> {
  _$PresignInputCopyWithImpl(this._self, this._then);

  final PresignInput _self;
  final $Res Function(PresignInput) _then;

/// Create a copy of PresignInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,Object? objectId = null,Object? attachmentType = null,Object? contentType = null,Object? sizeBytes = null,Object? clientAttachmentId = freezed,Object? sha256 = freezed,Object? originalFilename = freezed,}) {
  return _then(PresignInput(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,attachmentType: null == attachmentType ? _self.attachmentType : attachmentType // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,sha256: freezed == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String?,originalFilename: freezed == originalFilename ? _self.originalFilename : originalFilename // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PresignInput].
extension PresignInputPatterns on PresignInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresignInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresignInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresignInput value)  $default,){
final _that = this;
switch (_that) {
case _PresignInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresignInput value)?  $default,){
final _that = this;
switch (_that) {
case _PresignInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String? clientAttachmentId,  String? sha256,  String? originalFilename)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresignInput() when $default != null:
return $default(_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.clientAttachmentId,_that.sha256,_that.originalFilename);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String? clientAttachmentId,  String? sha256,  String? originalFilename)  $default,) {final _that = this;
switch (_that) {
case _PresignInput():
return $default(_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.clientAttachmentId,_that.sha256,_that.originalFilename);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectType,  String objectId,  String attachmentType,  String contentType,  int sizeBytes,  String? clientAttachmentId,  String? sha256,  String? originalFilename)?  $default,) {final _that = this;
switch (_that) {
case _PresignInput() when $default != null:
return $default(_that.objectType,_that.objectId,_that.attachmentType,_that.contentType,_that.sizeBytes,_that.clientAttachmentId,_that.sha256,_that.originalFilename);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresignInput implements PresignInput {
  const _PresignInput({required this.objectType, required this.objectId, required this.attachmentType, required this.contentType, required this.sizeBytes, this.clientAttachmentId, this.sha256, this.originalFilename});
  factory _PresignInput.fromJson(Map<String, dynamic> json) => _$PresignInputFromJson(json);

@override final  String objectType;
@override final  String objectId;
@override final  String attachmentType;
@override final  String contentType;
@override final  int sizeBytes;
@override final  String? clientAttachmentId;
@override final  String? sha256;
@override final  String? originalFilename;

/// Create a copy of PresignInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresignInputCopyWith<_PresignInput> get copyWith => __$PresignInputCopyWithImpl<_PresignInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresignInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresignInput&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.attachmentType, attachmentType) || other.attachmentType == attachmentType)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.clientAttachmentId, clientAttachmentId) || other.clientAttachmentId == clientAttachmentId)&&(identical(other.sha256, sha256) || other.sha256 == sha256)&&(identical(other.originalFilename, originalFilename) || other.originalFilename == originalFilename));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,objectType,objectId,attachmentType,contentType,sizeBytes,clientAttachmentId,sha256,originalFilename);
}

@override
String toString() {
    return 'PresignInput(objectType: $objectType, objectId: $objectId, attachmentType: $attachmentType, contentType: $contentType, sizeBytes: $sizeBytes, clientAttachmentId: $clientAttachmentId, sha256: $sha256, originalFilename: $originalFilename)';
}


}

/// @nodoc
abstract mixin class _$PresignInputCopyWith<$Res> implements $PresignInputCopyWith<$Res> {
  factory _$PresignInputCopyWith(_PresignInput value, $Res Function(_PresignInput) _then) = __$PresignInputCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String objectId, String attachmentType, String contentType, int sizeBytes, String? clientAttachmentId, String? sha256, String? originalFilename
});




}
/// @nodoc
class __$PresignInputCopyWithImpl<$Res>
    implements _$PresignInputCopyWith<$Res> {
  __$PresignInputCopyWithImpl(this._self, this._then);

  final _PresignInput _self;
  final $Res Function(_PresignInput) _then;

/// Create a copy of PresignInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? objectId = null,Object? attachmentType = null,Object? contentType = null,Object? sizeBytes = null,Object? clientAttachmentId = freezed,Object? sha256 = freezed,Object? originalFilename = freezed,}) {
  return _then(_PresignInput(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,objectId: null == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String,attachmentType: null == attachmentType ? _self.attachmentType : attachmentType // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,clientAttachmentId: freezed == clientAttachmentId ? _self.clientAttachmentId : clientAttachmentId // ignore: cast_nullable_to_non_nullable
as String?,sha256: freezed == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String?,originalFilename: freezed == originalFilename ? _self.originalFilename : originalFilename // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PresignOutput {

 String get attachmentId; String get uploadUrl; String get storageKey; DateTime? get expiresAt; String get method; Map<String, dynamic>? get headers;
/// Create a copy of PresignOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresignOutputCopyWith<PresignOutput> get copyWith => _$PresignOutputCopyWithImpl<PresignOutput>(this as PresignOutput, _$identity);

  /// Serializes this PresignOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PresignOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresignOutput&&(identical(other.attachmentId, _this.attachmentId) || other.attachmentId == _this.attachmentId)&&(identical(other.uploadUrl, _this.uploadUrl) || other.uploadUrl == _this.uploadUrl)&&(identical(other.storageKey, _this.storageKey) || other.storageKey == _this.storageKey)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.method, _this.method) || other.method == _this.method)&&const DeepCollectionEquality().equals(other.headers, _this.headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PresignOutput;
  return Object.hash(runtimeType,_this.attachmentId,_this.uploadUrl,_this.storageKey,_this.expiresAt,_this.method,const DeepCollectionEquality().hash(_this.headers));
}

@override
String toString() {
  final _this = this as PresignOutput;
  return 'PresignOutput(attachmentId: ${_this.attachmentId}, uploadUrl: ${_this.uploadUrl}, storageKey: ${_this.storageKey}, expiresAt: ${_this.expiresAt}, method: ${_this.method}, headers: ${_this.headers})';
}


}

/// @nodoc
abstract mixin class $PresignOutputCopyWith<$Res>  {
  factory $PresignOutputCopyWith(PresignOutput value, $Res Function(PresignOutput) _then) = _$PresignOutputCopyWithImpl;
@useResult
$Res call({
 String attachmentId, String uploadUrl, String storageKey, DateTime? expiresAt, String method, Map<String, dynamic>? headers
});




}
/// @nodoc
class _$PresignOutputCopyWithImpl<$Res>
    implements $PresignOutputCopyWith<$Res> {
  _$PresignOutputCopyWithImpl(this._self, this._then);

  final PresignOutput _self;
  final $Res Function(PresignOutput) _then;

/// Create a copy of PresignOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attachmentId = null,Object? uploadUrl = null,Object? storageKey = null,Object? expiresAt = freezed,Object? method = null,Object? headers = freezed,}) {
  return _then(PresignOutput(
attachmentId: null == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,storageKey: null == storageKey ? _self.storageKey : storageKey // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PresignOutput].
extension PresignOutputPatterns on PresignOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresignOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresignOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresignOutput value)  $default,){
final _that = this;
switch (_that) {
case _PresignOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresignOutput value)?  $default,){
final _that = this;
switch (_that) {
case _PresignOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String attachmentId,  String uploadUrl,  String storageKey,  DateTime? expiresAt,  String method,  Map<String, dynamic>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresignOutput() when $default != null:
return $default(_that.attachmentId,_that.uploadUrl,_that.storageKey,_that.expiresAt,_that.method,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String attachmentId,  String uploadUrl,  String storageKey,  DateTime? expiresAt,  String method,  Map<String, dynamic>? headers)  $default,) {final _that = this;
switch (_that) {
case _PresignOutput():
return $default(_that.attachmentId,_that.uploadUrl,_that.storageKey,_that.expiresAt,_that.method,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String attachmentId,  String uploadUrl,  String storageKey,  DateTime? expiresAt,  String method,  Map<String, dynamic>? headers)?  $default,) {final _that = this;
switch (_that) {
case _PresignOutput() when $default != null:
return $default(_that.attachmentId,_that.uploadUrl,_that.storageKey,_that.expiresAt,_that.method,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresignOutput implements PresignOutput {
  const _PresignOutput({required this.attachmentId, required this.uploadUrl, this.storageKey = '', this.expiresAt, this.method = 'PUT',  Map<String, dynamic>? headers}): _headers = headers;
  factory _PresignOutput.fromJson(Map<String, dynamic> json) => _$PresignOutputFromJson(json);

@override final  String attachmentId;
@override final  String uploadUrl;
@override@JsonKey() final  String storageKey;
@override final  DateTime? expiresAt;
@override@JsonKey() final  String method;
 final  Map<String, dynamic>? _headers;
@override Map<String, dynamic>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PresignOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresignOutputCopyWith<_PresignOutput> get copyWith => __$PresignOutputCopyWithImpl<_PresignOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresignOutputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresignOutput&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.storageKey, storageKey) || other.storageKey == storageKey)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attachmentId,uploadUrl,storageKey,expiresAt,method,const DeepCollectionEquality().hash(_headers));
}

@override
String toString() {
    return 'PresignOutput(attachmentId: $attachmentId, uploadUrl: $uploadUrl, storageKey: $storageKey, expiresAt: $expiresAt, method: $method, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$PresignOutputCopyWith<$Res> implements $PresignOutputCopyWith<$Res> {
  factory _$PresignOutputCopyWith(_PresignOutput value, $Res Function(_PresignOutput) _then) = __$PresignOutputCopyWithImpl;
@override @useResult
$Res call({
 String attachmentId, String uploadUrl, String storageKey, DateTime? expiresAt, String method, Map<String, dynamic>? headers
});




}
/// @nodoc
class __$PresignOutputCopyWithImpl<$Res>
    implements _$PresignOutputCopyWith<$Res> {
  __$PresignOutputCopyWithImpl(this._self, this._then);

  final _PresignOutput _self;
  final $Res Function(_PresignOutput) _then;

/// Create a copy of PresignOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attachmentId = null,Object? uploadUrl = null,Object? storageKey = null,Object? expiresAt = freezed,Object? method = null,Object? headers = freezed,}) {
  return _then(_PresignOutput(
attachmentId: null == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: null == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String,storageKey: null == storageKey ? _self.storageKey : storageKey // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$ConfirmInput {

 String get gpsStatus; DateTime? get capturedAt; double? get gpsLat; double? get gpsLng; double? get gpsAccuracyM; int? get width; int? get height; String? get caption; String? get deviceId; String? get sha256;
/// Create a copy of ConfirmInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmInputCopyWith<ConfirmInput> get copyWith => _$ConfirmInputCopyWithImpl<ConfirmInput>(this as ConfirmInput, _$identity);

  /// Serializes this ConfirmInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ConfirmInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmInput&&(identical(other.gpsStatus, _this.gpsStatus) || other.gpsStatus == _this.gpsStatus)&&(identical(other.capturedAt, _this.capturedAt) || other.capturedAt == _this.capturedAt)&&(identical(other.gpsLat, _this.gpsLat) || other.gpsLat == _this.gpsLat)&&(identical(other.gpsLng, _this.gpsLng) || other.gpsLng == _this.gpsLng)&&(identical(other.gpsAccuracyM, _this.gpsAccuracyM) || other.gpsAccuracyM == _this.gpsAccuracyM)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.height, _this.height) || other.height == _this.height)&&(identical(other.caption, _this.caption) || other.caption == _this.caption)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&(identical(other.sha256, _this.sha256) || other.sha256 == _this.sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ConfirmInput;
  return Object.hash(runtimeType,_this.gpsStatus,_this.capturedAt,_this.gpsLat,_this.gpsLng,_this.gpsAccuracyM,_this.width,_this.height,_this.caption,_this.deviceId,_this.sha256);
}

@override
String toString() {
  final _this = this as ConfirmInput;
  return 'ConfirmInput(gpsStatus: ${_this.gpsStatus}, capturedAt: ${_this.capturedAt}, gpsLat: ${_this.gpsLat}, gpsLng: ${_this.gpsLng}, gpsAccuracyM: ${_this.gpsAccuracyM}, width: ${_this.width}, height: ${_this.height}, caption: ${_this.caption}, deviceId: ${_this.deviceId}, sha256: ${_this.sha256})';
}


}

/// @nodoc
abstract mixin class $ConfirmInputCopyWith<$Res>  {
  factory $ConfirmInputCopyWith(ConfirmInput value, $Res Function(ConfirmInput) _then) = _$ConfirmInputCopyWithImpl;
@useResult
$Res call({
 String gpsStatus, DateTime? capturedAt, double? gpsLat, double? gpsLng, double? gpsAccuracyM, int? width, int? height, String? caption, String? deviceId, String? sha256
});




}
/// @nodoc
class _$ConfirmInputCopyWithImpl<$Res>
    implements $ConfirmInputCopyWith<$Res> {
  _$ConfirmInputCopyWithImpl(this._self, this._then);

  final ConfirmInput _self;
  final $Res Function(ConfirmInput) _then;

/// Create a copy of ConfirmInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gpsStatus = null,Object? capturedAt = freezed,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? gpsAccuracyM = freezed,Object? width = freezed,Object? height = freezed,Object? caption = freezed,Object? deviceId = freezed,Object? sha256 = freezed,}) {
  return _then(ConfirmInput(
gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracyM: freezed == gpsAccuracyM ? _self.gpsAccuracyM : gpsAccuracyM // ignore: cast_nullable_to_non_nullable
as double?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,sha256: freezed == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmInput].
extension ConfirmInputPatterns on ConfirmInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmInput value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmInput value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gpsStatus,  DateTime? capturedAt,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  int? width,  int? height,  String? caption,  String? deviceId,  String? sha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmInput() when $default != null:
return $default(_that.gpsStatus,_that.capturedAt,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.width,_that.height,_that.caption,_that.deviceId,_that.sha256);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gpsStatus,  DateTime? capturedAt,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  int? width,  int? height,  String? caption,  String? deviceId,  String? sha256)  $default,) {final _that = this;
switch (_that) {
case _ConfirmInput():
return $default(_that.gpsStatus,_that.capturedAt,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.width,_that.height,_that.caption,_that.deviceId,_that.sha256);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gpsStatus,  DateTime? capturedAt,  double? gpsLat,  double? gpsLng,  double? gpsAccuracyM,  int? width,  int? height,  String? caption,  String? deviceId,  String? sha256)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmInput() when $default != null:
return $default(_that.gpsStatus,_that.capturedAt,_that.gpsLat,_that.gpsLng,_that.gpsAccuracyM,_that.width,_that.height,_that.caption,_that.deviceId,_that.sha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmInput implements ConfirmInput {
  const _ConfirmInput({required this.gpsStatus, this.capturedAt, this.gpsLat, this.gpsLng, this.gpsAccuracyM, this.width, this.height, this.caption, this.deviceId, this.sha256});
  factory _ConfirmInput.fromJson(Map<String, dynamic> json) => _$ConfirmInputFromJson(json);

@override final  String gpsStatus;
@override final  DateTime? capturedAt;
@override final  double? gpsLat;
@override final  double? gpsLng;
@override final  double? gpsAccuracyM;
@override final  int? width;
@override final  int? height;
@override final  String? caption;
@override final  String? deviceId;
@override final  String? sha256;

/// Create a copy of ConfirmInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmInputCopyWith<_ConfirmInput> get copyWith => __$ConfirmInputCopyWithImpl<_ConfirmInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmInput&&(identical(other.gpsStatus, gpsStatus) || other.gpsStatus == gpsStatus)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&(identical(other.gpsLat, gpsLat) || other.gpsLat == gpsLat)&&(identical(other.gpsLng, gpsLng) || other.gpsLng == gpsLng)&&(identical(other.gpsAccuracyM, gpsAccuracyM) || other.gpsAccuracyM == gpsAccuracyM)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.sha256, sha256) || other.sha256 == sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,gpsStatus,capturedAt,gpsLat,gpsLng,gpsAccuracyM,width,height,caption,deviceId,sha256);
}

@override
String toString() {
    return 'ConfirmInput(gpsStatus: $gpsStatus, capturedAt: $capturedAt, gpsLat: $gpsLat, gpsLng: $gpsLng, gpsAccuracyM: $gpsAccuracyM, width: $width, height: $height, caption: $caption, deviceId: $deviceId, sha256: $sha256)';
}


}

/// @nodoc
abstract mixin class _$ConfirmInputCopyWith<$Res> implements $ConfirmInputCopyWith<$Res> {
  factory _$ConfirmInputCopyWith(_ConfirmInput value, $Res Function(_ConfirmInput) _then) = __$ConfirmInputCopyWithImpl;
@override @useResult
$Res call({
 String gpsStatus, DateTime? capturedAt, double? gpsLat, double? gpsLng, double? gpsAccuracyM, int? width, int? height, String? caption, String? deviceId, String? sha256
});




}
/// @nodoc
class __$ConfirmInputCopyWithImpl<$Res>
    implements _$ConfirmInputCopyWith<$Res> {
  __$ConfirmInputCopyWithImpl(this._self, this._then);

  final _ConfirmInput _self;
  final $Res Function(_ConfirmInput) _then;

/// Create a copy of ConfirmInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gpsStatus = null,Object? capturedAt = freezed,Object? gpsLat = freezed,Object? gpsLng = freezed,Object? gpsAccuracyM = freezed,Object? width = freezed,Object? height = freezed,Object? caption = freezed,Object? deviceId = freezed,Object? sha256 = freezed,}) {
  return _then(_ConfirmInput(
gpsStatus: null == gpsStatus ? _self.gpsStatus : gpsStatus // ignore: cast_nullable_to_non_nullable
as String,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,gpsLat: freezed == gpsLat ? _self.gpsLat : gpsLat // ignore: cast_nullable_to_non_nullable
as double?,gpsLng: freezed == gpsLng ? _self.gpsLng : gpsLng // ignore: cast_nullable_to_non_nullable
as double?,gpsAccuracyM: freezed == gpsAccuracyM ? _self.gpsAccuracyM : gpsAccuracyM // ignore: cast_nullable_to_non_nullable
as double?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,sha256: freezed == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
