import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';

/// Daftar kerja lokal (bundle hari ini + open/overdue) per jenis, dengan overlay mutasi pending.
final localWorkItemsProvider = StreamProvider.family<List<WorkItem>, Set<String>>(
  (ref, kinds) => ref.watch(localRepoProvider).watchWorkItems(kinds: kinds),
);

final localWorkItemProvider = StreamProvider.family<WorkItem?, String>(
  (ref, id) => ref.watch(localRepoProvider).watchWorkItem(id),
);

final localRunProvider = StreamProvider.family<ChecklistRun?, String>(
  (ref, objectId) => ref.watch(localRepoProvider).watchRun(objectId),
);

final localCheckpointsProvider = StreamProvider.family<List<CheckpointScan>, String>(
  (ref, taskId) => ref.watch(localRepoProvider).watchCheckpoints(taskId),
);

final pendingFilesProvider = StreamProvider.family<List<PendingFileRow>, String>(
  (ref, objectId) => ref.watch(localRepoProvider).watchPendingFiles(objectId),
);

final mutationRowsProvider = StreamProvider.family<List<MutationRow>, String>(
  (ref, objectId) => ref.watch(localRepoProvider).watchMutationRows(objectId),
);

final syncStateOfProvider = FutureProvider.family<String?, String>(
  (ref, id) async {
    ref.watch(mutationRowsProvider(id));
    return ref.watch(localRepoProvider).syncStateOf(id);
  },
);

/// Detail: lokal dulu; bila tidak ada di bundle (mis. supervisor menelusuri), ambil dari server.
final workItemDetailProvider = FutureProvider.family<WorkItem?, ({String objectType, String id})>((ref, key) async {
  final local = await ref.watch(localWorkItemProvider(key.id).future);
  if (local != null) return local;
  return ref.watch(workApiProvider).get(key.objectType, key.id);
});

/// Run checklist: lokal dulu; bila kosong ambil dari server lalu simpan lokal (agar bisa offline).
final checklistRunProvider = FutureProvider.family<ChecklistRun?, ({String objectType, String id})>((ref, key) async {
  final local = await ref.watch(localRunProvider(key.id).future);
  if (local != null) return local;
  try {
    final runs = await ref.watch(workApiProvider).checklistRuns(key.objectType, key.id);
    if (runs.isEmpty) return null;
    await ref.read(localRepoProvider).saveRun(runs.first);
    return runs.first;
  } on AppError catch (e) {
    if (e.isNetwork) return null;
    rethrow;
  }
});

final attachmentsProvider = FutureProvider.family<List<Attachment>, ({String objectType, String id})>(
  (ref, key) => ref.watch(attachmentsApiProvider).list(key.objectType, key.id),
);

final activitiesProvider = FutureProvider.family<List<Activity>, ({String objectType, String id})>(
  (ref, key) => ref.watch(workApiProvider).activities(key.objectType, key.id),
);

final commentsProvider = FutureProvider.family<List<Comment>, ({String objectType, String id})>(
  (ref, key) => ref.watch(workApiProvider).comments(key.objectType, key.id),
);

final masterDataProvider = FutureProvider<MasterData>((ref) => ref.watch(localRepoProvider).master());
final localLocationsProvider = FutureProvider<List<LocationLite>>((ref) => ref.watch(localRepoProvider).locations());
final localAssetsProvider = FutureProvider<List<AssetLite>>((ref) => ref.watch(localRepoProvider).assets());
