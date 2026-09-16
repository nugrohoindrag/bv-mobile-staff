import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';
import '../../shared/pickers.dart';
import '../tasks/work_providers.dart';

/// Buat Work Order (PRD §20.1 Create Work Order) — online (`POST /work-orders`, Idempotency-Key).
class CreateWorkOrderPage extends ConsumerStatefulWidget {
  const CreateWorkOrderPage({super.key, this.assetId, this.locationId, this.sourceType, this.sourceId});
  final String? assetId;
  final String? locationId;
  final String? sourceType;
  final String? sourceId;
  @override
  ConsumerState<CreateWorkOrderPage> createState() => _CreateWorkOrderPageState();
}

class _CreateWorkOrderPageState extends ConsumerState<CreateWorkOrderPage> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _desc = TextEditingController();
  String _type = 'corrective';
  String _priority = 'medium';
  bool _requiresEvidence = true;
  LocationLite? _location;
  AssetLite? _asset;
  DateTime? _due;
  bool _busy = false;
  final _idem = const Uuid().v4();

  @override
  void initState() {
    super.initState();
    Future.microtask(_prefill);
  }

  Future<void> _prefill() async {
    final repo = ref.read(localRepoProvider);
    if (widget.assetId != null && widget.assetId!.isNotEmpty) {
      final a = (await repo.assets()).where((a) => a.id == widget.assetId).firstOrNull;
      if (a != null && mounted) setState(() => _asset = a);
    }
    if (widget.locationId != null && widget.locationId!.isNotEmpty) {
      final l = (await repo.locations()).where((l) => l.id == widget.locationId).firstOrNull;
      if (l != null && mounted) setState(() => _location = l);
    }
  }

  @override
  void dispose() {
    _title.dispose();
    _desc.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;
    setState(() => _busy = true);
    try {
      final wo = await ref.read(workApiProvider).createWorkOrder(
            CreateWorkOrderInput(
              title: _title.text.trim(),
              workOrderType: _type,
              priority: _priority,
              description: _desc.text.trim().isEmpty ? null : _desc.text.trim(),
              locationId: _location?.id ?? (widget.locationId?.isEmpty ?? true ? null : widget.locationId),
              assetId: _asset?.id ?? (widget.assetId?.isEmpty ?? true ? null : widget.assetId),
              requiresEvidence: _requiresEvidence,
              dueAt: _due,
              sourceType: widget.sourceType?.isEmpty ?? true ? null : widget.sourceType,
              sourceId: widget.sourceId?.isEmpty ?? true ? null : widget.sourceId,
            ),
            idempotencyKey: _idem,
          );
      await ref.read(localRepoProvider).saveWorkItem(wo);
      ref.read(syncControllerProvider.notifier).afterMutation();
      if (!mounted) return;
      showInfo(context, 'Work Order ${wo.number} dibuat');
      context.pushReplacement('/work-orders/${wo.id}');
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final master = ref.watch(masterDataProvider).value ?? const MasterData();
    final online = ref.watch(syncControllerProvider);
    final isSup = ref.watch(currentSessionProvider).isSupervisor;
    return Scaffold(
      appBar: AppBar(title: Text(s.createWorkOrder)),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (!online)
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: BvTokens.warning50, borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
                child: const Text('Membuat Work Order memerlukan koneksi. Isi formulir, kirim saat online.', style: TextStyle(color: BvTokens.warning700)),
              ),
            TextFormField(controller: _title, decoration: const InputDecoration(labelText: 'Judul *'), validator: (v) => (v == null || v.trim().length < 3) ? 'Minimal 3 karakter' : null),
            const SizedBox(height: 12),
            PickerField(
              label: 'Jenis',
              icon: Icons.category_outlined,
              value: humanize(_type),
              onTap: () async {
                final v = await showPickerSheet<String>(context, title: 'Jenis Work Order', options: const ['corrective', 'preventive', 'inspection', 'service', 'project'], label: humanize, selected: _type);
                if (v != null) setState(() => _type = v);
              },
            ),
            const SizedBox(height: 12),
            PickerField(
              label: 'Prioritas',
              icon: Icons.flag_outlined,
              value: priorityLabel(_priority),
              onTap: () async {
                final v = await showPickerSheet<String>(context, title: 'Prioritas', options: master.priorities, label: priorityLabel, selected: _priority, leading: (p) => PriorityBadge(p));
                if (v != null) setState(() => _priority = v);
              },
            ),
            const SizedBox(height: 12),
            PickerField(label: 'Lokasi', icon: Icons.place_outlined, value: _location == null ? null : (_location!.pathText.isEmpty ? _location!.name : _location!.pathText), onTap: () async {
              final l = await pickLocation(context, ref);
              if (l != null) setState(() => _location = l);
            }, onClear: () => setState(() => _location = null)),
            const SizedBox(height: 12),
            PickerField(label: 'Aset', icon: Icons.precision_manufacturing_outlined, value: _asset == null ? null : '${_asset!.assetCode} · ${_asset!.name}', onTap: () async {
              final a = await pickAsset(context, ref);
              if (a != null) setState(() => _asset = a);
            }, onClear: () => setState(() => _asset = null)),
            const SizedBox(height: 12),
            PickerField(
              label: 'Jatuh tempo',
              icon: Icons.event_outlined,
              value: _due == null ? null : BvFormat.dateTime(_due),
              onTap: () async {
                final d = await showDatePicker(context: context, firstDate: DateTime.now().subtract(const Duration(days: 1)), lastDate: DateTime.now().add(const Duration(days: 365)), initialDate: _due ?? DateTime.now());
                if (d == null || !context.mounted) return;
                final t = await showTimePicker(context: context, initialTime: const TimeOfDay(hour: 17, minute: 0));
                setState(() => _due = DateTime(d.year, d.month, d.day, t?.hour ?? 17, t?.minute ?? 0));
              },
              onClear: () => setState(() => _due = null),
            ),
            const SizedBox(height: 12),
            TextFormField(controller: _desc, maxLines: 4, decoration: const InputDecoration(labelText: 'Deskripsi masalah', alignLabelWithHint: true)),
            if (isSup)
              SwitchListTile(contentPadding: EdgeInsets.zero, value: _requiresEvidence, onChanged: (v) => setState(() => _requiresEvidence = v), title: const Text('Wajib foto evidence')),
            const SizedBox(height: 24),
            BvPrimaryButton(label: s.createWorkOrder, icon: Icons.add_task, loading: _busy, onPressed: online ? _submit : null),
          ],
        ),
      ),
    );
  }
}
