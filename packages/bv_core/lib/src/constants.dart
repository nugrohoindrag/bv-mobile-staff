/// Konstanta kontrak (contracts/sync-api.md, TAD §6.6, §8.4).
class ObjectType {
  ObjectType._();
  static const task = 'task';
  static const workOrder = 'work_order';
  static const serviceRequest = 'service_request';
  static const incident = 'incident';
  static const finding = 'finding';
  static const asset = 'asset';
  static const checkpoint = 'checkpoint';
  static const location = 'location';
}

/// Aksi Task Engine (`allowed_actions`) dan aksi mutasi sync.
class WorkAction {
  WorkAction._();
  static const start = 'start';
  static const hold = 'hold';
  static const resume = 'resume';
  static const complete = 'complete';
  static const close = 'close';
  static const reopen = 'reopen';
  static const cancel = 'cancel';
  static const assign = 'assign';
  static const verify = 'close'; // Verify supervisor = transisi Completed → Closed
  // mutasi sync non-transisi
  static const checklistItemResult = 'checklist_item_result';
  static const checkpointScan = 'checkpoint_scan';
  static const addComment = 'add_comment';
  static const attachPhoto = 'attach_photo';
  static const addFinding = 'add_finding';
  static const reportIncident = 'report_incident';

  static const transitions = {start, hold, resume, complete, close, reopen, cancel};
  static const requiresReason = {hold, reopen, cancel};
}

class GpsStatus {
  GpsStatus._();
  static const captured = 'captured';
  static const unavailable = 'unavailable';
  static const denied = 'denied';
}

/// Status sinkronisasi per item lokal (PRD §21).
class SyncState {
  SyncState._();
  static const pending = 'pending';
  static const synced = 'synced';
  static const failed = 'failed';
  static const conflict = 'conflict';
}

/// Nilai kolom `attachments.attachment_type` di server (CHECK constraint migrasi 00004).
/// Alias pendek `before|after|checklist` di sync-api.md dinormalisasi server, tetapi kirim nilai
/// kanonik agar cocok dengan `Attachment.attachmentType` yang dikembalikan API.
class AttachmentType {
  AttachmentType._();
  static const before = 'photo_before';
  static const after = 'photo_after';
  static const photo = 'photo';
  static const checklist = 'checklist_item_photo';
}

class ScanMethod {
  ScanMethod._();
  static const qr = 'qr';
  static const manual = 'manual';
}

/// Permission yang sering dicek di UI.
class Perm {
  Perm._();
  static const tasksView = 'operations.tasks.view';
  static const tasksCreate = 'operations.tasks.create';
  static const tasksAssign = 'operations.tasks.assign';
  static const tasksClose = 'operations.tasks.close';
  static const workOrdersView = 'operations.work_orders.view';
  static const workOrdersCreate = 'operations.work_orders.create';
  static const workOrdersAssign = 'operations.work_orders.assign';
  static const workOrdersClose = 'operations.work_orders.close';
  static const incidentsCreate = 'operations.incidents.create';
  static const findingsCreate = 'operations.findings.create';
  static const commentsCreate = 'operations.comments.create';
  static const attachmentsCreate = 'operations.attachments.create';
  static const assetsView = 'engineering.assets.view';
  static const patrolView = 'security.patrol.view';
  static const patrolStart = 'security.patrol.start';
  static const cleaningView = 'housekeeping.cleaning.view';
  static const cleaningStart = 'housekeeping.cleaning.start';
  static const inboxView = 'notification.inbox.view';
  static const syncBundle = 'sync.work_bundle.view';
  static const syncMutations = 'sync.mutations.create';
  static const syncConflictsView = 'sync.conflicts.view';
  static const inventoryItemsView = 'inventory.items.view';
  static const partsUsageView = 'inventory.parts_usage.view';
  static const partsUsageCreate = 'inventory.parts_usage.create';
  static const propertiesView = 'property.properties.view';
}

/// Format QR (TAD §8.6): `https://bv.link/q/{code}` atau kode mentah 12 karakter.
String? parseQrCode(String raw) {
  final s = raw.trim();
  final m = RegExp(r'/q/([A-Za-z0-9]{6,32})/?$').firstMatch(s);
  if (m != null) return m.group(1);
  if (RegExp(r'^[A-Za-z0-9]{6,32}$').hasMatch(s)) return s;
  return null;
}
