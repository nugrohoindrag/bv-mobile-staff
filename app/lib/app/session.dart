import 'dart:convert';

import 'package:bv_core/bv_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers.dart';
import 'role_shell.dart';

/// Sesi login: identitas + permission + role shell.
class Session {
  const Session({required this.me, required this.shell});
  final Me me;
  final RoleShellConfig shell;

  PermissionSet get permissions => PermissionSet(me.permissions);
  bool can(String p) => permissions.can(p);
  bool get isSupervisor => shell.role == ShellRole.supervisor;
}

/// `null` = belum login. Restore dari token + cache `me` (offline-friendly), refresh `/me` bila online.
class SessionController extends AsyncNotifier<Session?> {
  static const _meKey = 'session.me';

  @override
  Future<Session?> build() async {
    ref.listen(sessionSignalsProvider, (prev, next) {
      if (next.expired && prev?.expired != true) _onExpired();
    });
    final tokens = await ref.read(tokenStoreProvider).read();
    if (tokens == null) return null;
    final prefs = ref.read(bootstrapProvider).prefs;
    final cached = prefs.getString(_meKey);
    Session? session;
    if (cached != null) {
      session = _fromMe(Me.fromJson(jsonDecode(cached) as Map<String, dynamic>));
    }
    // Refresh identitas di latar; jika offline tetap pakai cache.
    try {
      final me = await ref.read(authApiProvider).me();
      await prefs.setString(_meKey, jsonEncode(me.toJson()));
      session = _fromMe(me);
    } on AppError catch (e) {
      if (e.isAuth) {
        await _clearLocal();
        return null;
      }
    }
    return session;
  }

  Session _fromMe(Me me) => Session(me: me, shell: RoleShellConfig.forRoles(me.roles));

  Future<void> login(String identifier, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final res = await ref.read(authApiProvider).login(identifier: identifier, password: password);
      final prefs = ref.read(bootstrapProvider).prefs;
      await prefs.setString(_meKey, jsonEncode(res.user.toJson()));
      ref.read(sessionSignalsProvider.notifier).reset();
      // Bundle awal (full) — jangan blokir login bila gagal jaringan.
      try {
        await ref.read(syncEngineProvider).pull(full: true);
      } on AppError catch (_) {}
      return _fromMe(res.user);
    });
  }

  Future<void> logout() async {
    try {
      await ref.read(authApiProvider).logout();
    } catch (_) {
      await ref.read(tokenStoreProvider).clear();
    }
    await _clearLocal();
    state = const AsyncData(null);
  }

  Future<void> _onExpired() async {
    await _clearLocal();
    state = const AsyncData(null);
  }

  Future<void> _clearLocal() async {
    await ref.read(bootstrapProvider).prefs.remove(_meKey);
    await ref.read(localRepoProvider).clearAll();
  }

  /// Muat ulang `/me` (mis. setelah perubahan role di web).
  Future<void> refreshMe() async {
    final me = await ref.read(authApiProvider).me();
    await ref.read(bootstrapProvider).prefs.setString(_meKey, jsonEncode(me.toJson()));
    state = AsyncData(_fromMe(me));
  }
}

final sessionProvider = AsyncNotifierProvider<SessionController, Session?>(SessionController.new);

/// Shortcut sinkron untuk widget yang sudah dijamin berada di dalam sesi.
final currentSessionProvider = Provider<Session>((ref) {
  final s = ref.watch(sessionProvider).value;
  if (s == null) throw StateError('Belum login');
  return s;
});
