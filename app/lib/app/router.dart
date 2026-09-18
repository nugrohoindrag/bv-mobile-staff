import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/login_page.dart';
import '../features/auth/update_required_page.dart';
import '../features/findings/add_finding_page.dart';
import '../features/findings/finding_detail_page.dart';
import '../features/home/home_page.dart';
import '../features/inbox/inbox_page.dart';
import '../features/incidents/incident_detail_page.dart';
import '../features/incidents/report_incident_page.dart';
import '../features/patrol/patrol_detail_page.dart';
import '../features/patrol/patrol_list_page.dart';
import '../features/profile/change_password_page.dart';
import '../features/profile/profile_page.dart';
import '../features/profile/sync_status_page.dart';
import '../features/scan/asset_page.dart';
import '../features/scan/scan_page.dart';
import '../features/tasks/activity_report_page.dart';
import '../features/tasks/checklist_runner_page.dart';
import '../features/tasks/schedule_list_page.dart';
import '../features/tasks/task_detail_page.dart';
import '../features/tasks/tasks_page.dart';
import '../features/team/team_page.dart';
import '../features/work_orders/create_task_page.dart';
import '../features/work_orders/create_work_order_page.dart';
import '../features/work_orders/parts_usage_page.dart';
import 'providers.dart';
import 'role_shell.dart';
import 'session.dart';
import 'shell_scaffold.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

/// Router + guard auth (TAD §8.7: deep link memakai route yang sama dengan navigasi internal).
final routerProvider = Provider<GoRouter>((ref) {
  final refresh = ValueNotifier<int>(0);
  ref.listen(sessionProvider, (_, _) => refresh.value++);
  ref.listen(sessionSignalsProvider, (_, _) => refresh.value++);
  ref.onDispose(refresh.dispose);

  final tabs = ShellTab.values;
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/splash',
    refreshListenable: refresh,
    debugLogDiagnostics: false,
    redirect: (context, state) {
      final signals = ref.read(sessionSignalsProvider);
      final session = ref.read(sessionProvider);
      final loc = state.matchedLocation;
      if (signals.outdated) return loc == '/update-required' ? null : '/update-required';
      if (session.isLoading) return loc == '/splash' ? null : '/splash';
      final loggedIn = session.value != null;
      if (!loggedIn) return loc == '/login' ? null : '/login';
      if (loc == '/login' || loc == '/splash') return '/home';
      // Tab yang tidak ada di role ini → Home.
      final tab = _tabForLocation(loc);
      if (tab != null && !session.value!.shell.tabs.contains(tab)) return '/home';
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (_, _) => const _SplashPage()),
      GoRoute(path: '/login', builder: (_, _) => const LoginPage()),
      GoRoute(path: '/update-required', builder: (_, _) => const UpdateRequiredPage()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => ShellScaffold(navigationShell: shell),
        branches: [
          for (final t in tabs)
            StatefulShellBranch(routes: [
              GoRoute(path: shellTabDefs[t]!.path, builder: (_, _) => _tabPage(t)),
            ]),
        ],
      ),
      // Halaman penuh (tanpa bottom bar) — juga target deep link push.
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/tasks/:id', builder: (_, s) => TaskDetailPage(objectType: 'task', id: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/work-orders/:id', builder: (_, s) => TaskDetailPage(objectType: 'work_order', id: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/tasks/:id/checklist', builder: (_, s) => ChecklistRunnerPage(objectType: 'task', objectId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/work-orders/:id/checklist', builder: (_, s) => ChecklistRunnerPage(objectType: 'work_order', objectId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/tasks/:id/activity', builder: (_, s) => ActivityReportPage(objectType: 'task', objectId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/work-orders/:id/activity', builder: (_, s) => ActivityReportPage(objectType: 'work_order', objectId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/work-orders/:id/parts', builder: (_, s) => PartsUsagePage(workOrderId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/schedule/:kind', builder: (_, s) => ScheduleListPage(kind: ScheduleKindX.parse(s.pathParameters['kind']!))),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/patrol/:id', builder: (_, s) => PatrolDetailPage(taskId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/assets/:id', builder: (_, s) => AssetPage(assetId: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/new/work-order', builder: (_, s) => CreateWorkOrderPage(assetId: s.uri.queryParameters['asset_id'], locationId: s.uri.queryParameters['location_id'], sourceType: s.uri.queryParameters['source_type'], sourceId: s.uri.queryParameters['source_id'])),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/new/incident', builder: (_, s) => ReportIncidentPage(taskId: s.uri.queryParameters['task_id'], locationId: s.uri.queryParameters['location_id'], panic: s.uri.queryParameters['panic'] == '1')),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/new/finding', builder: (_, s) => AddFindingPage(objectType: s.uri.queryParameters['object_type']!, objectId: s.uri.queryParameters['object_id']!, locationId: s.uri.queryParameters['location_id'], assetId: s.uri.queryParameters['asset_id'])),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/scan/full', builder: (_, s) => ScanPage(patrolTaskId: s.uri.queryParameters['patrol_task_id'], fullScreen: true)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/sync-status', builder: (_, _) => const SyncStatusPage()),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/profile/password', builder: (_, _) => const ChangePasswordPage()),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/new/task', builder: (_, _) => const CreateTaskPage()),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/incidents/:id', builder: (_, s) => IncidentDetailPage(id: s.pathParameters['id']!)),
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/findings/:id', builder: (_, s) => FindingDetailPage(id: s.pathParameters['id']!)),
      // QR dari scanner bawaan HP: https://bv.link/q/{code} → halaman scan menangani resolve
      GoRoute(parentNavigatorKey: rootNavigatorKey, path: '/q/:code', builder: (_, s) => ScanPage(fullScreen: true, initialCode: s.pathParameters['code'])),
    ],
  );
});

ShellTab? _tabForLocation(String loc) {
  for (final e in shellTabDefs.entries) {
    if (loc == e.value.path || loc.startsWith('${e.value.path}/')) return e.key;
  }
  return null;
}

Widget _tabPage(ShellTab t) => switch (t) {
      ShellTab.home => const HomePage(),
      ShellTab.tasks => const ScheduleListPage(kind: ScheduleKind.task, embedded: true),
      ShellTab.history => const ScheduleListPage(kind: ScheduleKind.history, embedded: true),
      ShellTab.patrol => const PatrolListPage(),
      ShellTab.scan => const ScanPage(),
      ShellTab.report => const ReportHubPage(),
      ShellTab.checklist => const TasksPage(checklistMode: true),
      ShellTab.team => const TeamPage(),
      ShellTab.inbox => const InboxPage(),
      ShellTab.profile => const ProfilePage(),
    };

class _SplashPage extends StatelessWidget {
  const _SplashPage();
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: CircularProgressIndicator()));
}
