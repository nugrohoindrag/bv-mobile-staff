import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/env.dart';
import '../../app/providers.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';

/// Profil: identitas, role, status sync, ganti sandi, keluar.
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final session = ref.watch(currentSessionProvider);
    final me = session.me;
    final boot = ref.watch(bootstrapProvider);
    final summary = ref.watch(syncSummaryProvider).value ?? const SyncSummary();
    final status = ref.watch(syncStatusProvider).value;
    final online = ref.watch(syncControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          SectionCard(
            child: Row(children: [
              BvAvatar(name: me.fullName, size: 56, border: false),
              const SizedBox(width: 14),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(me.fullName, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18)),
                  Text(session.shell.role.labelId, style: const TextStyle(color: BvTokens.brand600, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 6),
                  Wrap(spacing: 6, runSpacing: 6, children: [for (final r in me.roles) BvBadge(label: humanize(r), semantic: Semantic.info, dense: true)]),
                ]),
              ),
            ]),
          ),
          const SectionHeader(title: 'Property & profile', dotColor: BvTokens.brand500),
          const _PropertyProfileCard(),
          const SectionHeader(title: 'Sinkronisasi', dotColor: BvTokens.info600),
          SectionCard(
            padding: EdgeInsets.zero,
            child: Column(children: [
              ListTile(
                leading: Icon(online ? Icons.cloud_done_outlined : Icons.cloud_off_outlined, color: online ? BvTokens.success600 : BvTokens.neutral500),
                title: Text(online ? 'Online' : 'Offline'),
                subtitle: Text('Pull terakhir: ${status?.lastPullAt == null ? '—' : BvFormat.relative(status!.lastPullAt!)}'),
                trailing: TextButton(onPressed: () => ref.read(syncControllerProvider.notifier).trigger(force: true), child: Text(s.syncNow)),
              ),
              ListTile(
                leading: const Icon(Icons.cloud_upload_outlined),
                title: Text('${summary.pending} mutasi · ${summary.photosPending} foto menunggu'),
                subtitle: Text('${summary.failed} gagal · ${summary.conflict} konflik'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push('/sync-status'),
              ),
            ]),
          ),
          const SectionHeader(title: 'Akun', dotColor: BvTokens.neutral400),
          SectionCard(
            padding: EdgeInsets.zero,
            child: Column(children: [
              ListTile(leading: const Icon(Icons.lock_outline), title: const Text('Ganti kata sandi'), trailing: const Icon(Icons.chevron_right), onTap: () => context.push('/profile/password')),
              ListTile(leading: const Icon(Icons.refresh), title: const Text('Muat ulang profil & permission'), onTap: () async {
                try {
                  await ref.read(sessionProvider.notifier).refreshMe();
                  if (context.mounted) showInfo(context, 'Profil diperbarui');
                } catch (e) {
                  if (context.mounted) showError(context, e);
                }
              }),
              ListTile(
                leading: const Icon(Icons.logout, color: BvTokens.critical600),
                title: Text(s.logout, style: const TextStyle(color: BvTokens.critical600, fontWeight: FontWeight.w700)),
                subtitle: summary.hasPending ? const Text('Ada perubahan belum tersinkron — akan hilang bila keluar', style: TextStyle(color: BvTokens.warning700, fontSize: 12)) : null,
                onTap: () async {
                  final ok = await showConfirmDialog(context, title: 'Keluar dari aplikasi?', message: summary.hasPending ? 'Masih ada ${summary.pending + summary.photosPending} perubahan yang belum tersinkron dan akan hilang.' : null, confirm: s.logout, danger: true);
                  if (ok) await ref.read(sessionProvider.notifier).logout();
                },
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('BuildingVision Staff ${boot.appVersion} · ${AppEnv.flavor}\nDevice ${boot.deviceId.substring(0, 8)}…', textAlign: TextAlign.center, style: const TextStyle(color: BvTokens.neutral400, fontSize: 11)),
          ),
        ],
      ),
    );
  }
}

/// Profile property (Hotel / Apartment / Office) + terminologi & capability aktif (PRD P1 v1.3 §3; NC v2.0 §7) —
/// diambil dari `GET /properties/{id}/capabilities` untuk property dalam scope akun; presentasi saja, entity tetap kanonik.
final propertyContextProvider = FutureProvider.family<PropertyContext?, String>((ref, propertyId) async {
  try {
    return await ref.watch(profileApiProvider).propertyContext(propertyId);
  } on AppError catch (_) {
    return null;
  }
});

class _PropertyProfileCard extends ConsumerWidget {
  const _PropertyProfileCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(currentSessionProvider);
    final ids = session.me.properties.map((p) => p.propertyId).whereType<String>().toSet().toList();
    if (ids.isEmpty) {
      return const SectionCard(child: Text('Akses seluruh property organisasi.', style: TextStyle(color: BvTokens.neutral500)));
    }
    return SectionCard(
      padding: EdgeInsets.zero,
      child: Column(children: [
        for (final id in ids.take(5))
          ref.watch(propertyContextProvider(id)).when(
                loading: () => const ListTile(leading: Icon(Icons.apartment_outlined), title: Text('Memuat property…')),
                error: (_, _) => const SizedBox.shrink(),
                data: (ctx) => ctx == null
                    ? const SizedBox.shrink()
                    : ListTile(
                        leading: Icon(switch (ctx.profile) { 'hotel' => Icons.hotel_outlined, 'apartment' => Icons.apartment_outlined, _ => Icons.business_outlined }, color: BvTokens.brand500),
                        title: Text(ctx.propertyName.isEmpty ? id : ctx.propertyName, style: const TextStyle(fontWeight: FontWeight.w600)),
                        subtitle: Text('Profile ${ctx.profileLabel} · ${ctx.term('customer')} · ${ctx.term('request')}\n${ctx.capabilities.length} capability aktif', style: const TextStyle(fontSize: 12)),
                        isThreeLine: true,
                      ),
              ),
      ]),
    );
  }
}
