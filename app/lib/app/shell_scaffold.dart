import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import 'providers.dart';
import 'role_shell.dart';
import 'session.dart';
import 'sync_controller.dart';

/// Scaffold tab bawah role-adaptive (TAD §8.3) + banner sync.
class ShellScaffold extends ConsumerWidget {
  const ShellScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(currentSessionProvider);
    final tabs = session.shell.tabs;
    final s = S.of(context);
    final currentTab = ShellTab.values[navigationShell.currentIndex];
    final selected = tabs.indexOf(currentTab).clamp(0, tabs.length - 1);
    final online = ref.watch(syncControllerProvider);
    final summary = ref.watch(syncSummaryProvider).value ?? const SyncSummary();
    final status = ref.watch(syncStatusProvider).value;
    final unread = ref.watch(unreadCountProvider);

    String label(ShellTab t) => switch (t) {
          ShellTab.home => s.tabHome,
          ShellTab.tasks => s.tabTasks,
          ShellTab.history => s.tabHistory,
          ShellTab.patrol => s.tabPatrol,
          ShellTab.scan => s.tabScan,
          ShellTab.report => s.tabReport,
          ShellTab.checklist => s.tabChecklist,
          ShellTab.team => s.tabTeam,
          ShellTab.inbox => s.tabInbox,
          ShellTab.profile => s.tabProfile,
        };

    return Scaffold(
      body: Builder(builder: (context) {
        final showBanner = !online || summary.pending + summary.photosPending > 0 || summary.failed > 0 || summary.conflict > 0 || (status?.isBusy ?? false);
        final banner = SyncBanner(
          online: online,
          pending: summary.pending + summary.photosPending,
          failed: summary.failed,
          conflict: summary.conflict,
          syncing: status?.isBusy ?? false,
          onTap: () => context.push('/sync-status'),
        );
        if (!showBanner) return navigationShell;
        // Banner di bawah status bar; halaman di bawahnya tidak perlu padding atas lagi.
        return Column(
          children: [
            ColoredBox(color: online ? BvTokens.warning50 : BvTokens.neutral800, child: SafeArea(bottom: false, child: banner)),
            Expanded(child: MediaQuery.removePadding(context: context, removeTop: true, child: navigationShell)),
          ],
        );
      }),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selected,
        onDestinationSelected: (i) {
          final idx = ShellTab.values.indexOf(tabs[i]);
          navigationShell.goBranch(idx, initialLocation: idx == navigationShell.currentIndex);
        },
        destinations: [
          for (final t in tabs)
            NavigationDestination(
              icon: t == ShellTab.inbox && unread > 0
                  ? Badge(label: Text('$unread'), backgroundColor: BvTokens.critical600, child: Icon(shellTabDefs[t]!.icon))
                  : Icon(shellTabDefs[t]!.icon),
              selectedIcon: Icon(shellTabDefs[t]!.selectedIcon),
              label: label(t),
            ),
        ],
      ),
    );
  }
}

/// Jumlah notifikasi belum dibaca (diisi oleh halaman Inbox / poll ringan).
class UnreadCount extends Notifier<int> {
  @override
  int build() => 0;
  void set(int v) => state = v;
}

final unreadCountProvider = NotifierProvider<UnreadCount, int>(UnreadCount.new);
