import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../app/providers.dart';
import '../../app/sync_controller.dart';
import '../../shared/dialogs.dart';
import '../../shared/pickers.dart';
import '../tasks/work_providers.dart';

/// Buat Task (supervisor, PRD §20.4) — online (`POST /tasks`).
class CreateTaskPage extends ConsumerStatefulWidget {
  const CreateTaskPage({super.key});
  @override
  ConsumerState<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends ConsumerState<CreateTaskPage> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _desc = TextEditingController();
  String _type = 'general';
  String _priority = 'medium';
  bool _requiresPhoto = false;
  LocationLite? _location;
  AssetLite? _asset;
  Team? _team;
  TeamMember? _member;
  DateTime? _due;
  bool _busy = false;
  final _idem = const Uuid().v4();

  @override
  void dispose() {
    _title.dispose();
    _desc.dispose();
    super.dispose();
  }

  Future<void> _pickAssignee() async {
    try {
      final teams = await ref.read(catalogApiProvider).teams();
      if (!mounted) return;
      final team = await showPickerSheet<Team>(context, title: 'Pilih tim', options: teams, label: (t) => t.name, selected: _team);
      if (team == null || !mounted) return;
      final full = team.members.isEmpty ? await ref.read(catalogApiProvider).team(team.id) : team;
      if (!mounted) return;
      final member = await showPickerSheet<TeamMember?>(context, title: 'Pilih anggota (opsional)', options: [null, ...full.members], label: (m) => m == null ? 'Hanya ke tim ${team.name}' : m.fullName);
      setState(() {
        _team = team;
        _member = member;
      });
    } catch (e) {
      if (mounted) showError(context, e);
    }
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;
    setState(() => _busy = true);
    try {
      final t = await ref.read(workApiProvider).createTask(
            CreateTaskInput(
              title: _title.text.trim(),
              taskType: _type,
              priority: _priority,
              description: _desc.text.trim().isEmpty ? null : _desc.text.trim(),
              locationId: _location?.id,
              assetId: _asset?.id,
              assigneeTeamId: _team?.id,
              assigneeUserId: _member?.userId,
              requiresPhoto: _requiresPhoto,
              dueAt: _due,
            ),
            idempotencyKey: _idem,
          );
      await ref.read(localRepoProvider).saveWorkItem(t);
      ref.read(syncControllerProvider.notifier).afterMutation();
      if (!mounted) return;
      showInfo(context, 'Task ${t.number} dibuat');
      context.pushReplacement('/tasks/${t.id}');
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final master = ref.watch(masterDataProvider).value ?? const MasterData();
    final online = ref.watch(syncControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Buat Task')),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(controller: _title, decoration: const InputDecoration(labelText: 'Judul *'), validator: (v) => (v == null || v.trim().length < 3) ? 'Minimal 3 karakter' : null),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: PickerField(label: 'Jenis', value: humanize(_type), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Jenis task', options: const ['general', 'cleaning', 'inspection', 'patrol', 'delivery'], label: humanize, selected: _type);
                  if (v != null) setState(() => _type = v);
                }),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PickerField(label: 'Prioritas', value: priorityLabel(_priority), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Prioritas', options: master.priorities, label: priorityLabel, selected: _priority, leading: (p) => PriorityBadge(p));
                  if (v != null) setState(() => _priority = v);
                }),
              ),
            ]),
            const SizedBox(height: 12),
            PickerField(label: 'Tugaskan ke', icon: Icons.person_add_alt_outlined, value: _team == null ? null : [_member?.fullName, _team!.name].whereType<String>().join(' · '), onTap: _pickAssignee, onClear: () => setState(() {
              _team = null;
              _member = null;
            })),
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
            TextFormField(controller: _desc, maxLines: 4, decoration: const InputDecoration(labelText: 'Instruksi', alignLabelWithHint: true)),
            SwitchListTile(contentPadding: EdgeInsets.zero, value: _requiresPhoto, onChanged: (v) => setState(() => _requiresPhoto = v), title: const Text('Wajib foto evidence')),
            const SizedBox(height: 24),
            BvPrimaryButton(label: 'Buat Task', icon: Icons.add_task, loading: _busy, onPressed: online ? _submit : null),
          ],
        ),
      ),
    );
  }
}
