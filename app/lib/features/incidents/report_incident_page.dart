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
import '../home/work_item_list.dart';
import '../tasks/work_providers.dart';

/// Laporkan Insiden (PRD §14, §20.2). Dari task (patrol) → antrean sync `report_incident` (offline OK);
/// tanpa task → `POST /incidents` (online).
class ReportIncidentPage extends ConsumerStatefulWidget {
  const ReportIncidentPage({super.key, this.taskId, this.locationId});
  final String? taskId;
  final String? locationId;
  @override
  ConsumerState<ReportIncidentPage> createState() => _ReportIncidentPageState();
}

class _ReportIncidentPageState extends ConsumerState<ReportIncidentPage> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _desc = TextEditingController();
  String _category = '';
  String _severity = 'medium';
  String _priority = 'high';
  LocationLite? _location;
  DateTime _occurredAt = DateTime.now();
  bool _busy = false;
  final _idem = const Uuid().v4();

  static const _types = ['security', 'safety', 'fire', 'medical', 'property_damage', 'other'];

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      if (widget.locationId != null && widget.locationId!.isNotEmpty) {
        final l = (await ref.read(localRepoProvider).locations()).where((l) => l.id == widget.locationId).firstOrNull;
        if (l != null && mounted) setState(() => _location = l);
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
    if (_category.isEmpty) {
      showError(context, const AppError(AppErrorKind.validation, 'Pilih kategori insiden.'));
      return;
    }
    setState(() => _busy = true);
    final input = CreateIncidentInput(
      incidentType: _category,
      category: _category,
      title: _title.text.trim(),
      severity: _severity,
      priority: _priority,
      description: _desc.text.trim().isEmpty ? null : _desc.text.trim(),
      locationId: _location?.id,
      occurredAt: _occurredAt,
      sourceType: widget.taskId == null ? null : 'task',
      sourceId: widget.taskId,
    );
    try {
      final taskId = widget.taskId;
      if (taskId != null && taskId.isNotEmpty) {
        await ref.read(localRepoProvider).reportIncident(taskId, input);
        ref.read(syncControllerProvider.notifier).afterMutation();
        if (!mounted) return;
        showInfo(context, 'Insiden dicatat — akan dikirim saat sinkronisasi');
        context.pop();
      } else {
        final inc = await ref.read(incidentsApiProvider).create(input, idempotencyKey: _idem);
        if (!mounted) return;
        showInfo(context, 'Insiden ${inc.incidentNumber} dilaporkan');
        context.pop();
      }
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
    final categories = master.incidentCategories.isEmpty ? _types : master.incidentCategories;
    final online = ref.watch(syncControllerProvider);
    final offlineBlocked = widget.taskId == null && !online;
    return Scaffold(
      appBar: AppBar(title: Text(s.reportIncident)),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (offlineBlocked)
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: BvTokens.warning50, borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
                child: const Text('Sedang offline. Laporkan dari patrol yang berjalan agar tersimpan di antrean, atau kirim saat online.', style: TextStyle(color: BvTokens.warning700)),
              ),
            TextFormField(controller: _title, decoration: const InputDecoration(labelText: 'Judul insiden *'), validator: (v) => (v == null || v.trim().length < 3) ? 'Minimal 3 karakter' : null),
            const SizedBox(height: 12),
            PickerField(label: 'Kategori', icon: Icons.category_outlined, required: true, value: _category.isEmpty ? null : humanize(_category), onTap: () async {
              final v = await showPickerSheet<String>(context, title: 'Kategori insiden', options: categories, label: humanize, selected: _category);
              if (v != null) setState(() => _category = v);
            }),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: PickerField(label: 'Severity', value: severityLabel(_severity), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Severity', options: master.severities, label: severityLabel, selected: _severity, leading: (x) => SeverityBadge(x));
                  if (v != null) setState(() => _severity = v);
                }),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PickerField(label: 'Prioritas', value: priorityLabel(_priority), onTap: () async {
                  final v = await showPickerSheet<String>(context, title: 'Prioritas', options: master.priorities, label: priorityLabel, selected: _priority, leading: (x) => PriorityBadge(x));
                  if (v != null) setState(() => _priority = v);
                }),
              ),
            ]),
            const SizedBox(height: 12),
            PickerField(label: 'Lokasi', icon: Icons.place_outlined, value: _location == null ? null : (_location!.pathText.isEmpty ? _location!.name : _location!.pathText), onTap: () async {
              final l = await pickLocation(context, ref);
              if (l != null) setState(() => _location = l);
            }, onClear: () => setState(() => _location = null)),
            const SizedBox(height: 12),
            PickerField(label: 'Waktu kejadian', icon: Icons.schedule, value: BvFormat.dateTime(_occurredAt), onTap: () async {
              final t = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(_occurredAt));
              if (t != null) setState(() => _occurredAt = DateTime(_occurredAt.year, _occurredAt.month, _occurredAt.day, t.hour, t.minute));
            }),
            const SizedBox(height: 12),
            TextFormField(controller: _desc, maxLines: 4, decoration: const InputDecoration(labelText: 'Kronologi / deskripsi', alignLabelWithHint: true)),
            const SizedBox(height: 8),
            const Text('Foto insiden dapat ditambahkan dari detail setelah tersimpan.', style: TextStyle(fontSize: 12, color: BvTokens.neutral500)),
            const SizedBox(height: 24),
            BvPrimaryButton(label: s.reportIncident, icon: Icons.report, danger: true, loading: _busy, onPressed: offlineBlocked ? null : _submit),
          ],
        ),
      ),
    );
  }
}

/// Tab "Report" (security officer / housekeeping): pintasan lapor insiden & temuan + pekerjaan berjalan.
class ReportHubPage extends ConsumerWidget {
  const ReportHubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final session = ref.watch(currentSessionProvider);
    final items = ref.watch(localWorkItemsProvider(session.shell.workKinds)).value ?? const <WorkItem>[];
    final running = items.where((i) => i.isInProgress).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Report')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (session.can(Perm.incidentsCreate))
            _ActionCard(
              icon: Icons.report_gmailerrorred_outlined,
              color: BvTokens.critical600,
              title: s.reportIncident,
              subtitle: running.isNotEmpty ? 'Terkait ${running.first.number} (berjalan)' : 'Insiden keamanan / keselamatan',
              onTap: () => context.push('/new/incident${running.isNotEmpty ? '?task_id=${running.first.id}&location_id=${running.first.location.id ?? ''}' : ''}'),
            ),
          const SizedBox(height: 12),
          if (session.can(Perm.findingsCreate))
            _ActionCard(
              icon: Icons.flag_outlined,
              color: BvTokens.warning600,
              title: s.addFinding,
              subtitle: running.isNotEmpty ? 'Terkait ${running.first.number} (berjalan)' : 'Pilih pekerjaan berjalan untuk melampirkan temuan',
              onTap: running.isNotEmpty
                  ? () => context.push('/new/finding?object_type=${running.first.objectType}&object_id=${running.first.id}&location_id=${running.first.location.id ?? ''}')
                  : () => showInfo(context, 'Mulai pekerjaan dulu, lalu tambahkan temuan dari detailnya.'),
            ),
          const SizedBox(height: 12),
          if (session.can(Perm.workOrdersCreate))
            _ActionCard(icon: Icons.build_outlined, color: BvTokens.info600, title: s.createWorkOrder, subtitle: 'Perlu koneksi', onTap: () => context.push('/new/work-order')),
          if (running.isNotEmpty) ...[
            const SectionHeader(title: 'Sedang berjalan', padding: EdgeInsets.fromLTRB(4, 20, 4, 12)),
            for (final w in running) ...[WorkItemTile(item: w), const SizedBox(height: 12)],
          ],
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({required this.icon, required this.color, required this.title, required this.subtitle, required this.onTap});
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => SectionCard(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: CircleAvatar(backgroundColor: color, foregroundColor: Colors.white, child: Icon(icon)),
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.chevron_right),
          onTap: onTap,
        ),
      );
}
