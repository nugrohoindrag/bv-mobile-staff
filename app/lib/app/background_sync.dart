import 'dart:io';

import 'package:bv_api/bv_api.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:workmanager/workmanager.dart';

import 'env.dart';
import 'providers.dart';

/// Sync di background saat app tidak di foreground (TAD §8.4: `workmanager`, Android; iOS best-effort).
/// Berjalan di isolate terpisah → membangun DB/klien sendiri tanpa Riverpod.
const _taskName = 'id.buildingvision.bv_staff.sync';

@pragma('vm:entry-point')
void backgroundSyncDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    try {
      const tokens = SecureTokenStore();
      final pair = await tokens.read();
      if (pair == null) return true; // belum login
      final info = await PackageInfo.fromPlatform();
      final deviceId = inputData?['device_id'] as String? ?? '';
      if (deviceId.isEmpty) return true;
      final client = BvApiClient(BvApiConfig(baseUrl: AppEnv.apiUrl, deviceId: deviceId, appVersion: info.version), tokens);
      final db = BvDatabase(driftDatabase(name: 'bv_staff'));
      final support = await getApplicationSupportDirectory();
      final repo = LocalWorkRepository(db, imageProcessor: const FlutterImageProcessor(), photoStore: PhotoStore(Directory('${support.path}/photos')));
      final engine = SyncEngine(db: db, repo: repo, syncApi: SyncApi(client), attachmentsApi: AttachmentsApi(client));
      await engine.syncNow();
      await engine.dispose();
      await db.close();
      return true;
    } catch (e) {
      debugPrint('background sync gagal: $e');
      return false; // workmanager akan retry dengan backoff
    }
  });
}

class BackgroundSync {
  BackgroundSync._();

  static Future<void> init() async {
    if (!Platform.isAndroid) return;
    await Workmanager().initialize(backgroundSyncDispatcher);
  }

  /// Periodik tiap 15 menit (minimum Android) hanya saat ada jaringan.
  static Future<void> schedule(String deviceId) async {
    if (!Platform.isAndroid) return;
    await Workmanager().registerPeriodicTask(
      _taskName,
      _taskName,
      frequency: const Duration(minutes: 15),
      constraints: Constraints(networkType: NetworkType.connected),
      existingWorkPolicy: ExistingPeriodicWorkPolicy.keep,
      backoffPolicy: BackoffPolicy.exponential,
      backoffPolicyDelay: const Duration(minutes: 1),
      inputData: {'device_id': deviceId},
    );
  }

  /// Satu kali segera setelah mutasi saat app akan ke background (pending queue cepat terkirim).
  static Future<void> runOnce(String deviceId) async {
    if (!Platform.isAndroid) return;
    await Workmanager().registerOneOffTask(
      '$_taskName.once.${DateTime.now().millisecondsSinceEpoch}',
      _taskName,
      constraints: Constraints(networkType: NetworkType.connected),
      inputData: {'device_id': deviceId},
    );
  }

  static Future<void> cancel() async {
    if (!Platform.isAndroid) return;
    await Workmanager().cancelAll();
  }
}
