// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    _InventoryItem(
      id: json['id'] as String,
      itemCode: json['item_code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] as String? ?? 'spare_part',
      equipmentCategoryCode: json['equipment_category_code'] as String?,
      unit: json['unit'] as String? ?? 'pcs',
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      unitCost: (json['unit_cost'] as num?)?.toInt() ?? 0,
      barcode: json['barcode'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      totalQuantity: (json['total_quantity'] as num?)?.toDouble() ?? 0,
      lowStock: json['low_stock'] as bool? ?? false,
      levels:
          (json['levels'] as List<dynamic>?)
              ?.map((e) => StockLevel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <StockLevel>[],
      version: (json['version'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$InventoryItemToJson(_InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_code': instance.itemCode,
      'name': instance.name,
      'description': ?instance.description,
      'category': instance.category,
      'equipment_category_code': ?instance.equipmentCategoryCode,
      'unit': instance.unit,
      'min_stock': instance.minStock,
      'unit_cost': instance.unitCost,
      'barcode': ?instance.barcode,
      'is_active': instance.isActive,
      'total_quantity': instance.totalQuantity,
      'low_stock': instance.lowStock,
      'levels': instance.levels.map((e) => e.toJson()).toList(),
      'version': instance.version,
    };

_StockLevel _$StockLevelFromJson(Map<String, dynamic> json) => _StockLevel(
  stockLocationId: json['stock_location_id'] as String,
  stockLocationName: json['stock_location_name'] as String? ?? '',
  propertyId: json['property_id'] as String? ?? '',
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$StockLevelToJson(_StockLevel instance) =>
    <String, dynamic>{
      'stock_location_id': instance.stockLocationId,
      'stock_location_name': instance.stockLocationName,
      'property_id': instance.propertyId,
      'quantity': instance.quantity,
    };

_PartUsage _$PartUsageFromJson(Map<String, dynamic> json) => _PartUsage(
  id: json['id'] as String,
  workOrderId: json['work_order_id'] as String,
  itemId: json['item_id'] as String,
  itemCode: json['item_code'] as String? ?? '',
  itemName: json['item_name'] as String? ?? '',
  unit: json['unit'] as String? ?? 'pcs',
  stockLocationId: json['stock_location_id'] as String? ?? '',
  stockLocationName: json['stock_location_name'] as String? ?? '',
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
  unitCost: (json['unit_cost'] as num?)?.toInt() ?? 0,
  totalCost: (json['total_cost'] as num?)?.toInt() ?? 0,
  note: json['note'] as String?,
  recordedByName: json['recorded_by_name'] as String?,
  recordedAt: DateTime.parse(json['recorded_at'] as String),
);

Map<String, dynamic> _$PartUsageToJson(_PartUsage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'work_order_id': instance.workOrderId,
      'item_id': instance.itemId,
      'item_code': instance.itemCode,
      'item_name': instance.itemName,
      'unit': instance.unit,
      'stock_location_id': instance.stockLocationId,
      'stock_location_name': instance.stockLocationName,
      'quantity': instance.quantity,
      'unit_cost': instance.unitCost,
      'total_cost': instance.totalCost,
      'note': ?instance.note,
      'recorded_by_name': ?instance.recordedByName,
      'recorded_at': instance.recordedAt.toIso8601String(),
    };

_PartUsageInput _$PartUsageInputFromJson(Map<String, dynamic> json) =>
    _PartUsageInput(
      itemId: json['item_id'] as String,
      stockLocationId: json['stock_location_id'] as String?,
      quantity: (json['quantity'] as num).toDouble(),
      note: json['note'] as String?,
      clientPartId: json['client_part_id'] as String?,
    );

Map<String, dynamic> _$PartUsageInputToJson(_PartUsageInput instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'stock_location_id': ?instance.stockLocationId,
      'quantity': instance.quantity,
      'note': ?instance.note,
      'client_part_id': ?instance.clientPartId,
    };

_PropertyContext _$PropertyContextFromJson(Map<String, dynamic> json) =>
    _PropertyContext(
      propertyId: json['property_id'] as String,
      propertyName: json['property_name'] as String? ?? '',
      profile: json['profile'] as String? ?? 'office',
      status: json['status'] as String? ?? 'active',
      capabilities:
          (json['capabilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      terminology:
          (json['terminology'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Term.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Term>{},
    );

Map<String, dynamic> _$PropertyContextToJson(
  _PropertyContext instance,
) => <String, dynamic>{
  'property_id': instance.propertyId,
  'property_name': instance.propertyName,
  'profile': instance.profile,
  'status': instance.status,
  'capabilities': instance.capabilities,
  'terminology': instance.terminology.map((k, e) => MapEntry(k, e.toJson())),
};

_Term _$TermFromJson(Map<String, dynamic> json) =>
    _Term(id: json['id'] as String? ?? '', en: json['en'] as String? ?? '');

Map<String, dynamic> _$TermToJson(_Term instance) => <String, dynamic>{
  'id': instance.id,
  'en': instance.en,
};
