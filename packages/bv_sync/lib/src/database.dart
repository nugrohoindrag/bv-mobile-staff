import 'dart:convert';

import 'package:drift/drift.dart';

part 'database.g.dart';

/// Konverter JSON ↔ kolom text.
class JsonMapConverter extends TypeConverter<Map<String, dynamic>, String> {
  const JsonMapConverter();
  @override
  Map<String, dynamic> fromSql(String fromDb) => jsonDecode(fromDb) as Map<String, dynamic>;
  @override
  String toSql(Map<String, dynamic> value) => jsonEncode(value);
}

/// Work item hari ini (task / work_order / cleaning / patrol) — JSON server disimpan utuh,
/// beberapa kolom diindeks untuk query list. State lokal dihitung dari overlay mutasi pending.
@DataClassName('WorkItemRow')
class WorkItems extends Table {
  TextColumn get id => text()();
  TextColumn get objectType => text()();
  /// task | work_order | cleaning | patrol | inspection
  TextColumn get kind => text()();
  TextColumn get status => text()();
  TextColumn get priority => text()();
  TextColumn get title => text()();
  TextColumn get number => text()();
  DateTimeColumn get dueAt => dateTime().nullable()();
  DateTimeColumn get scheduledStartAt => dateTime().nullable()();
  BoolColumn get isOverdue => boolean().withDefault(const Constant(false))();
  TextColumn get assigneeUserId => text().nullable()();
  TextColumn get assigneeTeamId => text().nullable()();
  TextColumn get json => text().map(const JsonMapConverter())();
  DateTimeColumn get updatedAt => dateTime()();
  /// synced | pending | failed | conflict (ringkasan dari mutasi objek ini)
  TextColumn get syncState => text().withDefault(const Constant('synced'))();
  TextColumn get syncMessage => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ChecklistRunRow')
class ChecklistRuns extends Table {
  TextColumn get id => text()();
  TextColumn get objectType => text()();
  TextColumn get objectId => text()();
  TextColumn get json => text().map(const JsonMapConverter())();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Checkpoint patrol dari bundle (validasi QR offline — TAD §8.6).
@DataClassName('PatrolCheckpointRow')
class PatrolCheckpoints extends Table {
  TextColumn get id => text()();
  TextColumn get taskId => text()();
  TextColumn get checkpointId => text()();
  TextColumn get qrCode => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  TextColumn get json => text().map(const JsonMapConverter())();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('LocationRow')
class Locations extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get locationType => text().withDefault(const Constant(''))();
  TextColumn get pathText => text().withDefault(const Constant(''))();
  TextColumn get qrCode => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AssetRow')
class Assets extends Table {
  TextColumn get id => text()();
  TextColumn get assetCode => text()();
  TextColumn get name => text()();
  TextColumn get status => text().withDefault(const Constant('active'))();
  TextColumn get locationId => text().withDefault(const Constant(''))();
  TextColumn get qrCode => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Antrean mutasi (contracts/sync-api.md §2). status: pending | sending | synced | failed | conflict
@DataClassName('MutationRow')
class Mutations extends Table {
  TextColumn get clientMutationId => text()();
  TextColumn get objectType => text()();
  TextColumn get objectId => text()();
  TextColumn get action => text()();
  IntColumn get seq => integer()();
  TextColumn get payload => text().map(const JsonMapConverter())();
  DateTimeColumn get clientTime => dateTime()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextAttemptAt => dateTime().nullable()();
  TextColumn get reasonCode => text().nullable()();
  TextColumn get lastError => text().nullable()();
  TextColumn get response => text().map(const JsonMapConverter()).nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {clientMutationId};
}

/// Nomor urut terakhir per object (C9: seq monoton per device+object, tidak boleh ada lubang).
@DataClassName('ObjectSeqRow')
class ObjectSeqs extends Table {
  TextColumn get objectId => text()();
  IntColumn get lastSeq => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {objectId};
}

/// Foto yang menunggu upload (TAD §8.5).
/// uploadState: queued (menunggu mutasi attach_photo diterima) | ready (punya upload_url) | uploading | uploaded | confirmed | failed | rejected
@DataClassName('PendingFileRow')
class PendingFiles extends Table {
  TextColumn get clientAttachmentId => text()();
  TextColumn get objectType => text()();
  TextColumn get objectId => text()();
  TextColumn get attachmentType => text()();
  TextColumn get localPath => text()();
  TextColumn get contentType => text().withDefault(const Constant('image/jpeg'))();
  IntColumn get sizeBytes => integer()();
  TextColumn get sha256 => text()();
  IntColumn get width => integer().nullable()();
  IntColumn get height => integer().nullable()();
  DateTimeColumn get capturedAt => dateTime()();
  RealColumn get gpsLat => real().nullable()();
  RealColumn get gpsLng => real().nullable()();
  TextColumn get gpsStatus => text().withDefault(const Constant('unavailable'))();
  TextColumn get caption => text().nullable()();
  TextColumn get checklistItemId => text().nullable()();
  TextColumn get mutationId => text().nullable()();
  TextColumn get attachmentId => text().nullable()();
  TextColumn get uploadUrl => text().nullable()();
  TextColumn get uploadState => text().withDefault(const Constant('queued'))();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextAttemptAt => dateTime().nullable()();
  TextColumn get lastError => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {clientAttachmentId};
}

/// Key-value: cursor bundle, waktu pull terakhir, me (JSON), master (JSON).
@DataClassName('SyncMetaRow')
class SyncMeta extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(tables: [WorkItems, ChecklistRuns, PatrolCheckpoints, Locations, Assets, Mutations, ObjectSeqs, PendingFiles, SyncMeta])
class BvDatabase extends _$BvDatabase {
  BvDatabase(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await customStatement('CREATE INDEX IF NOT EXISTS idx_mut_obj ON mutations(object_id, seq)');
          await customStatement('CREATE INDEX IF NOT EXISTS idx_mut_status ON mutations(status, created_at)');
          await customStatement('CREATE INDEX IF NOT EXISTS idx_cp_task ON patrol_checkpoints(task_id, sort_order)');
          await customStatement('CREATE INDEX IF NOT EXISTS idx_run_obj ON checklist_runs(object_id)');
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );

  // ---- meta ----
  Future<String?> meta(String key) async =>
      (await (select(syncMeta)..where((t) => t.key.equals(key))).getSingleOrNull())?.value;

  Future<void> setMeta(String key, String value) =>
      into(syncMeta).insertOnConflictUpdate(SyncMetaCompanion(key: Value(key), value: Value(value)));

  /// Hapus seluruh data lokal (logout / ganti user).
  Future<void> wipe() => transaction(() async {
        for (final t in allTables) {
          await delete(t).go();
        }
      });
}
