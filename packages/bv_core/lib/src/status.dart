import 'generated/status_map.dart';

/// Warna semantik status (PRD §25.1) — bukan warna brand.
enum Semantic { success, warning, critical, info, neutral }

/// Varian badge (DS §2.2).
enum BadgeVariant { solid, soft, outline }

Semantic semanticOf(String s) => switch (s) {
      'success' => Semantic.success,
      'warning' => Semantic.warning,
      'critical' => Semantic.critical,
      'info' => Semantic.info,
      _ => Semantic.neutral,
    };

BadgeVariant variantOf(String s) => switch (s) {
      'solid' => BadgeVariant.solid,
      'outline' => BadgeVariant.outline,
      _ => BadgeVariant.soft,
    };

/// Definisi status untuk `objectType` (task, work_order, service_request, incident, finding,
/// inspection, checkpoint, asset, flags, priority, severity, sync_state). `cleaning_task`,
/// `patrol_task`, `maintenance_work_order` memakai peta `task`/`work_order`.
StatusDef? statusDefOf(String objectType, String status) {
  final key = switch (objectType) {
    'cleaning_task' || 'patrol_task' || 'inspection_task' => 'task',
    'maintenance_work_order' => 'work_order',
    _ => objectType,
  };
  return statusMap[key]?[status] ?? statusMap['task']?[status];
}

/// Label status berbahasa Indonesia (fallback: status mentah yang dirapikan).
String statusLabel(String objectType, String status, {String locale = 'id'}) {
  final def = statusDefOf(objectType, status);
  if (def == null) return humanize(status);
  return locale == 'en' ? def.labelEn : def.labelId;
}

String priorityLabel(String priority, {String locale = 'id'}) => statusLabel('priority', priority, locale: locale);
String severityLabel(String severity, {String locale = 'id'}) => statusLabel('severity', severity, locale: locale);

/// `in_progress` → `In progress`.
String humanize(String raw) {
  if (raw.isEmpty) return raw;
  final s = raw.replaceAll('_', ' ');
  return s[0].toUpperCase() + s.substring(1);
}

/// Status yang dianggap "selesai" (tidak lagi di daftar kerja hari ini).
const closedStatuses = {'completed', 'closed', 'cancelled', 'resolved'};
