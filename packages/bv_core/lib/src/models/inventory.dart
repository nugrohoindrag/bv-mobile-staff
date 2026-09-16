import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

/// Item master inventory / spare part (`GET /inventory/items`; PRD P1 v1.3 §25, NC §38).
@freezed
abstract class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    required String id,
    required String itemCode,
    required String name,
    String? description,
    @Default('spare_part') String category,
    String? equipmentCategoryCode,
    @Default('pcs') String unit,
    @Default(0) double minStock,
    @Default(0) int unitCost,
    String? barcode,
    @Default(true) bool isActive,
    @Default(0) double totalQuantity,
    @Default(false) bool lowStock,
    @Default(<StockLevel>[]) List<StockLevel> levels,
    @Default(1) int version,
  }) = _InventoryItem;
  factory InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);
}

@freezed
abstract class StockLevel with _$StockLevel {
  const factory StockLevel({
    required String stockLocationId,
    @Default('') String stockLocationName,
    @Default('') String propertyId,
    @Default(0) double quantity,
  }) = _StockLevel;
  factory StockLevel.fromJson(Map<String, dynamic> json) => _$StockLevelFromJson(json);
}

/// Parts Usage against Work Order (`GET/POST /work-orders/{id}/parts`): Asset → Work Order → Parts Usage → Inventory.
@freezed
abstract class PartUsage with _$PartUsage {
  const factory PartUsage({
    required String id,
    required String workOrderId,
    required String itemId,
    @Default('') String itemCode,
    @Default('') String itemName,
    @Default('pcs') String unit,
    @Default('') String stockLocationId,
    @Default('') String stockLocationName,
    @Default(0) double quantity,
    @Default(0) int unitCost,
    @Default(0) int totalCost,
    String? note,
    String? recordedByName,
    required DateTime recordedAt,
  }) = _PartUsage;
  factory PartUsage.fromJson(Map<String, dynamic> json) => _$PartUsageFromJson(json);
}

@freezed
abstract class PartUsageInput with _$PartUsageInput {
  const factory PartUsageInput({
    required String itemId,
    String? stockLocationId,
    required double quantity,
    String? note,
    String? clientPartId,
  }) = _PartUsageInput;
  factory PartUsageInput.fromJson(Map<String, dynamic> json) => _$PartUsageInputFromJson(json);
}

/// Konteks profile property (`GET /properties/{id}/capabilities`; PRD P1 v1.3 §3, Onboarding Brief §21):
/// capability aktif + terminologi (presentation layer; entity kanonik tidak berubah).
@freezed
abstract class PropertyContext with _$PropertyContext {
  const PropertyContext._();
  const factory PropertyContext({
    required String propertyId,
    @Default('') String propertyName,
    @Default('office') String profile,
    @Default('active') String status,
    @Default(<String>[]) List<String> capabilities,
    @Default(<String, Term>{}) Map<String, Term> terminology,
  }) = _PropertyContext;
  factory PropertyContext.fromJson(Map<String, dynamic> json) => _$PropertyContextFromJson(json);

  bool has(String capability) => capabilities.contains(capability);

  /// Label terminologi profile (id/en) dengan fallback default Office.
  String term(String key, {bool en = false}) {
    final t = terminology[key];
    if (t != null) return en ? t.en : t.id;
    return _defaults[key] ?? key;
  }

  String get profileLabel => switch (profile) { 'hotel' => 'Hotel', 'apartment' => 'Apartment', _ => 'Office' };

  static const _defaults = {
    'customer': 'Tenant',
    'customer_plural': 'Tenant',
    'occupant': 'Penghuni',
    'relation_module': 'Tenant Relation',
    'request': 'Tenant Service Request',
    'inventory_unit': 'Unit',
    'inventory_units': 'Unit',
    'cleaning_task': 'Cleaning',
  };
}

@freezed
abstract class Term with _$Term {
  const factory Term({@Default('') String id, @Default('') String en}) = _Term;
  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
}
