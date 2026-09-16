import 'dart:async';

import 'package:bv_core/bv_core.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'background_sync.dart';
import 'providers.dart';
import 'session.dart';

/// Pemicu sync (TAD §8.4 langkah 1 & 3): login, app ke foreground, online kembali, tiap 15 menit,
/// dan setelah setiap mutasi lokal. Status online = konektivitas OS **dan** probe `/health`.
class SyncController extends Notifier<bool> with WidgetsBindingObserver {
  Timer? _periodic;
  StreamSubscription<List<ConnectivityResult>>? _conn;
  Timer? _debounce;

  @override
  bool build() {
    WidgetsBinding.instance.addObserver(this);
    _conn = Connectivity().onConnectivityChanged.listen(_onConnectivity);
    _periodic = Timer.periodic(const Duration(minutes: 15), (_) => unawaited(trigger()));
    ref.listen(sessionProvider, (prev, next) {
      if (next.value != null && prev?.value == null) unawaited(trigger());
    });
    ref.onDispose(() {
      WidgetsBinding.instance.removeObserver(this);
      _conn?.cancel();
      _periodic?.cancel();
      _debounce?.cancel();
    });
    return true; // online (asumsi awal)
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) unawaited(trigger());
    if (state == AppLifecycleState.paused) {
      // App ke background: bila masih ada antrean, minta workmanager mengirimkannya.
      unawaited(ref.read(localRepoProvider).watchSummary().first.then((s) {
        if (s.hasPending) return BackgroundSync.runOnce(ref.read(bootstrapProvider).deviceId);
      }));
    }
  }

  Future<void> _onConnectivity(List<ConnectivityResult> results) async {
    final hasNet = results.any((r) => r != ConnectivityResult.none);
    if (!hasNet) {
      _setOnline(false);
      return;
    }
    // Probe /health: konektivitas OS saja tidak cukup (captive portal, dsb).
    try {
      final h = await ref.read(apiClientProvider).health();
      _setOnline(true);
      if (_outdated(h.minSupportedAppVersion)) ref.read(sessionSignalsProvider.notifier).outdated();
      unawaited(trigger());
    } catch (_) {
      _setOnline(false);
    }
  }

  void _setOnline(bool v) {
    state = v;
    ref.read(syncEngineProvider).setOnline(v);
  }

  bool _outdated(String minVersion) {
    final cur = ref.read(bootstrapProvider).appVersion;
    return _compare(cur, minVersion) < 0;
  }

  static int _compare(String a, String b) {
    List<int> parse(String v) => v.split('+').first.split('.').map((p) => int.tryParse(p) ?? 0).toList();
    final x = parse(a), y = parse(b);
    for (var i = 0; i < 3; i++) {
      final d = (i < x.length ? x[i] : 0) - (i < y.length ? y[i] : 0);
      if (d != 0) return d;
    }
    return 0;
  }

  /// Sync setelah mutasi: debounce 800 ms supaya beberapa aksi berurutan jadi satu batch.
  void afterMutation() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 800), () => unawaited(trigger(pull: false)));
  }

  Future<void> trigger({bool pull = true, bool force = false}) async {
    if (ref.read(sessionProvider).value == null) return;
    final engine = ref.read(syncEngineProvider);
    await engine.syncNow(pull: pull, force: force);
    final err = engine.current.lastError;
    if (err != null && err.kind == AppErrorKind.appOutdated) ref.read(sessionSignalsProvider.notifier).outdated();
    state = engine.current.online;
  }
}

final syncControllerProvider = NotifierProvider<SyncController, bool>(SyncController.new);
