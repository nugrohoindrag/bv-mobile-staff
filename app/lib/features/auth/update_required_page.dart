import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/providers.dart';
import '../../l10n/app_localizations.dart';

/// Layar update wajib (TAD §8.8): `min_supported_app_version` > versi app.
class UpdateRequiredPage extends ConsumerWidget {
  const UpdateRequiredPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final version = ref.watch(bootstrapProvider).appVersion;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.system_update, size: 72, color: Colors.teal),
            const SizedBox(height: 16),
            Text(s.updateRequired, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(s.updateRequiredBody, textAlign: TextAlign.center),
            const SizedBox(height: 4),
            Text('Versi terpasang: $version', textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            BvPrimaryButton(
              label: 'Buka Play Store',
              icon: Icons.shop,
              onPressed: () => launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=id.buildingvision.bv_staff'), mode: LaunchMode.externalApplication),
            ),
          ],
        ),
      ),
    );
  }
}
