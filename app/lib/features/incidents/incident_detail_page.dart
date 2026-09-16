import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../shared/dialogs.dart';
import '../../shared/photo_capture.dart';
import '../tasks/work_providers.dart';

final incidentProvider = FutureProvider.family<Incident, String>((ref, id) => ref.watch(incidentsApiProvider).get(id));

/// Detail Insiden (PRD §14): status, lokasi, pelapor, foto, komentar; aksi start/resolve/close sesuai `allowed_actions` (online).
class IncidentDetailPage extends ConsumerStatefulWidget {
  const IncidentDetailPage({super.key, required this.id});
  final String id;
  @override
  ConsumerState<IncidentDetailPage> createState() => _IncidentDetailPageState();
}

class _IncidentDetailPageState extends ConsumerState<IncidentDetailPage> {
  bool _busy = false;

  Future<void> _transition(Incident inc, String action) async {
    String reason = '';
    String? resolution;
    if (action == 'resolve') {
      resolution = await showReasonDialog(context, title: 'Selesaikan insiden', hint: 'Resolusi / tindakan yang dilakukan (wajib)', confirm: 'Selesaikan');
      if (resolution == null) return;
      reason = resolution;
    } else if (action == 'cancel' || action == 'reopen') {
      final r = await showReasonDialog(context, title: humanize(action), hint: 'Alasan (wajib)');
      if (r == null) return;
      reason = r;
    }
    setState(() => _busy = true);
    try {
      await ref.read(incidentsApiProvider).transition(inc.id, action, reason: reason, resolution: resolution);
      ref.invalidate(incidentProvider(inc.id));
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _addPhoto(Incident inc) async {
    final photo = await const PhotoCapture().pick(context);
    if (photo == null) return;
    setState(() => _busy = true);
    try {
      // Insiden tidak ada di bundle offline → antrean sync tetap dipakai (attach_photo mendukung incident).
      await ref.read(localRepoProvider).attachPhoto(ObjectType.incident, inc.id, photo);
      ref.invalidate(attachmentsProvider((objectType: ObjectType.incident, id: inc.id)));
      if (mounted) showInfo(context, 'Foto diantrekan untuk diunggah');
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inc = ref.watch(incidentProvider(widget.id));
    final session = ref.watch(currentSessionProvider);
    return Scaffold(
      appBar: AppBar(title: Text(inc.value?.incidentNumber ?? 'Insiden')),
      body: inc.when(
        loading: () => const LoadingState(),
        error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(incidentProvider(widget.id))),
        data: (i) => _body(i, session),
      ),
      bottomNavigationBar: inc.value == null
          ? null
          : _actions(inc.value!, session),
    );
  }

  Widget? _actions(Incident i, Session session) {
    final buttons = <Widget>[];
    if (i.allowedActions.contains('start')) buttons.add(BvPrimaryButton(label: 'Mulai Tangani', icon: Icons.play_arrow, loading: _busy, onPressed: () => _transition(i, 'start')));
    if (i.allowedActions.contains('resolve')) buttons.add(BvPrimaryButton(label: 'Selesaikan', icon: Icons.check_circle_outline, loading: _busy, onPressed: () => _transition(i, 'resolve')));
    if (session.isSupervisor && i.allowedActions.contains('close')) buttons.add(BvSecondaryButton(label: 'Tutup', icon: Icons.verified_outlined, onPressed: _busy ? null : () => _transition(i, 'close')));
    if (buttons.isEmpty) return null;
    return BottomActionBar(children: buttons.take(2).toList());
  }

  Widget _body(Incident i, Session session) {
    final key = (objectType: ObjectType.incident, id: i.id);
    final photos = ref.watch(attachmentsProvider(key)).value ?? const <Attachment>[];
    final pending = ref.watch(pendingFilesProvider(i.id)).value ?? const [];
    final comments = ref.watch(commentsProvider(key));
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(width: 48, height: 48, decoration: const BoxDecoration(color: BvTokens.critical600, shape: BoxShape.circle), child: const Icon(Icons.report, color: Colors.white)),
                const SizedBox(width: 12),
                Expanded(child: Text(i.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18))),
              ]),
              const SizedBox(height: 12),
              Wrap(spacing: 6, runSpacing: 6, children: [
                StatusBadge('incident', i.status),
                SeverityBadge(i.severity, dense: false),
                PriorityBadge(i.priority, dense: false),
                for (final f in i.flags) FlagBadge(f),
              ]),
              if (i.description != null && i.description!.isNotEmpty) ...[const SizedBox(height: 12), Text(i.description!, style: const TextStyle(color: BvTokens.neutral700))],
            ],
          ),
        ),
        const SizedBox(height: 12),
        SectionCard(
          child: Column(children: [
            DetailRow.text(label: 'Kategori', value: '${humanize(i.incidentType)} · ${humanize(i.category)}'),
            DetailRow(label: 'Lokasi', child: LocationPath(i.location.pathText ?? i.location.name)),
            DetailRow.text(label: 'Terjadi', value: BvFormat.dateTime(i.occurredAt)),
            DetailRow.text(label: 'Dilaporkan', value: '${i.reportedByName ?? '—'} · ${BvFormat.dateTime(i.reportedAt)}'),
            DetailRow.text(label: 'Penanggung jawab', value: [i.assignee.userName, i.assignee.teamName].whereType<String>().join(' · ')),
            if (i.resolution != null) DetailRow.text(label: 'Resolusi', value: i.resolution!),
            if (i.resolvedAt != null) DetailRow.text(label: 'Selesai', value: BvFormat.dateTime(i.resolvedAt)),
          ]),
        ),
        const SectionHeader(title: 'Foto', dotColor: BvTokens.info600),
        SectionCard(
          child: PhotoThumbnailRow(
            photos: [
              for (final p in pending) PhotoThumb(localPath: p.localPath, pending: true),
              for (final a in photos) PhotoThumb(url: a.thumbUrl ?? a.url, id: a.id),
            ],
            onAdd: session.can(Perm.attachmentsCreate) && i.status != 'closed' && i.status != 'cancelled' ? () => _addPhoto(i) : null,
            size: 84,
          ),
        ),
        if (i.links.isNotEmpty) ...[
          const SectionHeader(title: 'Terkait', dotColor: BvTokens.neutral400),
          SectionCard(
            padding: EdgeInsets.zero,
            child: Column(children: [
              for (final l in i.links)
                ListTile(
                  leading: const Icon(Icons.link),
                  title: Text(l.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  subtitle: Text(l.label),
                  trailing: StatusBadge(l.objectType, l.status, dense: true),
                  onTap: l.objectType == 'work_order' ? () => context.push('/work-orders/${l.objectId}') : l.objectType == 'task' ? () => context.push('/tasks/${l.objectId}') : null,
                ),
            ]),
          ),
        ],
        const SectionHeader(title: 'Komentar', dotColor: BvTokens.neutral400),
        SectionCard(
          padding: EdgeInsets.zero,
          child: comments.when(
            loading: () => const Padding(padding: EdgeInsets.all(16), child: LinearProgressIndicator()),
            error: (e, _) => const Padding(padding: EdgeInsets.all(16), child: Text('Komentar tidak dapat dimuat')),
            data: (list) => Column(children: [
              if (list.isEmpty) const Padding(padding: EdgeInsets.all(16), child: Text('Belum ada komentar', style: TextStyle(color: BvTokens.neutral500))),
              for (final c in list) ListTile(leading: BvAvatar(name: c.authorName, size: 32, border: false), title: Text(c.body), subtitle: Text('${c.authorName} · ${BvFormat.relative(c.createdAt)}')),
              if (session.can(Perm.commentsCreate))
                TextButton.icon(
                  icon: const Icon(Icons.add_comment_outlined),
                  label: const Text('Tambah komentar'),
                  onPressed: () async {
                    final body = await showReasonDialog(context, title: 'Tambah komentar', hint: 'Tulis komentar', confirm: 'Kirim');
                    if (body == null || body.isEmpty) return;
                    try {
                      await ref.read(workApiProvider).addComment(ObjectType.incident, i.id, body);
                      ref.invalidate(commentsProvider(key));
                    } catch (e) {
                      if (mounted) showError(context, e);
                    }
                  },
                ),
            ]),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
