import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Tab bawah (TAD §8.3 / PRD §20). Konfigurasi = data, bukan `switch` tersebar.
enum ShellTab { home, tasks, history, patrol, scan, report, checklist, team, inbox, profile }

class ShellTabDef {
  const ShellTabDef(this.tab, {required this.icon, required this.selectedIcon, required this.path});
  final ShellTab tab;
  final IconData icon;
  final IconData selectedIcon;
  final String path;
}

const shellTabDefs = <ShellTab, ShellTabDef>{
  ShellTab.home: ShellTabDef(ShellTab.home, icon: Icons.home_outlined, selectedIcon: Icons.home, path: '/home'),
  ShellTab.tasks: ShellTabDef(ShellTab.tasks, icon: Icons.checklist_rtl_outlined, selectedIcon: Icons.checklist_rtl, path: '/tasks'),
  ShellTab.history: ShellTabDef(ShellTab.history, icon: Icons.history, selectedIcon: Icons.history, path: '/history'),
  ShellTab.patrol: ShellTabDef(ShellTab.patrol, icon: Icons.shield_outlined, selectedIcon: Icons.shield, path: '/patrol'),
  ShellTab.scan: ShellTabDef(ShellTab.scan, icon: Icons.qr_code_scanner, selectedIcon: Icons.qr_code_scanner, path: '/scan'),
  ShellTab.report: ShellTabDef(ShellTab.report, icon: Icons.report_gmailerrorred_outlined, selectedIcon: Icons.report, path: '/report'),
  ShellTab.checklist: ShellTabDef(ShellTab.checklist, icon: Icons.fact_check_outlined, selectedIcon: Icons.fact_check, path: '/checklist'),
  ShellTab.team: ShellTabDef(ShellTab.team, icon: Icons.groups_outlined, selectedIcon: Icons.groups, path: '/team'),
  ShellTab.inbox: ShellTabDef(ShellTab.inbox, icon: Icons.mail_outline, selectedIcon: Icons.mail, path: '/inbox'),
  ShellTab.profile: ShellTabDef(ShellTab.profile, icon: Icons.person_outline, selectedIcon: Icons.person, path: '/profile'),
};

/// Tab & primary action per role shell.
class RoleShellConfig {
  const RoleShellConfig({required this.role, required this.tabs, required this.workKinds, required this.domain});
  final ShellRole role;
  final List<ShellTab> tabs;

  /// Jenis work item yang tampil di Home/Tasks role ini (kolom `kind` lokal).
  final Set<String> workKinds;
  final Domain domain;

  static RoleShellConfig forRoles(List<String> roleCodes) {
    final role = resolveShellRole(roleCodes);
    final domain = resolveDomain(roleCodes);
    return switch (role) {
      ShellRole.technician => RoleShellConfig(
          role: role,
          domain: Domain.engineering,
          tabs: const [ShellTab.home, ShellTab.history, ShellTab.inbox, ShellTab.profile],
          workKinds: const {'task', 'work_order', 'inspection'},
        ),
      ShellRole.securityOfficer => RoleShellConfig(
          role: role,
          domain: Domain.security,
          tabs: const [ShellTab.home, ShellTab.patrol, ShellTab.report, ShellTab.inbox, ShellTab.profile],
          workKinds: const {'patrol', 'task'},
        ),
      ShellRole.housekeepingStaff => RoleShellConfig(
          role: role,
          domain: Domain.housekeeping,
          tabs: const [ShellTab.home, ShellTab.tasks, ShellTab.checklist, ShellTab.report, ShellTab.profile],
          workKinds: const {'cleaning', 'task', 'inspection'},
        ),
      ShellRole.supervisor => RoleShellConfig(
          role: role,
          domain: domain,
          tabs: const [ShellTab.home, ShellTab.tasks, ShellTab.team, ShellTab.inbox, ShellTab.profile],
          workKinds: const {'task', 'work_order', 'cleaning', 'patrol', 'inspection'},
        ),
    };
  }
}
