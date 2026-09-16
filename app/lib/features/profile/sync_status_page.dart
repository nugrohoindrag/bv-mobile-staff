import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:drift/drift.dart' show OrderingTerm;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';

final _allMutationsProvider = StreamProvider<List<MutationRow>>((ref) {
  final db = ref.watch(databaseProvider);
  return (db.select(db.mutations)..orderBy([(t) => OrderingTerm.desc(t.createdAt)])..limit(200)).watch();
});

final _allFilesProvider = StreamProvider<List<PendingFileRow>>((ref) {
  final db = ref.watch(databaseProvider);
  return (db.select(db.pendingFiles)..orderBy([(t) => OrderingTerm.desc(t.createdAt)])..limit(200)).watch();
});

/// Status antrean sync (PRD §21): setiap mutasi & foto dengan status, alasan, CTA coba lagi.
class SyncStatusPage extends ConsumerWidget {
  const SyncStatusPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final muts = ref.watch(_allMutationsProvider).value ?? const <MutationRow>[];
    final files = ref.watch(_allFilesProvider).value ?? const <PendingFileRow>[];
    final status = ref.watch(syncStatusProvider).value;
    String stateOf(String st) => switch (st) {
          'pending' || 'sending' => SyncState.pending,
          'synced' || 'conflict_seen' => SyncState.synced,
          'failed' => SyncState.failed,
          'conflict' => SyncState.conflict,
          _ => SyncState.pending,
        };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Sinkronisasi'),
        actions: [
          IconButton(icon: const Icon(Icons.sync), tooltip: s.syncNow, onPressed: () => ref.read(syncControllerProvider.notifier).trigger(force: true)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          if (status?.lastError != null && !status!.lastError!.isNetwork)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text('Kesalahan terakhir: ${status.lastError!.message}', style: const TextStyle(color: BvTokens.critical600)),
            ),
          if (muts.isEmpty && files.isEmpty) const EmptyState(title: 'Semua tersinkron', message: 'Tidak ada perubahan yang menunggu.', icon: Icons.cloud_done_outlined),
          if (files.any((f) => f.uploadState != 'confirmed')) ...[
            const SectionHeader(title: 'Foto', dotColor: BvTokens.warning600, padding: EdgeInsets.fromLTRB(20, 4, 20, 4)),
            for (final f in files.where((f) => f.uploadState != 'confirmed'))
              ListTile(
                leading: const Icon(Icons.image_outlined),
                title: Text('${humanize(f.attachmentType)} · ${(f.sizeBytes / 1024).round()} KB'),
                subtitle: Text('${humanize(f.uploadState)}${f.lastError != null ? ' · ${f.lastError}' : ''} · ${BvFormat.relative(f.createdAt)}'),
                trailing: SyncBadge(f.uploadState == 'rejected' ? SyncState.failed : SyncState.pending),
              ),
          ],
          const SectionHeader(title: 'Mutasi', dotColor: BvTokens.info600, padding: EdgeInsets.fromLTRB(20, 8, 20, 4)),
          for (final m in muts)
            ListTile(
              dense: true,
              leading: Icon(SyncBadge.iconFor(stateOf(m.status)), color: SemanticPalette.of(semanticOf(statusDefOf('sync_state', stateOf(m.status))?.semantic ?? 'neutral')).solid),
              title: Text('${humanize(m.action)} · ${humanize(m.objectType)} #${m.seq}'),
              subtitle: Text('${humanize(m.status)}${m.reasonCode != null ? ' · ${m.reasonCode}' : ''}${m.lastError != null ? '\n${m.lastError}' : ''} · ${BvFormat.relative(m.clientTime)}'),
              isThreeLine: m.lastError != null,
              trailing: m.status == 'failed'
                  ? TextButton(
                      onPressed: () async {
                        await ref.read(localRepoProvider).retryFailed(m.objectId);
                        ref.read(syncControllerProvider.notifier).afterMutation();
                      },
                      child: Text(s.retry),
                    )
                  : null,
              onTap: () => context.push(m.objectType == 'work_order' ? '/work-orders/${m.objectId}' : '/tasks/${m.objectId}'),
            ),
        ],
      ),
    );
  }
}
