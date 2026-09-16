import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/background_sync.dart';
import 'app/providers.dart';
import 'app/push.dart';
import 'app/router.dart';
import 'app/session.dart';
import 'app/sync_controller.dart';
import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id');
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light));
  final boot = await Bootstrap.load();
  await BackgroundSync.init();
  runApp(ProviderScope(
    overrides: [bootstrapProvider.overrideWithValue(boot)],
    child: const BvStaffApp(),
  ));
}

class BvStaffApp extends ConsumerWidget {
  const BvStaffApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(syncControllerProvider); // aktifkan pemicu sync (lifecycle, konektivitas, periodik)
    final router = ref.watch(routerProvider);
    // Setelah login: jadwalkan background sync & daftarkan push (bila Firebase terkonfigurasi).
    ref.listen(sessionProvider, (prev, next) {
      if (next.value != null && prev?.value == null) {
        final deviceId = ref.read(bootstrapProvider).deviceId;
        BackgroundSync.schedule(deviceId);
        ref.read(pushServiceProvider).start(router);
      } else if (next.value == null && prev?.value != null) {
        BackgroundSync.cancel();
      }
    });
    return MaterialApp.router(
      title: 'BuildingVision',
      debugShowCheckedModeBanner: false,
      theme: BvTheme.light(),
      routerConfig: router,
      locale: const Locale('id'),
      supportedLocales: S.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
