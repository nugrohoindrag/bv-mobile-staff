import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../shared/dialogs.dart';
import '../tasks/work_providers.dart';

/// Parts Usage (PRD P1 v1.3 §25 "Asset → Work Order → Parts Usage → Inventory"): daftar spare part yang dipakai pada WO
/// + catat pemakaian baru (cari item, jumlah, catatan). Stok berkurang atomik di server; 409 INSUFFICIENT_STOCK bila kurang.
final workOrderPartsProvider = FutureProvider.family<List<PartUsage>, String>((ref, workOrderId) => ref.watch(inventoryApiProvider).workOrderParts(workOrderId));

class PartsUsagePage extends ConsumerStatefulWidget {
  const PartsUsagePage({super.key, required this.workOrderId});
  final String workOrderId;
  @override
  ConsumerState<PartsUsagePage> createState() => _PartsUsagePageState();
}

class _PartsUsagePageState extends ConsumerState<PartsUsagePage> {
  Future<void> _add(WorkItem? wo) async {
    final input = await showModalBottomSheet<PartUsageInput>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => _AddPartSheet(propertyId: wo?.propertyId),
    );
    if (input == null || !mounted) return;
    try {
      await ref.read(inventoryApiProvider).addPart(widget.workOrderId, input, idempotencyKey: input.clientPartId);
      ref.invalidate(workOrderPartsProvider(widget.workOrderId));
      ref.invalidate(workItemDetailProvider((objectType: 'work_order', id: widget.workOrderId)));
      if (mounted) showInfo(context, 'Pemakaian part dicatat; stok diperbarui.');
    } catch (e) {
      if (mounted) showError(context, e);
    }
  }

  Future<void> _remove(PartUsage p) async {
    final ok = await showConfirmDialog(context, title: 'Hapus pemakaian ${p.itemName}?', message: 'Stok akan dikembalikan ke ${p.stockLocationName}.', confirm: 'Hapus', danger: true);
    if (!ok || !mounted) return;
    try {
      await ref.read(inventoryApiProvider).removePart(widget.workOrderId, p.id);
      ref.invalidate(workOrderPartsProvider(widget.workOrderId));
      ref.invalidate(workItemDetailProvider((objectType: 'work_order', id: widget.workOrderId)));
    } catch (e) {
      if (mounted) showError(context, e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(currentSessionProvider);
    final parts = ref.watch(workOrderPartsProvider(widget.workOrderId));
    final wo = ref.watch(workItemDetailProvider((objectType: 'work_order', id: widget.workOrderId))).value;
    final canAdd = session.can(Perm.partsUsageCreate) && (wo?.isOpen ?? true);
    return Scaffold(
      backgroundColor: BvTokens.surfaceBackground,
      appBar: AppBar(title: const Text('Parts Usage')),
      body: parts.when(
        loading: () => const LoadingState(),
        error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(workOrderPartsProvider(widget.workOrderId))),
        data: (rows) {
          final total = rows.fold<int>(0, (a, p) => a + p.totalCost);
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 12),
            children: [
              if (wo != null)
                SectionCard(
                  child: Row(children: [
                    const Icon(Icons.build_outlined, color: BvTokens.brand500),
                    const SizedBox(width: 10),
                    Expanded(child: Text('${wo.number} · ${wo.title}', maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600))),
                  ]),
                ),
              const SectionHeader(title: 'Spare part terpakai', dotColor: BvTokens.brand500),
              if (rows.isEmpty)
                const SectionCard(child: Text('Belum ada pemakaian part. Catat setiap spare part yang dipakai agar stok dan biaya WO akurat.', style: TextStyle(color: BvTokens.neutral500)))
              else
                SectionCard(
                  padding: EdgeInsets.zero,
                  child: Column(children: [
                    for (final p in rows)
                      ListTile(
                        leading: const Icon(Icons.inventory_2_outlined, color: BvTokens.brand500),
                        title: Text(p.itemName, style: const TextStyle(fontWeight: FontWeight.w600)),
                        subtitle: Text('${p.itemCode} · ${_fmtQty(p.quantity)} ${p.unit} × ${BvFormat.money(p.unitCost)} · ${p.stockLocationName}${p.note == null ? '' : '\n${p.note}'}\n${p.recordedByName ?? '—'} · ${BvFormat.dateTime(p.recordedAt)}'),
                        isThreeLine: true,
                        trailing: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [
                          Text(BvFormat.money(p.totalCost), style: const TextStyle(fontWeight: FontWeight.w700)),
                          if (canAdd)
                            InkWell(onTap: () => _remove(p), child: const Padding(padding: EdgeInsets.only(top: 4), child: Icon(Icons.delete_outline, size: 20, color: BvTokens.neutral500))),
                        ]),
                      ),
                    const Divider(height: 1),
                    ListTile(title: const Text('Total biaya part', style: TextStyle(fontWeight: FontWeight.w700)), trailing: Text(BvFormat.money(total), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16))),
                  ]),
                ),
              const SizedBox(height: 80),
            ],
          );
        },
      ),
      bottomNavigationBar: canAdd ? BottomActionBar(children: [BvPrimaryButton(label: 'Catat Pemakaian Part', icon: Icons.add, onPressed: () => _add(wo))]) : null,
    );
  }
}

String _fmtQty(double q) => q == q.roundToDouble() ? q.toInt().toString() : q.toString();

class _AddPartSheet extends ConsumerStatefulWidget {
  const _AddPartSheet({this.propertyId});
  final String? propertyId;
  @override
  ConsumerState<_AddPartSheet> createState() => _AddPartSheetState();
}

class _AddPartSheetState extends ConsumerState<_AddPartSheet> {
  final _q = TextEditingController();
  final _qty = TextEditingController(text: '1');
  final _note = TextEditingController();
  InventoryItem? _item;
  String? _locationId;
  List<InventoryItem> _results = const [];
  bool _searching = false;

  @override
  void initState() {
    super.initState();
    _search('');
  }

  Future<void> _search(String q) async {
    setState(() => _searching = true);
    try {
      final page = await ref.read(inventoryApiProvider).items(q: q, propertyId: widget.propertyId, limit: 30);
      if (mounted) setState(() => _results = page.data);
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _searching = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final qty = double.tryParse(_qty.text.replaceAll(',', '.')) ?? 0;
    final item = _item;
    final levels = item?.levels ?? const <StockLevel>[];
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Catat pemakaian spare part', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            if (item == null) ...[
              TextField(
                controller: _q,
                decoration: InputDecoration(hintText: 'Cari item / kode / barcode', prefixIcon: const Icon(Icons.search), suffixIcon: _searching ? const Padding(padding: EdgeInsets.all(12), child: SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))) : null),
                onChanged: _search,
                autofocus: true,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 280,
                child: _results.isEmpty
                    ? Center(child: Text(_searching ? 'Mencari…' : 'Tidak ada item.', style: const TextStyle(color: BvTokens.neutral500)))
                    : ListView.builder(
                        itemCount: _results.length,
                        itemBuilder: (_, i) {
                          final it = _results[i];
                          return ListTile(
                            dense: true,
                            leading: Icon(Icons.inventory_2_outlined, color: it.lowStock ? BvTokens.warning600 : BvTokens.brand500),
                            title: Text(it.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                            subtitle: Text('${it.itemCode} · stok ${_fmtQty(it.totalQuantity)} ${it.unit} · ${BvFormat.money(it.unitCost)}/${it.unit}'),
                            onTap: () => setState(() {
                              _item = it;
                              _locationId = it.levels.isNotEmpty ? it.levels.first.stockLocationId : null;
                            }),
                          );
                        },
                      ),
              ),
            ] else ...[
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.inventory_2_outlined, color: BvTokens.brand500),
                title: Text(item.name, style: const TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text('${item.itemCode} · stok ${_fmtQty(item.totalQuantity)} ${item.unit} · ${BvFormat.money(item.unitCost)}/${item.unit}'),
                trailing: TextButton(onPressed: () => setState(() => _item = null), child: const Text('Ganti')),
              ),
              if (levels.length > 1)
                DropdownButtonFormField<String>(
                  initialValue: _locationId,
                  decoration: const InputDecoration(labelText: 'Gudang / lokasi stok'),
                  items: [for (final l in levels) DropdownMenuItem(value: l.stockLocationId, child: Text('${l.stockLocationName} · ${_fmtQty(l.quantity)} ${item.unit}'))],
                  onChanged: (v) => setState(() => _locationId = v),
                ),
              const SizedBox(height: 8),
              TextField(
                controller: _qty,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: 'Jumlah (${item.unit})'),
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: 8),
              TextField(controller: _note, decoration: const InputDecoration(labelText: 'Catatan (opsional)'), maxLines: 2),
              const SizedBox(height: 8),
              if (qty > 0) Text('Estimasi biaya ${BvFormat.money((qty * item.unitCost).round())}', style: const TextStyle(color: BvTokens.neutral600)),
              const SizedBox(height: 12),
              BvPrimaryButton(
                label: 'Simpan Pemakaian',
                onPressed: qty <= 0
                    ? null
                    : () => Navigator.of(context).pop(PartUsageInput(itemId: item.id, stockLocationId: _locationId, quantity: qty, note: _note.text.trim().isEmpty ? null : _note.text.trim(), clientPartId: const Uuid().v4())),
              ),
            ],
          ]),
        ),
      ),
    );
  }
}
