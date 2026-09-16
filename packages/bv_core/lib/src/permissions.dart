/// Pencocokan permission `module.object.action` dengan pola wildcard dari server
/// (`*`, `module.*`, `module.*.view`, `module.object.*`) — NC §61, PRD §18.
class PermissionSet {
  const PermissionSet(this.patterns);

  final List<String> patterns;

  static const empty = PermissionSet([]);

  /// `can('operations.work_orders.close')`.
  bool can(String permission) {
    final want = permission.split('.');
    for (final p in patterns) {
      if (p == '*' || p == permission) return true;
      final parts = p.split('.');
      if (_match(parts, want)) return true;
    }
    return false;
  }

  bool canAny(Iterable<String> permissions) => permissions.any(can);

  static bool _match(List<String> pattern, List<String> want) {
    if (pattern.length > want.length) return false;
    for (var i = 0; i < pattern.length; i++) {
      if (pattern[i] == '*') {
        // `module.*` cocok dengan sisa apa pun; `module.*.view` harus cocok segmen terakhir.
        if (i == pattern.length - 1) return true;
        continue;
      }
      if (pattern[i] != want[i]) return false;
    }
    return pattern.length == want.length;
  }
}
