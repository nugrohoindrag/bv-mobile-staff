import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';
import '../../shared/photo_capture.dart';
import '../../shared/pickers.dart';
import '../tasks/work_providers.dart';

/// Tambah Temuan (Finding, PRD §11) dari Task/WO/Patrol — antrean sync `add_finding` (+ foto), offline OK.
class AddFindingPage extends ConsumerStatefulWidget {
  const AddFindingPage({super.key, required this.objectType, required this.objectId, this.locationId, this.assetId});
  final String objectType;
  final String objectId;
  final String? locationId;
  final String? assetId;
  @override
  ConsumerState<AddFindingPage> createState() => _AddFindingPageState();
}

class _AddFindingPageState extends ConsumerState<AddFindingPage> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _desc = TextEditingController();
  String _type = 'defect';
  String _severity = 'medium';
  String? _category;
  LocationLite? _location;
  AssetLite? _asset;
  CapturedPhoto? _photo;
  bool _busy = false;

  static const _types = ['defect', 'safety', 'cleanliness', 'security', 'compliance', 'other'];

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final repo = ref.read(localRepoProvider);
      if (widget.locationId != null && widget.locationId!.isNotEmpty) {
        final l = (await repo.locations()).where((l) => l.id == widget.locationId).firstOrNull;
        if (l != null && mounted) setState(() => _location = l);
      }
      if (widget.assetId != null && widget.assetId!.isNotEmpty) {
        final a = (await repo.assets()).where((a) => a.id == widget.assetId).firstOrNull;
        if (a != null && mounted) setState(() => _asset = a);
      }
    });
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
      await ref.read(localRepoProvider).addFinding(
            widget.objectType,
            widget.objectId,
            CreateFindingInput(
              findingType: _type,
              title: _title.text.trim(),
              severity: _severity,
              category: _category,
              description: _desc.text.trim().isEmpty ? null : _desc.text.trim(),
              locationId: _location?.id ?? (widget.locationId?.isEmpty ?? true ? null : widget.locationId),
              assetId: _asset?.id ?? (widget.assetId?.isEmpty ?? true ? null : widget.assetId),
              sourceType: widget.objectType,
              sourceId: widget.objectId,
            ),
            photo: _photo,
          );
      ref.read(syncControllerProvider.notifier).afterMutation();
      if (!mounted) return;
      showInfo(context, 'Temuan dicatat — dikirim saat sinkronisasi');
      context.pop();
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
    return Scaffold(
      appBar: AppBar(title: Text(s.addFinding)),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(controller: _title, decoration: const InputDecoration(labelText: 'Judul temuan *'), validator: (v) => (v == null || v.trim().length < 3) ? 'Minimal 3 karakter' : null),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: PickerField(label: 'Jenis', value: humanize(_type), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Jenis temuan', options: _types, label: humanize, selected: _type);
                  if (v != null) setState(() => _type = v);
                }),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PickerField(label: 'Severity', value: severityLabel(_severity), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Severity', options: master.severities, label: severityLabel, selected: _severity, leading: (x) => SeverityBadge(x));
                  if (v != null) setState(() => _severity = v);
                }),
              ),
            ]),
            if (master.findingCategories.isNotEmpty) ...[
              const SizedBox(height: 12),
              PickerField(label: 'Kategori', icon: Icons.category_outlined, value: _category == null ? null : humanize(_category!), onTap: () async {
                final v = await showPickerSheet<String>(context, title: 'Kategori', options: master.findingCategories, label: humanize, selected: _category);
                if (v != null) setState(() => _category = v);
              }, onClear: () => setState(() => _category = null)),
            ],
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
            TextFormField(controller: _desc, maxLines: 4, decoration: const InputDecoration(labelText: 'Deskripsi', alignLabelWithHint: true)),
            const SizedBox(height: 16),
            Text('Foto', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            PhotoThumbnailRow(
              photos: [if (_photo != null) PhotoThumb(bytes: _photo!.bytes, pending: true)],
              onAdd: () async {
                final p = await const PhotoCapture().pick(context);
                if (p != null) setState(() => _photo = p);
              },
              onRemove: (_) => setState(() => _photo = null),
              size: 84,
            ),
            const SizedBox(height: 24),
            BvPrimaryButton(label: s.addFinding, icon: Icons.flag, loading: _busy, onPressed: _submit),
          ],
        ),
      ),
    );
  }
}
