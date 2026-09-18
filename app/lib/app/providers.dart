import 'dart:io';

import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import 'env.dart';

/// Nilai yang dibaca sekali saat bootstrap (main.dart) lalu di-override ke ProviderScope.
class Bootstrap {
  const Bootstrap({required this.deviceId, required this.appVersion, required this.prefs, required this.photoDir});
  final String deviceId;
  final String appVersion;
  final SharedPreferences prefs;
  final Directory photoDir;

  static const _storage = FlutterSecureStorage();

  static Future<Bootstrap> load() async {
    var deviceId = await _storage.read(key: 'device_id');
    if (deviceId == null || deviceId.isEmpty) {
      deviceId = const Uuid().v4();
      await _storage.write(key: 'device_id', value: deviceId);
    }
    final info = await PackageInfo.fromPlatform();
    final prefs = await SharedPreferences.getInstance();
    final support = await getApplicationSupportDirectory();
    return Bootstrap(deviceId: deviceId, appVersion: info.version, prefs: prefs, photoDir: Directory('${support.path}/photos'));
  }
}

final bootstrapProvider = Provider<Bootstrap>((ref) => throw UnimplementedError('override di main'));

/// Token di flutter_secure_storage (TAD §8.1).
class SecureTokenStore implements TokenStore {
  const SecureTokenStore();
  static const _s = FlutterSecureStorage();

  @override
  Future<TokenPair?> read() async {
    final access = await _s.read(key: 'access_token');
    if (access == null) return null;
    return TokenPair(
      accessToken: access,
      refreshToken: await _s.read(key: 'refresh_token'),
      accessExpiresAt: DateTime.tryParse(await _s.read(key: 'access_exp') ?? '') ?? DateTime.now(),
      refreshExpiresAt: DateTime.tryParse(await _s.read(key: 'refresh_exp') ?? '') ?? DateTime.now(),
    );
  }

  @override
  Future<void> write(TokenPair pair) async {
    await _s.write(key: 'access_token', value: pair.accessToken);
    if (pair.refreshToken != null) await _s.write(key: 'refresh_token', value: pair.refreshToken);
    await _s.write(key: 'access_exp', value: pair.accessExpiresAt.toIso8601String());
    await _s.write(key: 'refresh_exp', value: pair.refreshExpiresAt.toIso8601String());
  }

  @override
  Future<void> clear() async {
    for (final k in const ['access_token', 'refresh_token', 'access_exp', 'refresh_exp']) {
      await _s.delete(key: k);
    }
  }
}

final tokenStoreProvider = Provider<TokenStore>((_) => const SecureTokenStore());

/// Sinyal dari klien API ke sesi (401 refresh gagal / 426 app usang).
class SessionSignals extends Notifier<({bool expired, bool outdated})> {
  @override
  ({bool expired, bool outdated}) build() => (expired: false, outdated: false);
  void expired() => state = (expired: true, outdated: state.outdated);
  void outdated() => state = (expired: state.expired, outdated: true);
  void reset() => state = (expired: false, outdated: false);
}

final sessionSignalsProvider = NotifierProvider<SessionSignals, ({bool expired, bool outdated})>(SessionSignals.new);

final apiClientProvider = Provider<BvApiClient>((ref) {
  final b = ref.watch(bootstrapProvider);
  return BvApiClient(
    BvApiConfig(baseUrl: AppEnv.apiUrl, deviceId: b.deviceId, appVersion: b.appVersion),
    ref.watch(tokenStoreProvider),
    onSessionExpired: () => ref.read(sessionSignalsProvider.notifier).expired(),
    onAppOutdated: () => ref.read(sessionSignalsProvider.notifier).outdated(),
  );
});

final authApiProvider = Provider((ref) => AuthApi(ref.watch(apiClientProvider)));
final workApiProvider = Provider((ref) => WorkApi(ref.watch(apiClientProvider)));
final syncApiProvider = Provider((ref) => SyncApi(ref.watch(apiClientProvider)));
final attachmentsApiProvider = Provider((ref) => AttachmentsApi(ref.watch(apiClientProvider)));
final patrolApiProvider = Provider((ref) => PatrolApi(ref.watch(apiClientProvider)));
final cleaningApiProvider = Provider((ref) => CleaningApi(ref.watch(apiClientProvider)));
final incidentsApiProvider = Provider((ref) => IncidentsApi(ref.watch(apiClientProvider)));
final findingsApiProvider = Provider((ref) => FindingsApi(ref.watch(apiClientProvider)));
final notificationsApiProvider = Provider((ref) => NotificationsApi(ref.watch(apiClientProvider)));
final catalogApiProvider = Provider((ref) => CatalogApi(ref.watch(apiClientProvider)));
final inventoryApiProvider = Provider((ref) => InventoryApi(ref.watch(apiClientProvider)));
final profileApiProvider = Provider((ref) => ProfileApi(ref.watch(apiClientProvider)));

final databaseProvider = Provider<BvDatabase>((ref) {
  final db = BvDatabase(driftDatabase(name: 'bv_staff'));
  ref.onDispose(db.close);
  return db;
});

final localRepoProvider = Provider<LocalWorkRepository>((ref) {
  final b = ref.watch(bootstrapProvider);
  return LocalWorkRepository(ref.watch(databaseProvider), imageProcessor: const FlutterImageProcessor(), photoStore: PhotoStore(b.photoDir));
});

final syncEngineProvider = Provider<SyncEngine>((ref) {
  final engine = SyncEngine(
    db: ref.watch(databaseProvider),
    repo: ref.watch(localRepoProvider),
    syncApi: ref.watch(syncApiProvider),
    attachmentsApi: ref.watch(attachmentsApiProvider),
    // Setelah mutasi diterima server: segarkan detail + checklist run object tsb dari server
    // (allowed_actions/status/attachment_id terbaru) tanpa menunggu pull bundle 15 menit.
    onApplied: (objects) async {
      final work = ref.read(workApiProvider);
      final repo = ref.read(localRepoProvider);
      for (final o in objects) {
        if (o.objectType != ObjectType.task && o.objectType != ObjectType.workOrder) continue;
        try {
          final fresh = await work.get(o.objectType, o.objectId);
          await repo.saveWorkItem(fresh);
          final runs = await work.checklistRuns(o.objectType, o.objectId);
          for (final r in runs) {
            await repo.saveRun(r);
          }
          await repo.refreshSyncState(o.objectId);
        } on AppError catch (e) {
          if (e.isNetwork) return;
        }
      }
    },
  );
  ref.onDispose(engine.dispose);
  return engine;
});

final syncStatusProvider = StreamProvider<SyncStatus>((ref) => ref.watch(syncEngineProvider).status);
final syncSummaryProvider = StreamProvider<SyncSummary>((ref) => ref.watch(localRepoProvider).watchSummary());
