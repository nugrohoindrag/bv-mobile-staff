/// Role shell mobile (PRD §20, TAD §8.3): satu binary, tab & primary action mengikuti role utama.
enum ShellRole { technician, securityOfficer, housekeepingStaff, supervisor }

/// Domain operasional untuk header/ilustrasi dan filter Today.
enum Domain { engineering, security, housekeeping, operations }

/// Menentukan role shell dari daftar `role_code` (`/me.roles`). Worker menang atas supervisor
/// hanya jika user tidak punya role supervisor/manager sama sekali.
ShellRole resolveShellRole(List<String> roleCodes) {
  final codes = roleCodes.map((e) => e.toLowerCase()).toSet();
  const supervisorLike = {
    'organization_admin',
    'property_manager',
    'building_manager',
    'operations_manager',
    'engineering_manager',
    'engineering_supervisor',
    'security_manager',
    'security_supervisor',
    'housekeeping_manager',
    'housekeeping_supervisor',
  };
  if (codes.any(supervisorLike.contains)) return ShellRole.supervisor;
  if (codes.contains('security_officer')) return ShellRole.securityOfficer;
  if (codes.contains('housekeeping_staff')) return ShellRole.housekeepingStaff;
  return ShellRole.technician;
}

Domain resolveDomain(List<String> roleCodes) {
  final codes = roleCodes.map((e) => e.toLowerCase());
  if (codes.any((c) => c.startsWith('security'))) return Domain.security;
  if (codes.any((c) => c.startsWith('housekeeping'))) return Domain.housekeeping;
  if (codes.any((c) => c.startsWith('engineering') || c == 'technician')) return Domain.engineering;
  return Domain.operations;
}

extension ShellRoleX on ShellRole {
  String get labelId => switch (this) {
        ShellRole.technician => 'Technician',
        ShellRole.securityOfficer => 'Security Officer',
        ShellRole.housekeepingStaff => 'Housekeeping Staff',
        ShellRole.supervisor => 'Supervisor',
      };

  /// Primary action (PRD §6.2).
  String get primaryActionId => switch (this) {
        ShellRole.technician => 'Mulai Task',
        ShellRole.securityOfficer => 'Mulai Patrol',
        ShellRole.housekeepingStaff => 'Mulai Cleaning',
        ShellRole.supervisor => 'Tugaskan',
      };
}

extension DomainX on Domain {
  String get labelId => switch (this) {
        Domain.engineering => 'Engineering',
        Domain.security => 'Security',
        Domain.housekeeping => 'Housekeeping',
        Domain.operations => 'Operations',
      };
}
