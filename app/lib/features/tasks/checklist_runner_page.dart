import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';
import '../../shared/photo_capture.dart';
import 'work_actions.dart';
import 'work_providers.dart';

/// ChecklistRunner (PRD §25.2, mockup FORM CHECKLIST): satu kartu per item — Kondisi Baik/Buruk,
/// angka, teks, foto, catatan; Simpan per item → antrean sync; Not OK → opsi buat Temuan.
class ChecklistRunnerPage extends ConsumerStatefulWidget {
  const ChecklistRunnerPage({super.key, required this.objectType, required this.objectId});
  final String objectType;
  final String objectId;

  @override
  ConsumerState<ChecklistRunnerPage> createState() => _ChecklistRunnerPageState();
}

class _Draft {
  String? value;
  String? number;
  String? text;
  String? note;
  CapturedPhoto? photo;
  bool createFinding = false;
  String findingSeverity = 'medium';
  bool dirty = false;
  bool saving = false;
}

class _ChecklistRunnerPageState extends ConsumerState<ChecklistRunnerPage> {
  final _drafts = <String, _Draft>{};
  bool _completing = false;

  Future<void> _run(Future<bool> Function() f, {bool popOnSuccess = false}) async {
    setState(() => _completing = true);
    try {
      final ok = await f();
      if (ok && popOnSuccess && mounted) Navigator.of(context).pop();
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _completing = false);
    }
  }

  /// Server hanya menerima jawaban saat status In Progress (assignee) — supervisor `manage` boleh kapan saja
  /// selama masih terbuka. Tanpa gate ini jawaban offline ditolak server (WORKFLOW_GUARD_FAILED "Start dulu").
  bool _editable(WorkItem? item, Session session) {
    if (item == null) return false;
    if (item.isInProgress) return true;
    return session.isSupervisor && item.isOpen;
  }

  _Draft _draft(ChecklistRunItem it) => _drafts.putIfAbsent(it.id, () {
    final d = _Draft();
    d.value = it.resultValue;
    d.number = it.resultNumber?.toString();
    d.text = it.resultText;
    d.note = it.note;
    return d;
  });

  Future<void> _save(ChecklistRun run, ChecklistRunItem it) async {
    final d = _draft(it);
    setState(() => d.saving = true);
    try {
      final num = d.number == null || d.number!.isEmpty ? null : double.tryParse(d.number!.replaceAll(',', '.'));
      final notOk = d.value == 'not_ok' || d.value == 'no' || (num != null && ((it.numericMin != null && num < it.numericMin!) || (it.numericMax != null && num > it.numericMax!)));
      await ref
          .read(localRepoProvider)
          .answerChecklist(
            run,
            it,
            AnswerInput(
              resultValue: d.value,
              resultNumber: num,
              resultText: d.text?.trim().isEmpty ?? true ? null : d.text!.trim(),
              note: d.note?.trim().isEmpty ?? true ? null : d.note!.trim(),
              createFinding: notOk && d.createFinding ? true : null,
              findingSeverity: notOk && d.createFinding ? d.findingSeverity : null,
            ),
            photo: d.photo,
          );
      ref.read(syncControllerProvider.notifier).afterMutation();
      setState(() {
        d.dirty = false;
        d.photo = null;
        d.saving = false;
      });
    } catch (e) {
      setState(() => d.saving = false);
      if (mounted) showError(context, e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final key = (objectType: widget.objectType, id: widget.objectId);
    final s = S.of(context);
    final runAsync = ref.watch(checklistRunProvider(key));
    final local = ref.watch(localRunProvider(widget.objectId)).value;
    final run = local ?? runAsync.value;
    final item = ref.watch(localWorkItemProvider(widget.objectId)).value ?? ref.watch(workItemDetailProvider(key)).value;
    final pendingFiles = ref.watch(pendingFilesProvider(widget.objectId)).value ?? const [];
    final session = ref.watch(currentSessionProvider);
    final editable = _editable(item, session);
    final actions = WorkActions(ref, context);

    // CTA bawah mengikuti status: Mulai → (isi checklist) → Selesaikan; ditunda → Lanjutkan.
    Widget? cta;
    if (item != null && run != null && item.isOpen) {
      if (item.can(WorkAction.start)) {
        cta = BvPrimaryButton(label: 'Mulai Pekerjaan', icon: Icons.play_arrow, loading: _completing, onPressed: () => _run(() => actions.start(item)));
      } else if (item.can(WorkAction.resume)) {
        cta = BvPrimaryButton(label: 'Lanjutkan Pekerjaan', icon: Icons.play_arrow, loading: _completing, onPressed: () => _run(() => actions.resume(item)));
      } else if (item.can(WorkAction.complete) || item.isInProgress) {
        cta = BvPrimaryButton(
          label: s.completeWork,
          icon: Icons.check_circle_outline,
          loading: _completing,
          onPressed: () {
            final dirty = _drafts.values.where((d) => d.dirty).length;
            if (dirty > 0) {
              showError(context, AppError(AppErrorKind.validation, 'Simpan dulu $dirty item yang belum disimpan.'));
              return;
            }
            _run(() => actions.complete(item), popOnSuccess: true);
          },
        );
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Form Check List')),
      backgroundColor: const Color(0xFFF1F5F8),
      body: run == null
          ? runAsync.when(
              loading: () => const LoadingState(),
              error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(checklistRunProvider(key))),
              data: (_) => const EmptyState(title: 'Checklist tidak tersedia', message: 'Pekerjaan ini belum memiliki checklist atau perlu koneksi untuk memuatnya.', icon: Icons.checklist),
            )
          : _buildList(run, item, pendingFiles, editable),
      bottomNavigationBar: cta == null ? null : BottomActionBar(children: [cta]),
    );
  }

  Widget _buildList(ChecklistRun run, WorkItem? item, List<PendingFileRow> pendingFiles, bool editable) {
    final sections = <String?, List<ChecklistRunItem>>{};
    for (final it in run.items) {
      sections.putIfAbsent(it.section, () => []).add(it);
    }
    final gateMsg = item == null
        ? null
        : !item.isOpen
        ? 'Pekerjaan sudah ${statusLabel(item.objectType, item.status).toLowerCase()} — checklist hanya dapat dilihat.'
        : editable
        ? null
        : item.status == 'on_hold'
        ? 'Pekerjaan sedang ditunda. Lanjutkan pekerjaan untuk mengisi checklist.'
        : 'Mulai pekerjaan terlebih dahulu untuk mengisi checklist.';
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        if (gateMsg != null)
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: BvTokens.warning50,
              borderRadius: BorderRadius.circular(BvTokens.radiusLg),
              border: Border.all(color: BvTokens.warning100),
            ),
            child: Row(
              children: [
                const Icon(Icons.info_outline, color: BvTokens.warning700, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(gateMsg, style: const TextStyle(color: BvTokens.warning700, fontSize: 13, height: 1.35)),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              Expanded(child: Text(run.templateName.isEmpty ? (item?.title ?? 'Checklist') : run.templateName, style: Theme.of(context).textTheme.titleMedium)),
              Text(
                '${run.answeredCount}/${run.totalItems}',
                style: const TextStyle(color: BvTokens.neutral500, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        for (final entry in sections.entries) ...[
          if (entry.key != null && entry.key!.isNotEmpty) SectionHeader(title: entry.key!, padding: const EdgeInsets.fromLTRB(4, 8, 4, 8), dotColor: BvTokens.brand500),
          for (final it in entry.value) ...[
            _ItemCard(
              item: it,
              draft: _draft(it),
              editable: editable,
              pendingPhotos: pendingFiles.where((p) => p.checklistItemId == it.id).toList(),
              onChanged: () => setState(() => _draft(it).dirty = true),
              onSave: () => _save(run, it),
              onAddPhoto: () async {
                final photo = await const PhotoCapture().pick(context);
                if (photo == null) return;
                setState(() {
                  _draft(it).photo = photo;
                  _draft(it).dirty = true;
                });
              },
            ),
            const SizedBox(height: 12),
          ],
        ],
      ],
    );
  }
}

class _ItemCard extends StatefulWidget {
  const _ItemCard({required this.item, required this.draft, required this.editable, required this.pendingPhotos, required this.onChanged, required this.onSave, required this.onAddPhoto});

  final ChecklistRunItem item;
  final _Draft draft;
  final bool editable;
  final List<PendingFileRow> pendingPhotos;
  final VoidCallback onChanged;
  final VoidCallback onSave;
  final VoidCallback onAddPhoto;

  @override
  State<_ItemCard> createState() => _ItemCardState();
}

/// Kartu item (Figma FORM CHECKLIST): dot + label, pill Kondisi Baik/Buruk, foto, Keterangan (saat Buruk),
/// kamera + Simpan. Item yang sudah tersimpan tampil ringkas (carousel foto + hasil); ketuk untuk mengubah.
class _ItemCardState extends State<_ItemCard> {
  bool _editing = false;

  ChecklistRunItem get item => widget.item;
  _Draft get draft => widget.draft;

  bool get _notOk {
    if (draft.value == 'not_ok' || draft.value == 'no') return true;
    final n = double.tryParse((draft.number ?? '').replaceAll(',', '.'));
    if (n == null) return false;
    return (item.numericMin != null && n < item.numericMin!) || (item.numericMax != null && n > item.numericMax!);
  }

  bool get _hasAnswer =>
      (draft.value != null) || (draft.number != null && draft.number!.isNotEmpty) || (draft.text != null && draft.text!.trim().isNotEmpty) || (item.itemType == 'photo' && draft.photo != null);

  List<PhotoSource> get _savedPhotos => [for (final p in widget.pendingPhotos) PhotoSource(localPath: p.localPath)];

  @override
  Widget build(BuildContext context) {
    final saved = item.isAnswered && !draft.dirty && !_editing;
    if (saved) return _savedView(context);
    return _editView(context);
  }

  Widget _label(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          width: 14,
          height: 14,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: BvTokens.brand500),
        ),
      ),
      const SizedBox(width: 14),
      Expanded(
        child: Text(
          item.label,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: BvTokens.neutral900, height: 1.3),
        ),
      ),
      if (item.isRequired)
        const Text(
          ' *',
          style: TextStyle(color: BvTokens.critical600, fontWeight: FontWeight.w800),
        ),
    ],
  );

  /// Tampilan tersimpan (Figma bagian bawah "Cheklist & Report Activity").
  Widget _savedView(BuildContext context) {
    final notOk = item.isNotOk;
    final photos = _savedPhotos;
    final resultText = switch (item.itemType) {
      'yes_no' => item.resultValue == 'yes' ? 'Ya' : 'Tidak',
      'numeric' => '${item.resultNumber ?? ''} ${item.numericUnit ?? ''}'.trim(),
      'text' => item.resultText ?? '',
      _ => notOk ? 'Kondisi Buruk' : 'Kondisi Baik',
    };
    return InkWell(
      onTap: widget.editable ? () => setState(() => _editing = true) : null,
      borderRadius: BorderRadius.circular(BvTokens.radiusXl),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (photos.isNotEmpty) PhotoCarousel(sources: photos, height: 190, radius: 0),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  if (item.note != null && item.note!.isNotEmpty) ...[const SizedBox(height: 4), Text(item.note!, style: const TextStyle(color: BvTokens.neutral500, fontSize: 13, height: 1.4))],
                ],
              ),
            ),
            const Divider(height: 18),
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(notOk ? Icons.sentiment_very_dissatisfied : Icons.sentiment_very_satisfied, color: notOk ? BvTokens.critical600 : BvTokens.success600, size: 22),
                  const SizedBox(width: 8),
                  Text(
                    resultText,
                    style: TextStyle(color: notOk ? BvTokens.critical600 : BvTokens.success600, fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  if (item.photoRequired && item.attachmentId == null && photos.isEmpty) ...[
                    const SizedBox(width: 10),
                    const Icon(Icons.image_not_supported_outlined, color: BvTokens.warning600, size: 18),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _editView(BuildContext context) {
    final editable = widget.editable;
    final thumbs = [
      if (draft.photo != null) PhotoThumb(bytes: draft.photo!.bytes, pending: true),
      for (final p in widget.pendingPhotos) PhotoThumb(localPath: p.localPath, pending: true, id: p.clientAttachmentId),
    ];
    final canSave = draft.dirty && _hasAnswer && !draft.saving;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _label(context),
          const SizedBox(height: 18),
          switch (item.itemType) {
            'yes_no' => ConditionToggle(
              value: draft.value,
              okValue: 'yes',
              notOkValue: 'no',
              okLabel: 'Ya',
              notOkLabel: 'Tidak',
              enabled: editable,
              onChanged: (v) {
                draft.value = v;
                widget.onChanged();
              },
            ),
            'numeric' => TextFormField(
              initialValue: draft.number,
              enabled: editable,
              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(
                labelText: 'Nilai${item.numericUnit != null ? ' (${item.numericUnit})' : ''}',
                helperText: item.numericMin != null || item.numericMax != null ? 'Rentang normal: ${item.numericMin ?? '-'} – ${item.numericMax ?? '-'}' : null,
                suffixIcon: _notOk ? const Icon(Icons.warning_amber, color: BvTokens.warning600) : null,
              ),
              onChanged: (v) {
                draft.number = v;
                widget.onChanged();
              },
            ),
            'text' => TextFormField(
              initialValue: draft.text,
              enabled: editable,
              maxLines: 3,
              decoration: const InputDecoration(labelText: 'Jawaban'),
              onChanged: (v) {
                draft.text = v;
                widget.onChanged();
              },
            ),
            'photo' => const SizedBox.shrink(),
            _ => ConditionToggle(
              value: draft.value,
              enabled: editable,
              onChanged: (v) {
                draft.value = v;
                widget.onChanged();
              },
            ),
          },
          if (thumbs.isNotEmpty) ...[
            const SizedBox(height: 14),
            PhotoThumbnailRow(
              photos: thumbs,
              size: 66,
              onRemove: draft.photo == null
                  ? null
                  : (t) {
                      if (t.bytes != null) {
                        draft.photo = null;
                        widget.onChanged();
                      }
                    },
            ),
          ],
          if (_notOk) ...[
            const SizedBox(height: 14),
            TextFormField(
              initialValue: draft.note,
              enabled: editable,
              maxLines: 3,
              decoration: const InputDecoration(labelText: 'Keterangan', alignLabelWithHint: true),
              onChanged: (v) {
                draft.note = v;
                widget.onChanged();
              },
            ),
            if (editable)
              Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(color: BvTokens.critical50, borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
                child: Row(
                  children: [
                    Expanded(
                      child: SwitchListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        value: draft.createFinding,
                        onChanged: (v) {
                          draft.createFinding = v;
                          widget.onChanged();
                        },
                        title: const Text('Buat Temuan (Finding)', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                      ),
                    ),
                    if (draft.createFinding)
                      DropdownButton<String>(
                        value: draft.findingSeverity,
                        underline: const SizedBox.shrink(),
                        items: [
                          for (final sv in const ['low', 'medium', 'high', 'critical'])
                            DropdownMenuItem(
                              value: sv,
                              child: Text(severityLabel(sv), style: const TextStyle(fontSize: 13)),
                            ),
                        ],
                        onChanged: (v) {
                          draft.findingSeverity = v ?? 'medium';
                          widget.onChanged();
                        },
                      ),
                  ],
                ),
              ),
          ],
          if (item.photoRequired && thumbs.isEmpty && item.attachmentId == null && _hasAnswer)
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Foto wajib untuk item ini',
                style: TextStyle(color: BvTokens.warning700, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          const SizedBox(height: 16),
          Row(
            children: [
              CameraBox(onTap: editable ? widget.onAddPhoto : null, active: _hasAnswer, size: 64),
              const Spacer(),
              if (editable)
                SaveButton(
                  onPressed: canSave
                      ? () {
                          widget.onSave();
                          setState(() => _editing = false);
                        }
                      : null,
                  loading: draft.saving,
                  label: draft.dirty || !item.isAnswered ? 'Simpan' : 'Tersimpan',
                ),
            ],
          ),
        ],
      ),
    );
  }
}
