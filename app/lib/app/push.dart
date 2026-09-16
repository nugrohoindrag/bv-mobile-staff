import 'dart:async';
import 'dart:io';

import 'package:bv_core/bv_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'env.dart';
import 'providers.dart';
import 'session.dart';

/// Push FCM (TAD §8.7): token → `POST /me/devices`; payload `{notification_id, deep_link}` → route.
/// Aktif hanya bila Firebase terkonfigurasi (google-services.json / GoogleService-Info.plist);
/// tanpa itu `Firebase.initializeApp()` gagal dan push dilewati tanpa mengganggu app.
class PushService {
  PushService(this.ref);
  final Ref ref;

  static final _local = FlutterLocalNotificationsPlugin();
  static const _channel = AndroidNotificationChannel('bv_ops', 'Operasional', description: 'Penugasan, SLA, insiden, sinkronisasi', importance: Importance.high);

  bool _ready = false;
  String? _token;
  StreamSubscription<String>? _tokenSub;
  StreamSubscription<RemoteMessage>? _fgSub;
  StreamSubscription<RemoteMessage>? _openSub;

  /// Dipanggil setelah login. Mengembalikan false bila Firebase tidak tersedia.
  Future<bool> start(GoRouter router) async {
    if (_ready) return true;
    try {
      await Firebase.initializeApp();
    } catch (e) {
      debugPrint('Firebase tidak terkonfigurasi — push dilewati ($e)');
      return false;
    }
    final fm = FirebaseMessaging.instance;
    await fm.requestPermission(alert: true, badge: true, sound: true);
    await _local.initialize(
      const InitializationSettings(android: AndroidInitializationSettings('@mipmap/ic_launcher'), iOS: DarwinInitializationSettings()),
      onDidReceiveNotificationResponse: (r) => _openLink(router, r.payload),
    );
    await _local.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(_channel);

    _token = await fm.getToken();
    if (_token != null) await _register(_token!);
    _tokenSub = fm.onTokenRefresh.listen((t) {
      _token = t;
      unawaited(_register(t));
    });
    // Foreground: tampilkan notifikasi lokal (Android tidak menampilkannya otomatis).
    _fgSub = FirebaseMessaging.onMessage.listen((m) {
      final n = m.notification;
      if (n == null) return;
      unawaited(_local.show(
        m.hashCode,
        n.title,
        n.body,
        NotificationDetails(android: AndroidNotificationDetails(_channel.id, _channel.name, channelDescription: _channel.description, importance: Importance.high, priority: Priority.high)),
        payload: m.data['deep_link'] as String?,
      ));
    });
    _openSub = FirebaseMessaging.onMessageOpenedApp.listen((m) => _openLink(router, m.data['deep_link'] as String?));
    final initial = await fm.getInitialMessage();
    if (initial != null) _openLink(router, initial.data['deep_link'] as String?);
    _ready = true;
    return true;
  }

  Future<void> _register(String token) async {
    try {
      final b = ref.read(bootstrapProvider);
      await ref.read(authApiProvider).registerDevice(DeviceInput(
            platform: Platform.isIOS ? 'ios' : 'android',
            token: token,
            deviceId: b.deviceId,
            appVersion: b.appVersion,
          ));
    } catch (e) {
      debugPrint('registerDevice gagal: $e');
    }
  }

  /// Hapus token di server saat logout (TAD §8.7).
  Future<void> stop() async {
    await _tokenSub?.cancel();
    await _fgSub?.cancel();
    await _openSub?.cancel();
    if (_token != null) {
      try {
        await ref.read(authApiProvider).unregisterDevice(_token!);
      } catch (_) {}
    }
    _ready = false;
  }

  static void _openLink(GoRouter router, String? link) {
    if (link == null || link.isEmpty) return;
    final u = Uri.tryParse(link);
    if (u == null) return;
    final path = u.scheme == 'buildingvision' ? '/${u.host}${u.path}' : (u.host == AppEnv.appLinkHost || u.host.isEmpty ? u.path : null);
    if (path != null && path.isNotEmpty) router.push(path);
  }
}

final pushServiceProvider = Provider<PushService>((ref) {
  final p = PushService(ref);
  ref.listen(sessionProvider, (prev, next) {
    if (next.value == null && prev?.value != null) unawaited(p.stop());
  });
  return p;
});
