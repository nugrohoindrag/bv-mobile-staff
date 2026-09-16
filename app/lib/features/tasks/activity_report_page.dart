import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../shared/dialogs.dart';
import '../../shared/photo_capture.dart';
import 'work_providers.dart';

/// Activity Report (Figma): kartu "Tambah Activity Report" (teks + foto + Post) dan feed laporan
/// (carousel foto, avatar, nama, waktu, teks). Disimpan sebagai komentar + foto (antrean sync, offline OK).
class ActivityReportPage extends ConsumerStatefulWidget {
  const ActivityReportPage({super.key, required this.objectType, required this.objectId});
  final String objectType;
  final String objectId;
  @override
  ConsumerState<ActivityReportPage> createState() => _ActivityReportPageState();
}

class _ActivityReportPageState extends ConsumerState<ActivityReportPage> {
  final _text = TextEditingController();
  final _photos = <CapturedPhoto>[];
  bool _posting = false;
  bool _composeOpen = true;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _post() async {
    final body = _text.text.trim();
    if (body.isEmpty && _photos.isEmpty) return;
    setState(() => _posting = true);
    try {
      final repo = ref.read(localRepoProvider);
      for (final p in _photos) {
        await repo.attachPhoto(widget.objectType, widget.objectId, CapturedPhoto(bytes: p.bytes, capturedAt: p.capturedAt, gpsLat: p.gpsLat, gpsLng: p.gpsLng, gpsStatus: p.gpsStatus, caption: body.isEmpty ? null : body), attachmentType: AttachmentType.photo);
      }
      if (body.isNotEmpty) await repo.addComment(widget.objectType, widget.objectId, body);
      ref.read(syncControllerProvider.notifier).afterMutation();
      setState(() {
        _text.clear();
        _photos.clear();
      });
      if (mounted) showInfo(context, 'Activity report dikirim');
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _posting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final key = (objectType: widget.objectType, id: widget.objectId);
    final session = ref.watch(currentSessionProvider);
    final comments = ref.watch(commentsProvider(key));
    final photos = ref.watch(attachmentsProvider(key)).value ?? const <Attachment>[];
    final pendingFiles = ref.watch(pendingFilesProvider(widget.objectId)).value ?? const <PendingFileRow>[];
    final mutations = ref.watch(mutationRowsProvider(widget.objectId)).value ?? const <MutationRow>[];
    final item = ref.watch(localWorkItemProvider(widget.objectId)).value;
    final canWrite = session.can(Perm.commentsCreate) && (item?.isOpen ?? true);

    // Gabungkan laporan: komentar server + komentar pending, foto dilampirkan ke laporan berdasarkan caption/waktu.
    final entries = <_Entry>[];
    for (final m in mutations.where((m) => m.action == WorkAction.addComment && m.status != 'synced' && m.status != 'conflict_seen')) {
      entries.add(_Entry(author: session.me.fullName, at: m.clientTime, text: m.payload['body'] as String? ?? '', pending: true));
    }
    for (final c in comments.value ?? const <Comment>[]) {
      entries.add(_Entry(author: c.authorName, at: c.createdAt, text: c.body));
    }
    // Foto: yang caption-nya sama dengan teks laporan → gabung; sisanya jadi entri foto tersendiri.
    final loosePhotos = <PhotoSource>[];
    for (final p in pendingFiles.where((p) => p.uploadState != 'confirmed' && p.checklistItemId == null)) {
      final e = entries.where((e) => e.text.isNotEmpty && e.text == p.caption).firstOrNull;
      (e?.photos ?? loosePhotos).add(PhotoSource(localPath: p.localPath));
    }
    for (final a in photos.where((a) => a.attachmentType != AttachmentType.checklist)) {
      final e = entries.where((e) => e.text.isNotEmpty && e.text == a.caption).firstOrNull;
      (e?.photos ?? loosePhotos).add(PhotoSource(url: a.url ?? a.thumbUrl));
    }
    if (loosePhotos.isNotEmpty) {
      entries.add(_Entry(author: item?.assignee.userName ?? session.me.fullName, at: photos.isNotEmpty ? (photos.first.uploadedAt ?? DateTime.now()) : DateTime.now(), text: '', photos: loosePhotos));
    }
    entries.sort((a, b) => b.at.compareTo(a.at));

    return Scaffold(
      appBar: AppBar(title: const Text('Activity Report')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(commentsProvider(key));
          ref.invalidate(attachmentsProvider(key));
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (canWrite) _compose(),
            if (canWrite) const SizedBox(height: 16),
            if (comments.isLoading && entries.isEmpty) const SkeletonCard(height: 220),
            if (!comments.isLoading && entries.isEmpty) const EmptyState(title: 'Belum ada activity report', message: 'Laporan kegiatan dan foto akan tampil di sini.', icon: Icons.article_outlined),
            for (final e in entries) ...[_ReportCard(entry: e), const SizedBox(height: 16)],
            if (comments.hasError && comments.error is AppError && (comments.error! as AppError).isNetwork)
              const Padding(padding: EdgeInsets.all(8), child: Text('Offline — laporan dari server dimuat saat online.', textAlign: TextAlign.center, style: TextStyle(color: BvTokens.neutral500, fontSize: 12))),
          ],
        ),
      ),
    );
  }

  Widget _compose() => Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 8, 10),
              child: Row(children: [
                const Expanded(child: Text('Tambah Activity Report', style: TextStyle(color: BvTokens.neutral500, fontSize: 17, fontWeight: FontWeight.w600))),
                IconButton(icon: Icon(_composeOpen ? Icons.close : Icons.expand_more, color: BvTokens.neutral500), onPressed: () => setState(() => _composeOpen = !_composeOpen)),
              ]),
            ),
            const Divider(height: 1),
            if (_composeOpen)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _text,
                      maxLines: null,
                      minLines: 3,
                      decoration: const InputDecoration(hintText: 'Tulis kegiatan / kendala yang terjadi…', border: InputBorder.none, enabledBorder: InputBorder.none, focusedBorder: InputBorder.none, filled: false, contentPadding: EdgeInsets.zero),
                      style: const TextStyle(fontSize: 15.5, height: 1.4),
                    ),
                    if (_photos.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      PhotoThumbnailRow(
                        photos: [for (final p in _photos) PhotoThumb(bytes: p.bytes)],
                        onRemove: (t) => setState(() => _photos.removeWhere((p) => p.bytes == t.bytes)),
                        size: 64,
                      ),
                    ],
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        CameraBox(
                          onTap: _posting
                              ? null
                              : () async {
                                  final p = await const PhotoCapture().pick(context);
                                  if (p != null) setState(() => _photos.add(p));
                                },
                        ),
                        const Spacer(),
                        SaveButton(label: 'Post', width: 150, loading: _posting, onPressed: _text.text.trim().isEmpty && _photos.isEmpty ? null : _post),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
}

class _Entry {
  _Entry({required this.author, required this.at, required this.text, this.pending = false, List<PhotoSource>? photos}) : photos = photos ?? [];
  final String author;
  final DateTime at;
  final String text;
  final bool pending;
  final List<PhotoSource> photos;
}

class _ReportCard extends StatelessWidget {
  const _ReportCard({required this.entry});
  final _Entry entry;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (entry.photos.isNotEmpty) PhotoCarousel(sources: entry.photos, height: 240, radius: 0),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    BvAvatar(name: entry.author, size: 52, border: false),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(entry.author, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
                        Text(BvFormat.timeDayDate(entry.at), style: const TextStyle(color: BvTokens.neutral500, fontSize: 13)),
                      ]),
                    ),
                    if (entry.pending) const SyncBadge(SyncState.pending),
                  ]),
                  if (entry.text.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Text(entry.text, style: const TextStyle(fontSize: 15, height: 1.45, color: BvTokens.neutral800)),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
}
