import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/role_shell.dart';
import '../../app/session.dart';
import '../../app/sync_controller.dart';
import '../../shared/dialogs.dart';
import '../tasks/work_providers.dart';
import 'work_item_list.dart';

/// Home (Figma "Home UI Staff"): header ilustrasi, panel ringkasan, menu 3×2, seksi
/// "Pekerjaan Preventive Hari Ini" & "Pekerjaan Corrective Hari Ini" (maks 3 + Lihat Semua).
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(currentSessionProvider);
    final shell = session.shell;
    final items = ref.watch(localWorkItemsProvider(shell.workKinds));
    final summary = ref.watch(syncSummaryProvider).value ?? const SyncSummary();
    final all = (items.value ?? const <WorkItem>[]).where((i) => i.isOpen).toList();
    final sections = _sectionsFor(shell, all);
    final inProgress = all.where((i) => i.status == 'in_progress').length;
    final overdue = all.where((i) => i.isOverdue).length;
    final today = BvFormat.date(DateTime.now());

    const headerHeight = 210.0;
    const overlap = 56.0;
    final topInset = MediaQuery.paddingOf(context).top;
    final summaryPanel = Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(BvTokens.radiusLg),
        boxShadow: const [BoxShadow(color: Color(0x1F000000), blurRadius: 16, offset: Offset(0, 6))],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 18, 24, 12),
            child: Row(
              children: [
                const Text(
                  'Pekerjaan Hari Ini',
                  style: TextStyle(color: BvTokens.brand500, fontWeight: FontWeight.w700, fontSize: 15),
                ),
                const Spacer(),
                Text(
                  '${all.length}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: BvTokens.neutral900),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 20, endIndent: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: TodayCounter(label: 'Baru', value: all.where((i) => i.status == 'new' || i.status == 'assigned' || i.status == 'scheduled').length, color: BvTokens.critical600),
                ),
                Expanded(
                  child: TodayCounter(label: 'Berjalan', value: inProgress, color: BvTokens.success600),
                ),
                Expanded(
                  child: TodayCounter(label: 'Overdue', value: overdue, color: overdue > 0 ? BvTokens.warning600 : BvTokens.neutral400),
                ),
                Expanded(
                  child: TodayCounter(
                    label: 'Pending Sync',
                    value: summary.pending + summary.photosPending,
                    color: summary.failed > 0 ? BvTokens.critical600 : BvTokens.info600,
                    onTap: () => context.push('/sync-status'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return RefreshIndicator(
      onRefresh: () => ref.read(syncControllerProvider.notifier).trigger(force: true),
      edgeOffset: 120,
      child: CustomScrollView(
        slivers: [
          // Header + panel ringkasan yang "melayang" menimpa header + menu. Dipakai Stack dengan padding
          // atas (bukan Transform.translate) agar tinggi layout = tinggi visual: tidak ada ruang kosong
          // sisa dan jarak antar seksi konsisten.
          SliverToBoxAdapter(
            child: Stack(
              children: [
                DomainHeader(
                  domain: shell.domain,
                  userName: session.me.fullName,
                  height: headerHeight,
                  title: shell.role == ShellRole.supervisor ? '${shell.domain.labelId} · Supervisor' : shell.domain.labelId,
                ),
                Padding(
                  padding: EdgeInsets.only(top: headerHeight + topInset - overlap),
                  child: Column(
                    children: [
                      summaryPanel,
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: _MenuGrid(items: _menu(context, ref, shell, session)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          for (final sec in sections) ...[
            SliverToBoxAdapter(
              child: SectionHeader(title: sec.title, trailing: today, dotColor: sec.color, padding: const EdgeInsets.fromLTRB(20, 4, 20, 12)),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              sliver: items.isLoading && all.isEmpty
                  ? const SliverToBoxAdapter(child: SkeletonCard())
                  : sec.items.isEmpty
                  ? SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 22),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
                        child: Center(
                          child: Text(sec.empty, style: const TextStyle(color: BvTokens.neutral500)),
                        ),
                      ),
                    )
                  : WorkItemSliverList(items: sec.items.take(3).toList()),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: TextButton(
                  onPressed: () => context.push(sec.route),
                  child: const Text('Lihat Semua Pekerjaan..', style: TextStyle(color: BvTokens.neutral500, fontSize: 13)),
                ),
              ),
            ),
          ],
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }

  List<_HomeSection> _sectionsFor(RoleShellConfig shell, List<WorkItem> all) {
    bool isPreventive(WorkItem i) => i.maintenanceScheduleId != null || i.type == 'preventive' || i.type == 'inspection';
    return switch (shell.role) {
      ShellRole.technician => [
        _HomeSection('Pekerjaan Preventive Hari Ini', BvTokens.success600, all.where(isPreventive).toList(), '/schedule/preventive', 'Belum ada jadwal preventive hari ini.'),
        _HomeSection('Pekerjaan Corrective Hari Ini', BvTokens.critical600, all.where((i) => !isPreventive(i)).toList(), '/schedule/corrective', 'Belum ada pekerjaan corrective hari ini.'),
      ],
      ShellRole.securityOfficer => [
        _HomeSection('Patrol Hari Ini', BvTokens.success600, all.where((i) => i.isPatrol).toList(), '/patrol', 'Belum ada patrol hari ini.'),
        _HomeSection('Task Lain Hari Ini', BvTokens.info600, all.where((i) => !i.isPatrol).toList(), '/schedule/task', 'Tidak ada task lain.'),
      ],
      ShellRole.housekeepingStaff => [
        _HomeSection('Pekerjaan Cleaning Hari Ini', BvTokens.success600, all.where((i) => i.isCleaning).toList(), '/schedule/cleaning', 'Belum ada jadwal cleaning hari ini.'),
        _HomeSection('Task Lain Hari Ini', BvTokens.info600, all.where((i) => !i.isCleaning).toList(), '/schedule/task', 'Tidak ada task lain.'),
      ],
      ShellRole.supervisor => [
        _HomeSection('Pekerjaan Tim Hari Ini', BvTokens.success600, all, '/schedule/task', 'Belum ada pekerjaan tim hari ini.'),
        _HomeSection(
          'Perlu Perhatian',
          BvTokens.critical600,
          all.where((i) => i.isOverdue || i.status == 'completed' || i.assignee.userId == null).toList(),
          '/team',
          'Tidak ada yang perlu perhatian.',
        ),
      ],
    };
  }

  List<QuickMenuItem> _menu(BuildContext context, WidgetRef ref, RoleShellConfig shell, Session session) {
    void soon(String name) => showInfo(context, '$name membutuhkan izin buat work order — hubungi supervisor.');
    final more = QuickMenuItem(label: 'More', icon: Icons.grid_view_rounded, color: const Color(0xFF78909C), onTap: () => _showMore(context, session));
    return switch (shell.role) {
      ShellRole.technician => [
        QuickMenuItem(label: 'Preventive', icon: Icons.handyman_outlined, color: const Color(0xFF5C6BC0), onTap: () => context.push('/schedule/preventive')),
        QuickMenuItem(label: 'Corrective', icon: Icons.build_circle_outlined, color: const Color(0xFFEF5350), onTap: () => context.push('/schedule/corrective')),
        QuickMenuItem(
          label: 'Create Tiket',
          icon: Icons.confirmation_number_outlined,
          color: const Color(0xFF26A69A),
          onTap: session.can(Perm.workOrdersCreate) ? () => context.push('/new/work-order') : () => soon('Create Tiket'),
        ),
        // Tenant Relation: WO yang bersumber dari service request tenant (source_type=service_request)
        QuickMenuItem(label: 'Tenant Relation', icon: Icons.handshake_outlined, color: const Color(0xFFFFCA28), onTap: () => context.push('/schedule/tenant')),
        QuickMenuItem(label: 'News', icon: Icons.newspaper_outlined, color: const Color(0xFF26A69A), onTap: () => context.go('/inbox')),
        more,
      ],
      ShellRole.securityOfficer => [
        QuickMenuItem(label: 'Patrol', icon: Icons.shield_outlined, color: const Color(0xFFEF5350), onTap: () => context.push('/patrol')),
        QuickMenuItem(label: 'Report', icon: Icons.report_gmailerrorred_outlined, color: const Color(0xFFFF7043), onTap: () => context.push('/new/incident')),
        QuickMenuItem(label: 'Scan QR', icon: Icons.qr_code_scanner, color: const Color(0xFF26A69A), onTap: () => context.push('/scan/full')),
        // Panic: lapor insiden severity kritis (kategori keamanan) — form terisi awal, konfirmasi sebelum kirim
        QuickMenuItem(label: 'Panic Button', icon: Icons.warning_amber_rounded, color: const Color(0xFFE53935), onTap: () => context.push('/new/incident?panic=1')),
        QuickMenuItem(label: 'News', icon: Icons.newspaper_outlined, color: const Color(0xFF26A69A), onTap: () => context.go('/inbox')),
        more,
      ],
      ShellRole.housekeepingStaff => [
        QuickMenuItem(label: 'Cleaning', icon: Icons.cleaning_services_outlined, color: const Color(0xFF26C6DA), onTap: () => context.push('/schedule/cleaning')),
        QuickMenuItem(label: 'Checklist', icon: Icons.fact_check_outlined, color: const Color(0xFF5C6BC0), onTap: () => context.go('/checklist')),
        QuickMenuItem(label: 'Report', icon: Icons.flag_outlined, color: const Color(0xFFFFA726), onTap: () => context.go('/report')),
        QuickMenuItem(label: 'Scan Area', icon: Icons.qr_code_scanner, color: const Color(0xFF26A69A), onTap: () => context.push('/scan/full')),
        QuickMenuItem(label: 'News', icon: Icons.newspaper_outlined, color: const Color(0xFF26A69A), onTap: () => context.go('/inbox')),
        more,
      ],
      ShellRole.supervisor => [
        QuickMenuItem(label: 'Tugaskan', icon: Icons.assignment_ind_outlined, color: const Color(0xFF5C6BC0), onTap: () => context.go('/team')),
        QuickMenuItem(label: 'Verifikasi', icon: Icons.verified_outlined, color: const Color(0xFF66BB6A), onTap: () => context.go('/team?tab=verify')),
        QuickMenuItem(label: 'Buat WO', icon: Icons.build_outlined, color: const Color(0xFFEF5350), onTap: () => context.push('/new/work-order')),
        QuickMenuItem(label: 'Buat Task', icon: Icons.checklist_rtl, color: const Color(0xFF26A69A), onTap: () => context.push('/new/task')),
        QuickMenuItem(label: 'Scan QR', icon: Icons.qr_code_scanner, color: const Color(0xFF26C6DA), onTap: () => context.push('/scan/full')),
        more,
      ],
    };
  }

  void _showMore(BuildContext context, Session session) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.qr_code_scanner),
              title: const Text('Scan QR (aset / checkpoint / area)'),
              onTap: () {
                Navigator.pop(ctx);
                context.push('/scan/full');
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History pekerjaan'),
              onTap: () {
                Navigator.pop(ctx);
                context.go('/history');
              },
            ),
            if (session.can(Perm.incidentsCreate))
              ListTile(
                leading: const Icon(Icons.report_gmailerrorred_outlined),
                title: const Text('Laporkan Insiden'),
                onTap: () {
                  Navigator.pop(ctx);
                  context.push('/new/incident');
                },
              ),
            ListTile(
              leading: const Icon(Icons.sync),
              title: const Text('Status sinkronisasi'),
              onTap: () {
                Navigator.pop(ctx);
                context.push('/sync-status');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Akun'),
              onTap: () {
                Navigator.pop(ctx);
                context.go('/profile');
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _HomeSection {
  const _HomeSection(this.title, this.color, this.items, this.route, this.empty);
  final String title;
  final Color color;
  final List<WorkItem> items;
  final String route;
  final String empty;
}

/// Grid menu 3 kolom (Figma): kartu putih, ikon bulat gradien, label.
class _MenuGrid extends StatelessWidget {
  const _MenuGrid({required this.items});
  final List<QuickMenuItem> items;

  @override
  Widget build(BuildContext context) {
    final rows = <List<QuickMenuItem>>[];
    for (var i = 0; i < items.length; i += 3) {
      rows.add(items.sublist(i, (i + 3).clamp(0, items.length)));
    }
    return Column(
      children: [
        for (var i = 0; i < rows.length; i++) ...[
          if (i > 0) const SizedBox(height: 12),
          QuickMenuGrid(
            items: [
              ...rows[i],
              for (var j = rows[i].length; j < 3; j++) const QuickMenuItem(label: '', icon: Icons.circle, color: Colors.transparent),
            ],
          ),
        ],
      ],
    );
  }
}
