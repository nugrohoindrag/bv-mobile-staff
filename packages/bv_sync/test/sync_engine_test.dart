import 'dart:convert';
import 'dart:io';

import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:bv_sync/bv_sync.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

/// Server sync palsu: menyimpan status object, memproses mutasi per aturan C1–C10 (subset).
class FakeSyncServer extends Interceptor {
  final objects = <String, Map<String, dynamic>>{};
  final received = <Map<String, dynamic>>[];
  final seen = <String>{};
  final uploaded = <String, int>{};
  final confirmed = <String>[];
  final lastSeq = <String, int>{};
  bool offline = false;
  int bundleCalls = 0;
  int pushCalls = 0;
  List<Map<String, dynamic>> bundleTasks = [];
  List<Map<String, dynamic>> removed = [];

  Response<dynamic> _ok(RequestOptions o, Object data, [int status = 200]) =>
      Response<dynamic>(requestOptions: o, data: data, statusCode: status);

  @override
  void onRequest(RequestOptions o, RequestInterceptorHandler h) {
    if (offline) {
      return h.reject(DioException(requestOptions: o, type: DioExceptionType.connectionError), true);
    }
    final path = o.uri.path;
    if (o.method == 'GET' && path.endsWith('/sync/work-bundle')) {
      bundleCalls++;
      return h.resolve(_ok(o, {
        'server_time': '2026-09-15T02:00:00Z',
        'cursor': 'c$bundleCalls',
        'master': <String, dynamic>{},
        'me': {'user_id': 'u1', 'full_name': 'Budi', 'roles': ['technician']},
        'tasks': bundleTasks,
        'removed': removed,
      }));
    }
    if (o.method == 'POST' && path.endsWith('/sync/mutations')) {
      pushCalls++;
      final body = o.data as Map<String, dynamic>;
      received.add(body);
      final results = <Map<String, dynamic>>[];
      final gapObjects = <String>{};
      for (final m in (body['mutations'] as List).cast<Map<String, dynamic>>()) {
        final id = m['client_mutation_id'] as String;
        final oid = m['object_id'] as String;
        final action = m['action'] as String;
        if (seen.contains(id)) {
          results.add({'client_mutation_id': id, 'status': 'duplicate'});
          continue;
        }
        if (gapObjects.contains(oid)) continue; // C9: sesudahnya tidak diproses
        final expected = (lastSeq[oid] ?? 0) + 1;
        if ((m['seq'] as int) != expected) {
          gapObjects.add(oid);
          results.add({'client_mutation_id': id, 'status': 'rejected', 'reason_code': 'SEQ_GAP'});
          continue;
        }
        lastSeq[oid] = m['seq'] as int;
        seen.add(id);
        final obj = objects[oid];
        if (obj == null) {
          results.add({'client_mutation_id': id, 'status': 'rejected', 'reason_code': 'NOT_FOUND'});
          continue;
        }
        if (action == 'attach_photo') {
          final cid = m['payload']['client_attachment_id'];
          results.add({
            'client_mutation_id': id, 'status': 'applied', 'server_version': 2,
            'response': {'attachment_id': 'att-$cid', 'upload_url': 'https://s3.test/put/$cid', 'storage_key': 'k'},
          });
          continue;
        }
        if (action == 'checklist_item_result' || action == 'add_comment' || action == 'checkpoint_scan') {
          results.add({'client_mutation_id': id, 'status': 'applied', 'server_version': 2});
          continue;
        }
        // transisi
        final status = obj['status'] as String;
        if (status == 'closed' || status == 'cancelled') {
          results.add({'client_mutation_id': id, 'status': 'conflict', 'reason_code': 'OBJECT_TERMINAL'});
          continue;
        }
        if (obj['assignee'] != 'u1') {
          results.add({'client_mutation_id': id, 'status': 'conflict', 'reason_code': 'REASSIGNED'});
          continue;
        }
        final next = switch ((status, action)) {
          ('assigned', 'start') || ('on_hold', 'resume') => 'in_progress',
          ('in_progress', 'hold') => 'on_hold',
          ('in_progress', 'complete') => 'completed',
          _ => null,
        };
        if (next == null) {
          results.add({'client_mutation_id': id, 'status': 'conflict', 'reason_code': 'INVALID_TRANSITION'});
          continue;
        }
        obj['status'] = next;
        results.add({'client_mutation_id': id, 'status': 'applied', 'server_version': (obj['version'] = (obj['version'] as int) + 1)});
      }
      return h.resolve(_ok(o, {'server_time': '2026-09-15T02:00:01Z', 'results': results}));
    }
    if (o.method == 'PUT' && o.uri.host == 's3.test') {
      uploaded[o.uri.pathSegments.last] = int.parse(o.headers['Content-Length'].toString());
      return h.resolve(_ok(o, ''));
    }
    if (o.method == 'POST' && path.contains('/attachments/') && path.endsWith('/confirm')) {
      final id = path.split('/')[path.split('/').length - 2];
      confirmed.add(id);
      return h.resolve(_ok(o, {
        'id': id, 'object_type': 'task', 'object_id': 't1', 'attachment_type': 'photo', 'content_type': 'image/jpeg',
        'size_bytes': 3, 'uploaded_by': 'u1', 'uploaded_by_name': 'Budi', 'uploaded_at': '2026-09-15T02:00:02Z',
        'gps_status': 'captured', 'status': 'ready',
      }));
    }
    h.reject(DioException(requestOptions: o, response: _ok(o, {'title': 'not found', 'status': 404}, 404), type: DioExceptionType.badResponse), true);
  }
}

Map<String, dynamic> taskJson(String id, {String status = 'assigned', String? assignee = 'u1', bool requiresEvidence = false}) => {
      'id': id,
      'object_type': 'task',
      'number': 'TSK-$id',
      'type': 'task',
      'title': 'Task $id',
      'status': status,
      'priority': 'medium',
      'property_id': 'p1',
      'assignee': {'user_id': assignee, 'user_name': 'Budi'},
      'requires_evidence': requiresEvidence,
      'allowed_actions': status == 'assigned' ? ['start'] : status == 'in_progress' ? ['hold', 'complete'] : [],
      'created_at': '2026-09-15T00:00:00Z',
      'updated_at': '2026-09-15T00:00:00Z',
      'version': 1,
    };

void main() {
  late BvDatabase db;
  late FakeSyncServer server;
  late BvApiClient client;
  late LocalWorkRepository repo;
  late SyncEngine engine;
  late Directory tmp;
  var clock = DateTime.utc(2026, 9, 15, 1, 0);

  setUp(() async {
    db = BvDatabase(NativeDatabase.memory());
    server = FakeSyncServer();
    tmp = await Directory.systemTemp.createTemp('bvsync');
    final store = InMemoryTokenStore();
    await store.write(TokenPair(accessToken: 'A', refreshToken: 'R', accessExpiresAt: clock.add(const Duration(minutes: 15)), refreshExpiresAt: clock.add(const Duration(days: 30))));
    client = BvApiClient(const BvApiConfig(baseUrl: 'https://bv.test', deviceId: 'dev-1', appVersion: '0.1.0'), store);
    client.dio.interceptors.add(server);
    client.raw.interceptors.add(server);
    repo = LocalWorkRepository(db, imageProcessor: const PassthroughImageProcessor(), photoStore: PhotoStore(tmp), now: () => clock);
    engine = SyncEngine(db: db, repo: repo, syncApi: SyncApi(client), attachmentsApi: AttachmentsApi(client), now: () => clock, backoff: (a) => const Duration(seconds: 30));
    server.objects['t1'] = {'status': 'assigned', 'assignee': 'u1', 'version': 1};
    server.objects['t2'] = {'status': 'assigned', 'assignee': 'u1', 'version': 1};
    server.bundleTasks = [taskJson('t1'), taskJson('t2')];
  });

  tearDown(() async {
    await engine.dispose();
    await db.close();
    await tmp.delete(recursive: true);
  });

  Future<Map<String, String>> mutationStatuses() async =>
      {for (final m in await db.select(db.mutations).get()) '${m.objectId}#${m.seq}:${m.action}': m.status};

  test('pull bundle → item tersimpan; removed dihapus; cursor disimpan', () async {
    await engine.pull();
    expect((await repo.getWorkItem('t1'))!.number, 'TSK-t1');
    expect(await repo.cursor(), 'c1');
    server.bundleTasks = [];
    server.removed = [{'object_type': 'task', 'object_id': 't2'}];
    await engine.pull();
    expect(await repo.getWorkItem('t2'), isNull);
    expect(await repo.getWorkItem('t1'), isNotNull, reason: 'delta pull tidak menghapus item lain');
  });

  test('C1: start + complete offline → overlay lokal segera, lalu applied saat online', () async {
    await engine.pull();
    server.offline = true;
    final t1 = (await repo.getWorkItem('t1'))!;
    await repo.transition(t1, WorkAction.start, const TransitionInput(reason: '', gpsStatus: 'captured', gpsLat: -6.2, gpsLng: 106.8));
    var local = (await repo.getWorkItem('t1'))!;
    expect(local.status, 'in_progress', reason: 'immediate local acknowledgement');
    expect(local.can(WorkAction.complete), isTrue);
    expect(await repo.syncStateOf('t1'), SyncState.pending);
    await repo.transition(local, WorkAction.complete, const TransitionInput(reason: '', completionNotes: 'Selesai'));
    local = (await repo.getWorkItem('t1'))!;
    expect(local.status, 'completed');

    await engine.syncNow(pull: false); // offline → tetap pending, backoff
    expect(engine.current.online, isFalse);
    expect(await repo.syncStateOf('t1'), SyncState.pending);

    server.offline = false;
    clock = clock.add(const Duration(minutes: 1));
    await engine.syncNow(pull: false);
    expect(server.objects['t1']!['status'], 'completed');
    expect(await mutationStatuses(), {'t1#1:start': 'synced', 't1#2:complete': 'synced'});
    expect(await repo.syncStateOf('t1'), SyncState.synced);
    final sent = (server.received.single['mutations'] as List).cast<Map<String, dynamic>>();
    expect(sent.map((m) => m['seq']), [1, 2], reason: 'urut seq per object');
    expect(sent.first['payload']['client_recorded_at'], isNotNull, reason: 'C8: client time dikirim apa adanya');
    expect(sent.first['payload']['gps_status'], 'captured');
  });

  test('C3: object closed di server → conflict, tidak di-retry, state lokal diganti saat pull', () async {
    await engine.pull();
    final t1 = (await repo.getWorkItem('t1'))!;
    server.objects['t1']!['status'] = 'closed';
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    await engine.syncNow(pull: false);
    expect((await mutationStatuses())['t1#1:start'], 'conflict');
    expect(await repo.syncStateOf('t1'), SyncState.conflict);
    expect(server.pushCalls, 1);
    await engine.syncNow(pull: false);
    expect(server.pushCalls, 1, reason: 'conflict tidak dikirim ulang');
    server.bundleTasks = [taskJson('t1', status: 'closed')];
    await engine.pull();
    final after = (await repo.getWorkItem('t1'))!;
    expect(after.status, 'closed', reason: 'server authority; overlay hilang karena mutasi bukan pending');
    await repo.dismissConflict('t1');
    expect(await repo.syncStateOf('t1'), SyncState.synced);
  });

  test('C4: reassigned → conflict REASSIGNED dengan pesan; evidence (foto) tetap terkirim', () async {
    await engine.pull();
    final t1 = (await repo.getWorkItem('t1'))!;
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    await repo.attachPhoto('task', 't1', CapturedPhoto(bytes: Uint8List.fromList([1, 2, 3]), capturedAt: clock, gpsStatus: 'captured', gpsLat: -6.2, gpsLng: 106.8));
    server.objects['t1']!['assignee'] = 'u9';
    await engine.syncNow(pull: false);
    final st = await mutationStatuses();
    expect(st['t1#1:start'], 'conflict');
    expect(st['t1#2:attach_photo'], 'synced');
    final row = (await db.select(db.workItems).get()).firstWhere((r) => r.id == 't1');
    expect(row.syncMessage, contains('dialihkan'));
    expect(server.uploaded.length, 1, reason: 'foto tetap diunggah walau transisi konflik');
    expect(server.confirmed.length, 1);
    final files = await db.select(db.pendingFiles).get();
    expect(files.single.uploadState, 'confirmed');
    expect(File(files.single.localPath).existsSync(), isFalse, reason: 'file lokal dihapus setelah confirmed');
  });

  test('C6: retry setelah timeout respons → duplicate diperlakukan sebagai synced', () async {
    await engine.pull();
    final t1 = (await repo.getWorkItem('t1'))!;
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    await engine.syncNow(pull: false);
    // paksa kirim ulang mutasi yang sama (mis. respons hilang)
    await (db.update(db.mutations)).write(const MutationsCompanion(status: Value('pending')));
    await engine.syncNow(pull: false);
    expect(server.pushCalls, 2);
    expect((await mutationStatuses())['t1#1:start'], 'synced');
    expect(server.objects['t1']!['status'], 'in_progress', reason: 'tidak diterapkan dua kali');
  });

  test('C9: SEQ_GAP → mutasi sebelumnya dipulihkan dan dikirim ulang berurutan', () async {
    await engine.pull();
    final t1 = (await repo.getWorkItem('t1'))!;
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    await repo.addComment('task', 't1', 'catatan');
    // simulasi: mutasi seq 1 sempat ditandai failed (mis. bug lama) → seq 2 dikirim sendirian
    await (db.update(db.mutations)..where((t) => t.seq.equals(1))).write(const MutationsCompanion(status: Value('failed')));
    await engine.push();
    // engine memblokir seq 2 karena seq 1 belum terkirim → tidak ada push sama sekali
    expect(server.pushCalls, 0);
    await (db.update(db.mutations)..where((t) => t.seq.equals(1))).write(const MutationsCompanion(status: Value('pending')));
    await engine.push();
    expect(server.pushCalls, 1);
    expect(await mutationStatuses(), {'t1#1:start': 'synced', 't1#2:add_comment': 'synced'});
  });

  test('C9 (server): rejected SEQ_GAP dari server → pending lagi lalu berhasil', () async {
    await engine.pull();
    server.lastSeq['t1'] = 5; // server sudah punya seq 5 dari sesi sebelumnya (device reinstall)
    final t1 = (await repo.getWorkItem('t1'))!;
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    await engine.syncNow(pull: false);
    var st = await mutationStatuses();
    expect(st['t1#1:start'], 'pending');
    final row = (await db.select(db.mutations).get()).single;
    expect(row.reasonCode, 'SEQ_GAP');
    expect(row.nextAttemptAt, isNotNull);
    expect(await repo.syncStateOf('t1'), SyncState.pending, reason: 'item tetap Pending Sync');
    // setelah maxAttempts → failed dengan alasan
    for (var i = 0; i < 10; i++) {
      clock = clock.add(const Duration(minutes: 1));
      await engine.syncNow(pull: false);
    }
    st = await mutationStatuses();
    expect(st['t1#1:start'], 'failed');
    expect(await repo.syncStateOf('t1'), SyncState.failed);
  });

  test('C10: NOT_FOUND → failed (dibuang dari antrean), CTA retry mengembalikan ke pending', () async {
    await engine.pull();
    final ghost = WorkItem.fromJson(taskJson('t9'));
    await repo.saveWorkItem(ghost);
    await repo.transition(ghost, WorkAction.start, const TransitionInput());
    await engine.syncNow(pull: false);
    expect((await mutationStatuses())['t9#1:start'], 'failed');
    expect(await repo.syncStateOf('t9'), SyncState.failed);
    await engine.syncNow(pull: false);
    expect(server.pushCalls, 1, reason: 'failed tidak dikirim ulang otomatis');
    await repo.retryFailed('t9');
    expect(await repo.syncStateOf('t9'), SyncState.pending);
  });

  test('checklist offline: jawaban + foto per item → overlay run lokal, mutasi urut, foto diunggah', () async {
    server.bundleTasks = [taskJson('t1', requiresEvidence: true)];
    await engine.pull();
    final run = ChecklistRun.fromJson({
      'id': 'run1', 'object_type': 'task', 'object_id': 't1', 'template_id': 'tpl', 'template_version': 1,
      'template_name': 'PM Pompa', 'status': 'in_progress', 'total_items': 2, 'answered_items': 0, 'not_ok_items': 0,
      'items': [
        {'id': 'i1', 'sort_order': 1, 'label': 'Periksa oli', 'item_type': 'ok_not_ok', 'is_required': true, 'photo_required': true, 'out_of_range': false},
        {'id': 'i2', 'sort_order': 2, 'label': 'Tekanan', 'item_type': 'numeric', 'is_required': true, 'photo_required': false, 'numeric_min': 1, 'numeric_max': 5, 'out_of_range': false},
      ],
    });
    await repo.saveRun(run);
    server.offline = true;
    await repo.answerChecklist(run, run.items[0], const AnswerInput(resultValue: 'not_ok', note: 'bocor', createFinding: true, findingSeverity: 'high'),
        photo: CapturedPhoto(bytes: Uint8List.fromList([9, 9, 9]), capturedAt: clock));
    await repo.answerChecklist(run, run.items[1], const AnswerInput(resultNumber: 3.5));
    final local = (await repo.getRun('t1'))!;
    expect(local.answeredItems, 2);
    expect(local.notOkItems, 1);
    expect(local.items[0].attachmentId, isNotNull, reason: 'client_attachment_id sebagai placeholder');
    expect(local.photoMissing, 0);
    final t1 = (await repo.getWorkItem('t1'))!;
    expect(t1.attachmentCount, 1, reason: 'overlay attach_photo');
    server.offline = false;
    await engine.syncNow(pull: false);
    final sent = (server.received.single['mutations'] as List).cast<Map<String, dynamic>>();
    expect(sent.map((m) => m['action']), ['attach_photo', 'checklist_item_result', 'checklist_item_result']);
    expect(sent[1]['payload']['client_attachment_id'], sent[0]['payload']['client_attachment_id']);
    expect(sent[1]['payload']['create_finding'], isTrue);
    expect(server.uploaded.values.single, 3);
    expect(server.confirmed.length, 1);
    final summary = await repo.watchSummary().first;
    expect(summary.pending, 0);
    expect(summary.photosPending, 0);
  });

  test('patrol: checkpoint QR dicocokkan lokal dari bundle; scan pending → status scanned', () async {
    server.offline = false;
    await engine.pull();
    // simulasi bundle patrol
    await db.into(db.workItems).insertOnConflictUpdate(WorkItemsCompanion.insert(
      id: 'pt1', objectType: 'task', kind: 'patrol', status: 'in_progress', priority: 'medium', title: 'Patrol malam', number: 'TSK-P1',
      json: taskJson('pt1', status: 'in_progress'), updatedAt: clock,
    ));
    for (var i = 1; i <= 2; i++) {
      await db.into(db.patrolCheckpoints).insert(PatrolCheckpointsCompanion.insert(
        id: 'cs$i', taskId: 'pt1', checkpointId: 'cp$i', qrCode: Value('QRCODE00000$i'), sortOrder: Value(i),
        json: {'id': 'cs$i', 'checkpoint_id': 'cp$i', 'checkpoint_name': 'CP $i', 'location_path': 'Lobby', 'sort_order': i, 'status': 'pending', 'qr_code': 'QRCODE00000$i'},
      ));
    }
    final cp = await repo.checkpointByQr('pt1', 'QRCODE000001');
    expect(cp!.checkpointName, 'CP 1');
    expect(await repo.checkpointByQr('pt1', 'ASING'), isNull);
    await repo.scanCheckpoint('pt1', ScanInput(scanMethod: 'qr', qrCode: 'QRCODE000001', checkpointId: cp.checkpointId, gpsStatus: 'denied'));
    final cps = await repo.watchCheckpoints('pt1').first;
    expect(cps[0].status, 'scanned');
    expect(cps[1].status, 'pending');
    final json = jsonEncode((await db.select(db.mutations).get()).single.payload);
    expect(json, contains('client_scan_id'));
  });

  test('watchWorkItems memancarkan ulang saat mutasi ditambahkan', () async {
    await engine.pull();
    final stream = repo.watchWorkItems(openOnly: true);
    final first = await stream.first;
    expect(first.map((e) => e.status), ['assigned', 'assigned']);
    final t1 = first.first;
    await repo.transition(t1, WorkAction.start, const TransitionInput());
    final second = await repo.watchWorkItems(openOnly: true).first;
    expect(second.firstWhere((e) => e.id == 't1').status, 'in_progress');
  });
}
