import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/sync_controller.dart';
import 'work_providers.dart';

/// Kartu status sync di detail (PRD §21): Pending Sync / Sync Failed (Coba lagi) / Sync Conflict (alasan; tanpa retry).
class SyncStatusCard extends ConsumerWidget {
  const SyncStatusCard({super.key, required this.objectId});
  final String objectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rows = ref.watch(mutationRowsProvider(objectId)).value ?? const [];
    final files = ref.watch(pendingFilesProvider(objectId)).value ?? const [];
    final pending = rows.where((m) => m.status == 'pending' || m.status == 'sending').length + files.where((f) => f.uploadState != 'confirmed' && f.uploadState != 'rejected').length;
    final failed = rows.where((m) => m.status == 'failed').toList();
    final conflicts = rows.where((m) => m.status == 'conflict').toList();
    if (pending == 0 && failed.isEmpty && conflicts.isEmpty) return const SizedBox.shrink();

    final state = conflicts.isNotEmpty ? SyncState.conflict : failed.isNotEmpty ? SyncState.failed : SyncState.pending;
    final p = SemanticPalette.of(semanticOf(statusDefOf('sync_state', state)!.semantic));
    final msg = conflicts.isNotEmpty
        ? (conflicts.last.lastError ?? 'Konflik — ditinjau supervisor')
        : failed.isNotEmpty
            ? (failed.last.lastError ?? 'Gagal disinkronkan')
            : '$pending perubahan menunggu sinkronisasi';

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: p.soft, borderRadius: BorderRadius.circular(BvTokens.radiusLg), border: Border.all(color: p.softBorder)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            SyncBadge(state, dense: false),
            const Spacer(),
            if (state == SyncState.failed)
              TextButton(
                onPressed: () async {
                  await ref.read(localRepoProvider).retryFailed(objectId);
                  ref.read(syncControllerProvider.notifier).afterMutation();
                },
                child: const Text('Coba lagi'),
              ),
            if (state == SyncState.conflict)
              TextButton(onPressed: () => ref.read(localRepoProvider).dismissConflict(objectId), child: const Text('Mengerti')),
          ]),
          const SizedBox(height: 4),
          Text(msg, style: TextStyle(color: p.text, fontSize: 13)),
          if (state == SyncState.conflict)
            const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text('Evidence (foto/checklist) tetap tersimpan di server. Data di layar ini sudah mengikuti server.', style: TextStyle(fontSize: 12, color: BvTokens.neutral600)),
            ),
        ],
      ),
    );
  }
}
