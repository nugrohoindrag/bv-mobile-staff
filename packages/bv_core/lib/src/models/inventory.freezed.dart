// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {

 String get id; String get itemCode; String get name; String? get description; String get category; String? get equipmentCategoryCode; String get unit; double get minStock; int get unitCost; String? get barcode; bool get isActive; double get totalQuantity; bool get lowStock; List<StockLevel> get levels; int get version;
/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCopyWith<InventoryItem> get copyWith => _$InventoryItemCopyWithImpl<InventoryItem>(this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InventoryItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.itemCode, _this.itemCode) || other.itemCode == _this.itemCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.equipmentCategoryCode, _this.equipmentCategoryCode) || other.equipmentCategoryCode == _this.equipmentCategoryCode)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.minStock, _this.minStock) || other.minStock == _this.minStock)&&(identical(other.unitCost, _this.unitCost) || other.unitCost == _this.unitCost)&&(identical(other.barcode, _this.barcode) || other.barcode == _this.barcode)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.totalQuantity, _this.totalQuantity) || other.totalQuantity == _this.totalQuantity)&&(identical(other.lowStock, _this.lowStock) || other.lowStock == _this.lowStock)&&const DeepCollectionEquality().equals(other.levels, _this.levels)&&(identical(other.version, _this.version) || other.version == _this.version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InventoryItem;
  return Object.hash(runtimeType,_this.id,_this.itemCode,_this.name,_this.description,_this.category,_this.equipmentCategoryCode,_this.unit,_this.minStock,_this.unitCost,_this.barcode,_this.isActive,_this.totalQuantity,_this.lowStock,const DeepCollectionEquality().hash(_this.levels),_this.version);
}

@override
String toString() {
  final _this = this as InventoryItem;
  return 'InventoryItem(id: ${_this.id}, itemCode: ${_this.itemCode}, name: ${_this.name}, description: ${_this.description}, category: ${_this.category}, equipmentCategoryCode: ${_this.equipmentCategoryCode}, unit: ${_this.unit}, minStock: ${_this.minStock}, unitCost: ${_this.unitCost}, barcode: ${_this.barcode}, isActive: ${_this.isActive}, totalQuantity: ${_this.totalQuantity}, lowStock: ${_this.lowStock}, levels: ${_this.levels}, version: ${_this.version})';
}


}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res>  {
  factory $InventoryItemCopyWith(InventoryItem value, $Res Function(InventoryItem) _then) = _$InventoryItemCopyWithImpl;
@useResult
$Res call({
 String id, String itemCode, String name, String? description, String category, String? equipmentCategoryCode, String unit, double minStock, int unitCost, String? barcode, bool isActive, double totalQuantity, bool lowStock, List<StockLevel> levels, int version
});




}
/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemCode = null,Object? name = null,Object? description = freezed,Object? category = null,Object? equipmentCategoryCode = freezed,Object? unit = null,Object? minStock = null,Object? unitCost = null,Object? barcode = freezed,Object? isActive = null,Object? totalQuantity = null,Object? lowStock = null,Object? levels = null,Object? version = null,}) {
  return _then(InventoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,equipmentCategoryCode: freezed == equipmentCategoryCode ? _self.equipmentCategoryCode : equipmentCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as double,lowStock: null == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as bool,levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<StockLevel>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItem value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String itemCode,  String name,  String? description,  String category,  String? equipmentCategoryCode,  String unit,  double minStock,  int unitCost,  String? barcode,  bool isActive,  double totalQuantity,  bool lowStock,  List<StockLevel> levels,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.itemCode,_that.name,_that.description,_that.category,_that.equipmentCategoryCode,_that.unit,_that.minStock,_that.unitCost,_that.barcode,_that.isActive,_that.totalQuantity,_that.lowStock,_that.levels,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String itemCode,  String name,  String? description,  String category,  String? equipmentCategoryCode,  String unit,  double minStock,  int unitCost,  String? barcode,  bool isActive,  double totalQuantity,  bool lowStock,  List<StockLevel> levels,  int version)  $default,) {final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that.id,_that.itemCode,_that.name,_that.description,_that.category,_that.equipmentCategoryCode,_that.unit,_that.minStock,_that.unitCost,_that.barcode,_that.isActive,_that.totalQuantity,_that.lowStock,_that.levels,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String itemCode,  String name,  String? description,  String category,  String? equipmentCategoryCode,  String unit,  double minStock,  int unitCost,  String? barcode,  bool isActive,  double totalQuantity,  bool lowStock,  List<StockLevel> levels,  int version)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.itemCode,_that.name,_that.description,_that.category,_that.equipmentCategoryCode,_that.unit,_that.minStock,_that.unitCost,_that.barcode,_that.isActive,_that.totalQuantity,_that.lowStock,_that.levels,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItem implements InventoryItem {
  const _InventoryItem({required this.id, required this.itemCode, required this.name, this.description, this.category = 'spare_part', this.equipmentCategoryCode, this.unit = 'pcs', this.minStock = 0, this.unitCost = 0, this.barcode, this.isActive = true, this.totalQuantity = 0, this.lowStock = false,  List<StockLevel> levels = const <StockLevel>[], this.version = 1}): _levels = levels;
  factory _InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);

@override final  String id;
@override final  String itemCode;
@override final  String name;
@override final  String? description;
@override@JsonKey() final  String category;
@override final  String? equipmentCategoryCode;
@override@JsonKey() final  String unit;
@override@JsonKey() final  double minStock;
@override@JsonKey() final  int unitCost;
@override final  String? barcode;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  double totalQuantity;
@override@JsonKey() final  bool lowStock;
 final  List<StockLevel> _levels;
@override@JsonKey() List<StockLevel> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}

@override@JsonKey() final  int version;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCopyWith<_InventoryItem> get copyWith => __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.equipmentCategoryCode, equipmentCategoryCode) || other.equipmentCategoryCode == equipmentCategoryCode)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.lowStock, lowStock) || other.lowStock == lowStock)&&const DeepCollectionEquality().equals(other.levels, _levels)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,itemCode,name,description,category,equipmentCategoryCode,unit,minStock,unitCost,barcode,isActive,totalQuantity,lowStock,const DeepCollectionEquality().hash(_levels),version);
}

@override
String toString() {
    return 'InventoryItem(id: $id, itemCode: $itemCode, name: $name, description: $description, category: $category, equipmentCategoryCode: $equipmentCategoryCode, unit: $unit, minStock: $minStock, unitCost: $unitCost, barcode: $barcode, isActive: $isActive, totalQuantity: $totalQuantity, lowStock: $lowStock, levels: $levels, version: $version)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res> implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(_InventoryItem value, $Res Function(_InventoryItem) _then) = __$InventoryItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String itemCode, String name, String? description, String category, String? equipmentCategoryCode, String unit, double minStock, int unitCost, String? barcode, bool isActive, double totalQuantity, bool lowStock, List<StockLevel> levels, int version
});




}
/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemCode = null,Object? name = null,Object? description = freezed,Object? category = null,Object? equipmentCategoryCode = freezed,Object? unit = null,Object? minStock = null,Object? unitCost = null,Object? barcode = freezed,Object? isActive = null,Object? totalQuantity = null,Object? lowStock = null,Object? levels = null,Object? version = null,}) {
  return _then(_InventoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,equipmentCategoryCode: freezed == equipmentCategoryCode ? _self.equipmentCategoryCode : equipmentCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as double,lowStock: null == lowStock ? _self.lowStock : lowStock // ignore: cast_nullable_to_non_nullable
as bool,levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<StockLevel>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StockLevel {

 String get stockLocationId; String get stockLocationName; String get propertyId; double get quantity;
/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLevelCopyWith<StockLevel> get copyWith => _$StockLevelCopyWithImpl<StockLevel>(this as StockLevel, _$identity);

  /// Serializes this StockLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockLevel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLevel&&(identical(other.stockLocationId, _this.stockLocationId) || other.stockLocationId == _this.stockLocationId)&&(identical(other.stockLocationName, _this.stockLocationName) || other.stockLocationName == _this.stockLocationName)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockLevel;
  return Object.hash(runtimeType,_this.stockLocationId,_this.stockLocationName,_this.propertyId,_this.quantity);
}

@override
String toString() {
  final _this = this as StockLevel;
  return 'StockLevel(stockLocationId: ${_this.stockLocationId}, stockLocationName: ${_this.stockLocationName}, propertyId: ${_this.propertyId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $StockLevelCopyWith<$Res>  {
  factory $StockLevelCopyWith(StockLevel value, $Res Function(StockLevel) _then) = _$StockLevelCopyWithImpl;
@useResult
$Res call({
 String stockLocationId, String stockLocationName, String propertyId, double quantity
});




}
/// @nodoc
class _$StockLevelCopyWithImpl<$Res>
    implements $StockLevelCopyWith<$Res> {
  _$StockLevelCopyWithImpl(this._self, this._then);

  final StockLevel _self;
  final $Res Function(StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stockLocationId = null,Object? stockLocationName = null,Object? propertyId = null,Object? quantity = null,}) {
  return _then(StockLevel(
stockLocationId: null == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String,stockLocationName: null == stockLocationName ? _self.stockLocationName : stockLocationName // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLevel].
extension StockLevelPatterns on StockLevel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLevel value)  $default,){
final _that = this;
switch (_that) {
case _StockLevel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLevel value)?  $default,){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stockLocationId,  String stockLocationName,  String propertyId,  double quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.stockLocationId,_that.stockLocationName,_that.propertyId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stockLocationId,  String stockLocationName,  String propertyId,  double quantity)  $default,) {final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that.stockLocationId,_that.stockLocationName,_that.propertyId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stockLocationId,  String stockLocationName,  String propertyId,  double quantity)?  $default,) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.stockLocationId,_that.stockLocationName,_that.propertyId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockLevel implements StockLevel {
  const _StockLevel({required this.stockLocationId, this.stockLocationName = '', this.propertyId = '', this.quantity = 0});
  factory _StockLevel.fromJson(Map<String, dynamic> json) => _$StockLevelFromJson(json);

@override final  String stockLocationId;
@override@JsonKey() final  String stockLocationName;
@override@JsonKey() final  String propertyId;
@override@JsonKey() final  double quantity;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLevelCopyWith<_StockLevel> get copyWith => __$StockLevelCopyWithImpl<_StockLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLevelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLevel&&(identical(other.stockLocationId, stockLocationId) || other.stockLocationId == stockLocationId)&&(identical(other.stockLocationName, stockLocationName) || other.stockLocationName == stockLocationName)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stockLocationId,stockLocationName,propertyId,quantity);
}

@override
String toString() {
    return 'StockLevel(stockLocationId: $stockLocationId, stockLocationName: $stockLocationName, propertyId: $propertyId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$StockLevelCopyWith<$Res> implements $StockLevelCopyWith<$Res> {
  factory _$StockLevelCopyWith(_StockLevel value, $Res Function(_StockLevel) _then) = __$StockLevelCopyWithImpl;
@override @useResult
$Res call({
 String stockLocationId, String stockLocationName, String propertyId, double quantity
});




}
/// @nodoc
class __$StockLevelCopyWithImpl<$Res>
    implements _$StockLevelCopyWith<$Res> {
  __$StockLevelCopyWithImpl(this._self, this._then);

  final _StockLevel _self;
  final $Res Function(_StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stockLocationId = null,Object? stockLocationName = null,Object? propertyId = null,Object? quantity = null,}) {
  return _then(_StockLevel(
stockLocationId: null == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String,stockLocationName: null == stockLocationName ? _self.stockLocationName : stockLocationName // ignore: cast_nullable_to_non_nullable
as String,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PartUsage {

 String get id; String get workOrderId; String get itemId; String get itemCode; String get itemName; String get unit; String get stockLocationId; String get stockLocationName; double get quantity; int get unitCost; int get totalCost; String? get note; String? get recordedByName; DateTime get recordedAt;
/// Create a copy of PartUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartUsageCopyWith<PartUsage> get copyWith => _$PartUsageCopyWithImpl<PartUsage>(this as PartUsage, _$identity);

  /// Serializes this PartUsage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PartUsage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartUsage&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.workOrderId, _this.workOrderId) || other.workOrderId == _this.workOrderId)&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.itemCode, _this.itemCode) || other.itemCode == _this.itemCode)&&(identical(other.itemName, _this.itemName) || other.itemName == _this.itemName)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.stockLocationId, _this.stockLocationId) || other.stockLocationId == _this.stockLocationId)&&(identical(other.stockLocationName, _this.stockLocationName) || other.stockLocationName == _this.stockLocationName)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.unitCost, _this.unitCost) || other.unitCost == _this.unitCost)&&(identical(other.totalCost, _this.totalCost) || other.totalCost == _this.totalCost)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.recordedByName, _this.recordedByName) || other.recordedByName == _this.recordedByName)&&(identical(other.recordedAt, _this.recordedAt) || other.recordedAt == _this.recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PartUsage;
  return Object.hash(runtimeType,_this.id,_this.workOrderId,_this.itemId,_this.itemCode,_this.itemName,_this.unit,_this.stockLocationId,_this.stockLocationName,_this.quantity,_this.unitCost,_this.totalCost,_this.note,_this.recordedByName,_this.recordedAt);
}

@override
String toString() {
  final _this = this as PartUsage;
  return 'PartUsage(id: ${_this.id}, workOrderId: ${_this.workOrderId}, itemId: ${_this.itemId}, itemCode: ${_this.itemCode}, itemName: ${_this.itemName}, unit: ${_this.unit}, stockLocationId: ${_this.stockLocationId}, stockLocationName: ${_this.stockLocationName}, quantity: ${_this.quantity}, unitCost: ${_this.unitCost}, totalCost: ${_this.totalCost}, note: ${_this.note}, recordedByName: ${_this.recordedByName}, recordedAt: ${_this.recordedAt})';
}


}

/// @nodoc
abstract mixin class $PartUsageCopyWith<$Res>  {
  factory $PartUsageCopyWith(PartUsage value, $Res Function(PartUsage) _then) = _$PartUsageCopyWithImpl;
@useResult
$Res call({
 String id, String workOrderId, String itemId, String itemCode, String itemName, String unit, String stockLocationId, String stockLocationName, double quantity, int unitCost, int totalCost, String? note, String? recordedByName, DateTime recordedAt
});




}
/// @nodoc
class _$PartUsageCopyWithImpl<$Res>
    implements $PartUsageCopyWith<$Res> {
  _$PartUsageCopyWithImpl(this._self, this._then);

  final PartUsage _self;
  final $Res Function(PartUsage) _then;

/// Create a copy of PartUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? workOrderId = null,Object? itemId = null,Object? itemCode = null,Object? itemName = null,Object? unit = null,Object? stockLocationId = null,Object? stockLocationName = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? note = freezed,Object? recordedByName = freezed,Object? recordedAt = null,}) {
  return _then(PartUsage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,workOrderId: null == workOrderId ? _self.workOrderId : workOrderId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,stockLocationId: null == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String,stockLocationName: null == stockLocationName ? _self.stockLocationName : stockLocationName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,recordedByName: freezed == recordedByName ? _self.recordedByName : recordedByName // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PartUsage].
extension PartUsagePatterns on PartUsage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartUsage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartUsage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartUsage value)  $default,){
final _that = this;
switch (_that) {
case _PartUsage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartUsage value)?  $default,){
final _that = this;
switch (_that) {
case _PartUsage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String workOrderId,  String itemId,  String itemCode,  String itemName,  String unit,  String stockLocationId,  String stockLocationName,  double quantity,  int unitCost,  int totalCost,  String? note,  String? recordedByName,  DateTime recordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartUsage() when $default != null:
return $default(_that.id,_that.workOrderId,_that.itemId,_that.itemCode,_that.itemName,_that.unit,_that.stockLocationId,_that.stockLocationName,_that.quantity,_that.unitCost,_that.totalCost,_that.note,_that.recordedByName,_that.recordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String workOrderId,  String itemId,  String itemCode,  String itemName,  String unit,  String stockLocationId,  String stockLocationName,  double quantity,  int unitCost,  int totalCost,  String? note,  String? recordedByName,  DateTime recordedAt)  $default,) {final _that = this;
switch (_that) {
case _PartUsage():
return $default(_that.id,_that.workOrderId,_that.itemId,_that.itemCode,_that.itemName,_that.unit,_that.stockLocationId,_that.stockLocationName,_that.quantity,_that.unitCost,_that.totalCost,_that.note,_that.recordedByName,_that.recordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String workOrderId,  String itemId,  String itemCode,  String itemName,  String unit,  String stockLocationId,  String stockLocationName,  double quantity,  int unitCost,  int totalCost,  String? note,  String? recordedByName,  DateTime recordedAt)?  $default,) {final _that = this;
switch (_that) {
case _PartUsage() when $default != null:
return $default(_that.id,_that.workOrderId,_that.itemId,_that.itemCode,_that.itemName,_that.unit,_that.stockLocationId,_that.stockLocationName,_that.quantity,_that.unitCost,_that.totalCost,_that.note,_that.recordedByName,_that.recordedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartUsage implements PartUsage {
  const _PartUsage({required this.id, required this.workOrderId, required this.itemId, this.itemCode = '', this.itemName = '', this.unit = 'pcs', this.stockLocationId = '', this.stockLocationName = '', this.quantity = 0, this.unitCost = 0, this.totalCost = 0, this.note, this.recordedByName, required this.recordedAt});
  factory _PartUsage.fromJson(Map<String, dynamic> json) => _$PartUsageFromJson(json);

@override final  String id;
@override final  String workOrderId;
@override final  String itemId;
@override@JsonKey() final  String itemCode;
@override@JsonKey() final  String itemName;
@override@JsonKey() final  String unit;
@override@JsonKey() final  String stockLocationId;
@override@JsonKey() final  String stockLocationName;
@override@JsonKey() final  double quantity;
@override@JsonKey() final  int unitCost;
@override@JsonKey() final  int totalCost;
@override final  String? note;
@override final  String? recordedByName;
@override final  DateTime recordedAt;

/// Create a copy of PartUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartUsageCopyWith<_PartUsage> get copyWith => __$PartUsageCopyWithImpl<_PartUsage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartUsageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartUsage&&(identical(other.id, id) || other.id == id)&&(identical(other.workOrderId, workOrderId) || other.workOrderId == workOrderId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.stockLocationId, stockLocationId) || other.stockLocationId == stockLocationId)&&(identical(other.stockLocationName, stockLocationName) || other.stockLocationName == stockLocationName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.note, note) || other.note == note)&&(identical(other.recordedByName, recordedByName) || other.recordedByName == recordedByName)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,workOrderId,itemId,itemCode,itemName,unit,stockLocationId,stockLocationName,quantity,unitCost,totalCost,note,recordedByName,recordedAt);
}

@override
String toString() {
    return 'PartUsage(id: $id, workOrderId: $workOrderId, itemId: $itemId, itemCode: $itemCode, itemName: $itemName, unit: $unit, stockLocationId: $stockLocationId, stockLocationName: $stockLocationName, quantity: $quantity, unitCost: $unitCost, totalCost: $totalCost, note: $note, recordedByName: $recordedByName, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class _$PartUsageCopyWith<$Res> implements $PartUsageCopyWith<$Res> {
  factory _$PartUsageCopyWith(_PartUsage value, $Res Function(_PartUsage) _then) = __$PartUsageCopyWithImpl;
@override @useResult
$Res call({
 String id, String workOrderId, String itemId, String itemCode, String itemName, String unit, String stockLocationId, String stockLocationName, double quantity, int unitCost, int totalCost, String? note, String? recordedByName, DateTime recordedAt
});




}
/// @nodoc
class __$PartUsageCopyWithImpl<$Res>
    implements _$PartUsageCopyWith<$Res> {
  __$PartUsageCopyWithImpl(this._self, this._then);

  final _PartUsage _self;
  final $Res Function(_PartUsage) _then;

/// Create a copy of PartUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? workOrderId = null,Object? itemId = null,Object? itemCode = null,Object? itemName = null,Object? unit = null,Object? stockLocationId = null,Object? stockLocationName = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? note = freezed,Object? recordedByName = freezed,Object? recordedAt = null,}) {
  return _then(_PartUsage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,workOrderId: null == workOrderId ? _self.workOrderId : workOrderId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemCode: null == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,stockLocationId: null == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String,stockLocationName: null == stockLocationName ? _self.stockLocationName : stockLocationName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as int,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,recordedByName: freezed == recordedByName ? _self.recordedByName : recordedByName // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PartUsageInput {

 String get itemId; String? get stockLocationId; double get quantity; String? get note; String? get clientPartId;
/// Create a copy of PartUsageInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartUsageInputCopyWith<PartUsageInput> get copyWith => _$PartUsageInputCopyWithImpl<PartUsageInput>(this as PartUsageInput, _$identity);

  /// Serializes this PartUsageInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PartUsageInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartUsageInput&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.stockLocationId, _this.stockLocationId) || other.stockLocationId == _this.stockLocationId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.clientPartId, _this.clientPartId) || other.clientPartId == _this.clientPartId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PartUsageInput;
  return Object.hash(runtimeType,_this.itemId,_this.stockLocationId,_this.quantity,_this.note,_this.clientPartId);
}

@override
String toString() {
  final _this = this as PartUsageInput;
  return 'PartUsageInput(itemId: ${_this.itemId}, stockLocationId: ${_this.stockLocationId}, quantity: ${_this.quantity}, note: ${_this.note}, clientPartId: ${_this.clientPartId})';
}


}

/// @nodoc
abstract mixin class $PartUsageInputCopyWith<$Res>  {
  factory $PartUsageInputCopyWith(PartUsageInput value, $Res Function(PartUsageInput) _then) = _$PartUsageInputCopyWithImpl;
@useResult
$Res call({
 String itemId, String? stockLocationId, double quantity, String? note, String? clientPartId
});




}
/// @nodoc
class _$PartUsageInputCopyWithImpl<$Res>
    implements $PartUsageInputCopyWith<$Res> {
  _$PartUsageInputCopyWithImpl(this._self, this._then);

  final PartUsageInput _self;
  final $Res Function(PartUsageInput) _then;

/// Create a copy of PartUsageInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? stockLocationId = freezed,Object? quantity = null,Object? note = freezed,Object? clientPartId = freezed,}) {
  return _then(PartUsageInput(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,stockLocationId: freezed == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,clientPartId: freezed == clientPartId ? _self.clientPartId : clientPartId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PartUsageInput].
extension PartUsageInputPatterns on PartUsageInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartUsageInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartUsageInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartUsageInput value)  $default,){
final _that = this;
switch (_that) {
case _PartUsageInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartUsageInput value)?  $default,){
final _that = this;
switch (_that) {
case _PartUsageInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  String? stockLocationId,  double quantity,  String? note,  String? clientPartId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartUsageInput() when $default != null:
return $default(_that.itemId,_that.stockLocationId,_that.quantity,_that.note,_that.clientPartId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  String? stockLocationId,  double quantity,  String? note,  String? clientPartId)  $default,) {final _that = this;
switch (_that) {
case _PartUsageInput():
return $default(_that.itemId,_that.stockLocationId,_that.quantity,_that.note,_that.clientPartId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  String? stockLocationId,  double quantity,  String? note,  String? clientPartId)?  $default,) {final _that = this;
switch (_that) {
case _PartUsageInput() when $default != null:
return $default(_that.itemId,_that.stockLocationId,_that.quantity,_that.note,_that.clientPartId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartUsageInput implements PartUsageInput {
  const _PartUsageInput({required this.itemId, this.stockLocationId, required this.quantity, this.note, this.clientPartId});
  factory _PartUsageInput.fromJson(Map<String, dynamic> json) => _$PartUsageInputFromJson(json);

@override final  String itemId;
@override final  String? stockLocationId;
@override final  double quantity;
@override final  String? note;
@override final  String? clientPartId;

/// Create a copy of PartUsageInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartUsageInputCopyWith<_PartUsageInput> get copyWith => __$PartUsageInputCopyWithImpl<_PartUsageInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartUsageInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartUsageInput&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.stockLocationId, stockLocationId) || other.stockLocationId == stockLocationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.clientPartId, clientPartId) || other.clientPartId == clientPartId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,itemId,stockLocationId,quantity,note,clientPartId);
}

@override
String toString() {
    return 'PartUsageInput(itemId: $itemId, stockLocationId: $stockLocationId, quantity: $quantity, note: $note, clientPartId: $clientPartId)';
}


}

/// @nodoc
abstract mixin class _$PartUsageInputCopyWith<$Res> implements $PartUsageInputCopyWith<$Res> {
  factory _$PartUsageInputCopyWith(_PartUsageInput value, $Res Function(_PartUsageInput) _then) = __$PartUsageInputCopyWithImpl;
@override @useResult
$Res call({
 String itemId, String? stockLocationId, double quantity, String? note, String? clientPartId
});




}
/// @nodoc
class __$PartUsageInputCopyWithImpl<$Res>
    implements _$PartUsageInputCopyWith<$Res> {
  __$PartUsageInputCopyWithImpl(this._self, this._then);

  final _PartUsageInput _self;
  final $Res Function(_PartUsageInput) _then;

/// Create a copy of PartUsageInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? stockLocationId = freezed,Object? quantity = null,Object? note = freezed,Object? clientPartId = freezed,}) {
  return _then(_PartUsageInput(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,stockLocationId: freezed == stockLocationId ? _self.stockLocationId : stockLocationId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,clientPartId: freezed == clientPartId ? _self.clientPartId : clientPartId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PropertyContext {

 String get propertyId; String get propertyName; String get profile; String get status; List<String> get capabilities; Map<String, Term> get terminology;
/// Create a copy of PropertyContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyContextCopyWith<PropertyContext> get copyWith => _$PropertyContextCopyWithImpl<PropertyContext>(this as PropertyContext, _$identity);

  /// Serializes this PropertyContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PropertyContext;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyContext&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.propertyName, _this.propertyName) || other.propertyName == _this.propertyName)&&(identical(other.profile, _this.profile) || other.profile == _this.profile)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.capabilities, _this.capabilities)&&const DeepCollectionEquality().equals(other.terminology, _this.terminology));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PropertyContext;
  return Object.hash(runtimeType,_this.propertyId,_this.propertyName,_this.profile,_this.status,const DeepCollectionEquality().hash(_this.capabilities),const DeepCollectionEquality().hash(_this.terminology));
}

@override
String toString() {
  final _this = this as PropertyContext;
  return 'PropertyContext(propertyId: ${_this.propertyId}, propertyName: ${_this.propertyName}, profile: ${_this.profile}, status: ${_this.status}, capabilities: ${_this.capabilities}, terminology: ${_this.terminology})';
}


}

/// @nodoc
abstract mixin class $PropertyContextCopyWith<$Res>  {
  factory $PropertyContextCopyWith(PropertyContext value, $Res Function(PropertyContext) _then) = _$PropertyContextCopyWithImpl;
@useResult
$Res call({
 String propertyId, String propertyName, String profile, String status, List<String> capabilities, Map<String, Term> terminology
});




}
/// @nodoc
class _$PropertyContextCopyWithImpl<$Res>
    implements $PropertyContextCopyWith<$Res> {
  _$PropertyContextCopyWithImpl(this._self, this._then);

  final PropertyContext _self;
  final $Res Function(PropertyContext) _then;

/// Create a copy of PropertyContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? propertyId = null,Object? propertyName = null,Object? profile = null,Object? status = null,Object? capabilities = null,Object? terminology = null,}) {
  return _then(PropertyContext(
propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,capabilities: null == capabilities ? _self.capabilities : capabilities // ignore: cast_nullable_to_non_nullable
as List<String>,terminology: null == terminology ? _self.terminology : terminology // ignore: cast_nullable_to_non_nullable
as Map<String, Term>,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyContext].
extension PropertyContextPatterns on PropertyContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyContext value)  $default,){
final _that = this;
switch (_that) {
case _PropertyContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyContext value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String propertyId,  String propertyName,  String profile,  String status,  List<String> capabilities,  Map<String, Term> terminology)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyContext() when $default != null:
return $default(_that.propertyId,_that.propertyName,_that.profile,_that.status,_that.capabilities,_that.terminology);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String propertyId,  String propertyName,  String profile,  String status,  List<String> capabilities,  Map<String, Term> terminology)  $default,) {final _that = this;
switch (_that) {
case _PropertyContext():
return $default(_that.propertyId,_that.propertyName,_that.profile,_that.status,_that.capabilities,_that.terminology);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String propertyId,  String propertyName,  String profile,  String status,  List<String> capabilities,  Map<String, Term> terminology)?  $default,) {final _that = this;
switch (_that) {
case _PropertyContext() when $default != null:
return $default(_that.propertyId,_that.propertyName,_that.profile,_that.status,_that.capabilities,_that.terminology);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyContext extends PropertyContext {
  const _PropertyContext({required this.propertyId, this.propertyName = '', this.profile = 'office', this.status = 'active',  List<String> capabilities = const <String>[],  Map<String, Term> terminology = const <String, Term>{}}): _capabilities = capabilities,_terminology = terminology,super._();
  factory _PropertyContext.fromJson(Map<String, dynamic> json) => _$PropertyContextFromJson(json);

@override final  String propertyId;
@override@JsonKey() final  String propertyName;
@override@JsonKey() final  String profile;
@override@JsonKey() final  String status;
 final  List<String> _capabilities;
@override@JsonKey() List<String> get capabilities {
  if (_capabilities is EqualUnmodifiableListView) return _capabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capabilities);
}

 final  Map<String, Term> _terminology;
@override@JsonKey() Map<String, Term> get terminology {
  if (_terminology is EqualUnmodifiableMapView) return _terminology;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_terminology);
}


/// Create a copy of PropertyContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyContextCopyWith<_PropertyContext> get copyWith => __$PropertyContextCopyWithImpl<_PropertyContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyContextToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyContext&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.capabilities, _capabilities)&&const DeepCollectionEquality().equals(other.terminology, _terminology));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,propertyId,propertyName,profile,status,const DeepCollectionEquality().hash(_capabilities),const DeepCollectionEquality().hash(_terminology));
}

@override
String toString() {
    return 'PropertyContext(propertyId: $propertyId, propertyName: $propertyName, profile: $profile, status: $status, capabilities: $capabilities, terminology: $terminology)';
}


}

/// @nodoc
abstract mixin class _$PropertyContextCopyWith<$Res> implements $PropertyContextCopyWith<$Res> {
  factory _$PropertyContextCopyWith(_PropertyContext value, $Res Function(_PropertyContext) _then) = __$PropertyContextCopyWithImpl;
@override @useResult
$Res call({
 String propertyId, String propertyName, String profile, String status, List<String> capabilities, Map<String, Term> terminology
});




}
/// @nodoc
class __$PropertyContextCopyWithImpl<$Res>
    implements _$PropertyContextCopyWith<$Res> {
  __$PropertyContextCopyWithImpl(this._self, this._then);

  final _PropertyContext _self;
  final $Res Function(_PropertyContext) _then;

/// Create a copy of PropertyContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? propertyId = null,Object? propertyName = null,Object? profile = null,Object? status = null,Object? capabilities = null,Object? terminology = null,}) {
  return _then(_PropertyContext(
propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,capabilities: null == capabilities ? _self._capabilities : capabilities // ignore: cast_nullable_to_non_nullable
as List<String>,terminology: null == terminology ? _self._terminology : terminology // ignore: cast_nullable_to_non_nullable
as Map<String, Term>,
  ));
}


}


/// @nodoc
mixin _$Term {

 String get id; String get en;
/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermCopyWith<Term> get copyWith => _$TermCopyWithImpl<Term>(this as Term, _$identity);

  /// Serializes this Term to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Term;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Term&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.en, _this.en) || other.en == _this.en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Term;
  return Object.hash(runtimeType,_this.id,_this.en);
}

@override
String toString() {
  final _this = this as Term;
  return 'Term(id: ${_this.id}, en: ${_this.en})';
}


}

/// @nodoc
abstract mixin class $TermCopyWith<$Res>  {
  factory $TermCopyWith(Term value, $Res Function(Term) _then) = _$TermCopyWithImpl;
@useResult
$Res call({
 String id, String en
});




}
/// @nodoc
class _$TermCopyWithImpl<$Res>
    implements $TermCopyWith<$Res> {
  _$TermCopyWithImpl(this._self, this._then);

  final Term _self;
  final $Res Function(Term) _then;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? en = null,}) {
  return _then(Term(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Term].
extension TermPatterns on Term {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Term value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Term() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Term value)  $default,){
final _that = this;
switch (_that) {
case _Term():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Term value)?  $default,){
final _that = this;
switch (_that) {
case _Term() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String en)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Term() when $default != null:
return $default(_that.id,_that.en);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String en)  $default,) {final _that = this;
switch (_that) {
case _Term():
return $default(_that.id,_that.en);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String en)?  $default,) {final _that = this;
switch (_that) {
case _Term() when $default != null:
return $default(_that.id,_that.en);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Term implements Term {
  const _Term({this.id = '', this.en = ''});
  factory _Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String en;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermCopyWith<_Term> get copyWith => __$TermCopyWithImpl<_Term>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TermToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Term&&(identical(other.id, id) || other.id == id)&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,en);
}

@override
String toString() {
    return 'Term(id: $id, en: $en)';
}


}

/// @nodoc
abstract mixin class _$TermCopyWith<$Res> implements $TermCopyWith<$Res> {
  factory _$TermCopyWith(_Term value, $Res Function(_Term) _then) = __$TermCopyWithImpl;
@override @useResult
$Res call({
 String id, String en
});




}
/// @nodoc
class __$TermCopyWithImpl<$Res>
    implements _$TermCopyWith<$Res> {
  __$TermCopyWithImpl(this._self, this._then);

  final _Term _self;
  final $Res Function(_Term) _then;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? en = null,}) {
  return _then(_Term(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
