import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

/// Server palsu berbasis interceptor: skrip respons per (method, path).
class FakeServer extends Interceptor {
  final calls = <String>[];
  final Map<String, List<Response<dynamic> Function(RequestOptions)>> scripts = {};
  int refreshCount = 0;

  void on(String method, String path, Response<dynamic> Function(RequestOptions) f) =>
      scripts.putIfAbsent('$method $path', () => []).add(f);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final key = '${options.method} ${options.uri.path}';
    calls.add('$key auth=${options.headers['Authorization']} dev=${options.headers['X-Device-Id']}');
    final q = scripts[key];
    if (q == null || q.isEmpty) {
      return handler.reject(DioException(requestOptions: options, type: DioExceptionType.connectionError), true);
    }
    final f = q.length == 1 ? q.first : q.removeAt(0);
    final res = f(options);
    if ((res.statusCode ?? 200) >= 400) {
      return handler.reject(DioException(requestOptions: options, response: res, type: DioExceptionType.badResponse), true);
    }
    handler.resolve(res);
  }
}

Response<dynamic> ok(RequestOptions o, Object data, {int status = 200}) =>
    Response<dynamic>(requestOptions: o, data: data, statusCode: status);

void main() {
  const cfg = BvApiConfig(baseUrl: 'https://bv.test', deviceId: 'dev-1', appVersion: '0.1.0');
  final tokenJson = {
    'access_token': 'A1',
    'refresh_token': 'R1',
    'token_type': 'Bearer',
    'access_expires_at': '2026-09-15T01:15:00Z',
    'refresh_expires_at': '2026-10-15T01:00:00Z',
  };

  late FakeServer server;
  late InMemoryTokenStore store;
  late BvApiClient client;
  var expired = false;

  setUp(() {
    server = FakeServer();
    store = InMemoryTokenStore();
    expired = false;
    client = BvApiClient(cfg, store, onSessionExpired: () => expired = true);
    client.dio.interceptors.add(server);
    client.raw.interceptors.add(server);
  });

  test('login mobile menyimpan token & mengirim header device', () async {
    server.on('POST', '/api/v1/auth/login', (o) {
      expect(o.data, containsPair('client', 'mobile'));
      expect(o.data, containsPair('device_id', 'dev-1'));
      return ok(o, {...tokenJson, 'user': {'id': 'u1', 'full_name': 'Budi', 'organization_id': 'o1', 'roles': ['technician']}});
    });
    final login = await AuthApi(client).login(identifier: 'budi@demo', password: 'x');
    expect(login.user.roles, ['technician']);
    expect((await store.read())!.refreshToken, 'R1');
    expect(server.calls.single, contains('dev=dev-1'));
  });

  test('401 → refresh single-flight → retry dengan token baru', () async {
    await store.write(TokenPair.fromJson(tokenJson));
    var meHits = 0;
    server.on('GET', '/api/v1/me', (o) {
      meHits++;
      if (o.headers['Authorization'] == 'Bearer A1') return ok(o, {'code': 'UNAUTHORIZED'}, status: 401);
      return ok(o, {'id': 'u1', 'full_name': 'Budi', 'organization_id': 'o1'});
    });
    server.on('POST', '/api/v1/auth/refresh', (o) {
      server.refreshCount++;
      expect(o.data, {'refresh_token': 'R1', 'client': 'mobile'});
      return ok(o, {...tokenJson, 'access_token': 'A2', 'refresh_token': 'R2'});
    });
    final auth = AuthApi(client);
    final results = await Future.wait([auth.me(), auth.me(), auth.me()]);
    expect(results.every((m) => m.id == 'u1'), isTrue);
    expect(server.refreshCount, 1, reason: 'refresh hanya sekali untuk 3 request paralel');
    expect(meHits, 6);
    expect((await store.read())!.refreshToken, 'R2', reason: 'rotasi refresh token');
  });

  test('refresh ditolak (reuse detection) → token dihapus & onSessionExpired', () async {
    await store.write(TokenPair.fromJson(tokenJson));
    server.on('GET', '/api/v1/me', (o) => ok(o, {}, status: 401));
    server.on('POST', '/api/v1/auth/refresh', (o) => ok(o, {'code': 'REFRESH_REUSED'}, status: 401));
    await expectLater(AuthApi(client).me(), throwsA(isA<AppError>().having((e) => e.kind, 'kind', AppErrorKind.unauthorized)));
    expect(await store.read(), isNull);
    expect(expired, isTrue);
  });

  test('problem+json → AppError.validation dengan field errors', () async {
    server.on('POST', '/api/v1/work-orders', (o) => ok(o, {
          'type': 'about:blank',
          'title': 'Validation error',
          'status': 400,
          'code': 'VALIDATION_ERROR',
          'detail': 'title wajib',
          'errors': [{'field': 'title', 'message': 'wajib diisi'}],
        }, status: 400));
    try {
      await WorkApi(client).createWorkOrder(const CreateWorkOrderInput(title: '', workOrderType: 'corrective'));
      fail('harus melempar');
    } on AppError catch (e) {
      expect(e.kind, AppErrorKind.validation);
      expect(e.code, 'VALIDATION_ERROR');
      expect(e.problem!.errors.first.field, 'title');
    }
  });

  test('gagal koneksi → AppError.network', () async {
    await expectLater(SyncApi(client).workBundle(), throwsA(isA<AppError>().having((e) => e.isNetwork, 'network', isTrue)));
  });

  test('work-bundle & push mutations memakai device_id', () async {
    server.on('GET', '/api/v1/sync/work-bundle', (o) {
      expect(o.queryParameters['device_id'], 'dev-1');
      expect(o.queryParameters['since'], 'c1');
      return ok(o, {
        'server_time': '2026-09-15T01:00:00Z',
        'cursor': 'c2',
        'master': <String, dynamic>{},
        'me': {'user_id': 'u1', 'full_name': 'Budi'},
        'tasks': [
          {
            'id': 't1', 'object_type': 'task', 'number': 'TSK-1', 'type': 'cleaning', 'title': 'Lobby', 'status': 'assigned',
            'priority': 'medium', 'property_id': 'p1', 'created_at': '2026-09-15T00:00:00Z', 'updated_at': '2026-09-15T00:00:00Z',
          }
        ],
      });
    });
    server.on('POST', '/api/v1/sync/mutations', (o) {
      expect(o.data['device_id'], 'dev-1');
      expect((o.data['mutations'] as List).first['seq'], 1);
      return ok(o, {'server_time': '2026-09-15T01:00:01Z', 'results': [{'client_mutation_id': 'm1', 'status': 'applied', 'server_version': 2}]});
    });
    final b = await SyncApi(client).workBundle(since: 'c1');
    expect(b.cursor, 'c2');
    expect(b.tasks.single.isCleaning, isTrue);
    final out = await SyncApi(client).pushMutations([
      const Mutation(clientMutationId: 'm1', objectType: 'task', objectId: 't1', action: 'start', seq: 1),
    ]);
    expect(out.results.single.isApplied, isTrue);
  });
}
