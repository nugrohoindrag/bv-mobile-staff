import 'dart:async';

import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import 'json_transformer.dart';
import 'token_store.dart';

/// Konfigurasi klien (contracts/sync-api.md: header wajib `X-Device-Id`, `X-App-Version`).
class BvApiConfig {
  const BvApiConfig({
    required this.baseUrl,
    required this.deviceId,
    required this.appVersion,
    this.locale = 'id',
    this.connectTimeout = const Duration(seconds: 10),
    this.receiveTimeout = const Duration(seconds: 30),
  });

  /// Contoh: `https://staging.buildingvision.id` (tanpa `/api/v1`).
  final String baseUrl;
  final String deviceId;
  final String appVersion;
  final String locale;
  final Duration connectTimeout;
  final Duration receiveTimeout;
}

/// Klien HTTP terpusat: Bearer + refresh rotasi single-flight (TAD §6.3, §8.7), header device, request id.
class BvApiClient {
  BvApiClient(this.config, this.tokens, {Dio? dio, this.onSessionExpired, this.onAppOutdated})
      : dio = dio ?? Dio() {
    this.dio.options = BaseOptions(
      baseUrl: '${config.baseUrl}/api/v1',
      connectTimeout: config.connectTimeout,
      receiveTimeout: config.receiveTimeout,
      headers: {'Accept': 'application/json'},
      responseType: ResponseType.json,
      validateStatus: (s) => s != null && s < 400,
    );
    this.dio.transformer = BvJsonTransformer();
    this.dio.interceptors.add(_HeaderInterceptor(this));
    this.dio.interceptors.add(_AuthRefreshInterceptor(this));
  }

  final BvApiConfig config;
  final TokenStore tokens;
  final Dio dio;

  /// Dipanggil saat refresh gagal (sesi dicabut / reuse detection) — app harus logout.
  final void Function()? onSessionExpired;

  /// Dipanggil saat server menolak versi app (426) — app tampilkan layar update wajib.
  final void Function()? onAppOutdated;

  static const _uuid = Uuid();

  /// Dio tanpa interceptor auth — untuk PUT ke presigned URL (S3/MinIO) dan /health.
  late final Dio raw = Dio(BaseOptions(
    connectTimeout: config.connectTimeout,
    receiveTimeout: const Duration(minutes: 2),
    validateStatus: (s) => s != null && s < 400,
  ));

  Future<TokenPair?>? _inflight;

  /// Refresh token single-flight: banyak request 401 bersamaan hanya memicu satu refresh.
  Future<TokenPair?> refreshTokens() {
    final inflight = _inflight;
    if (inflight != null) return inflight;
    final f = _doRefresh().whenComplete(() => _inflight = null);
    _inflight = f;
    return f;
  }

  Future<TokenPair?> _doRefresh() async {
    final current = await tokens.read();
    final rt = current?.refreshToken;
    if (rt == null || rt.isEmpty) {
      await tokens.clear();
      onSessionExpired?.call();
      return null;
    }
    try {
      final res = await raw.post<Map<String, dynamic>>(
        '${config.baseUrl}/api/v1/auth/refresh',
        data: {'refresh_token': rt, 'client': 'mobile'},
        options: Options(headers: _baseHeaders()),
      );
      final pair = TokenPair.fromJson(res.data!);
      await tokens.write(pair);
      return pair;
    } on DioException catch (e) {
      final s = e.response?.statusCode ?? 0;
      if (s == 401 || s == 403 || s == 400) {
        await tokens.clear();
        onSessionExpired?.call();
        return null;
      }
      rethrow; // jaringan: biarkan request asal gagal sebagai network error
    }
  }

  Map<String, String> _baseHeaders() => {
        'X-Device-Id': config.deviceId,
        'X-App-Version': config.appVersion,
        'X-Request-Id': _uuid.v4(),
        'Accept-Language': config.locale,
      };

  /// Cek kesehatan + versi minimum app (`GET /health`, tanpa auth).
  Future<HealthInfo> health() async {
    final res = await raw.get<Map<String, dynamic>>('${config.baseUrl}/health', options: Options(headers: _baseHeaders()));
    return HealthInfo.fromJson(res.data ?? const {});
  }
}

class _HeaderInterceptor extends Interceptor {
  _HeaderInterceptor(this.client);
  final BvApiClient client;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(client._baseHeaders());
    if (options.extra['noAuth'] != true) {
      final pair = await client.tokens.read();
      if (pair != null && pair.accessToken.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer ${pair.accessToken}';
      }
    }
    handler.next(options);
  }
}

class _AuthRefreshInterceptor extends Interceptor {
  _AuthRefreshInterceptor(this.client);
  final BvApiClient client;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final status = err.response?.statusCode;
    final path = err.requestOptions.path;
    if (status == 426) client.onAppOutdated?.call();
    final isAuthRoute = path.contains('/auth/');
    final alreadyRetried = err.requestOptions.extra['retried'] == true;
    if (status != 401 || isAuthRoute || alreadyRetried || err.requestOptions.extra['noAuth'] == true) {
      return handler.next(err);
    }
    try {
      final pair = await client.refreshTokens();
      if (pair == null) return handler.next(err);
      final opts = err.requestOptions;
      opts.extra['retried'] = true;
      opts.headers['Authorization'] = 'Bearer ${pair.accessToken}';
      final res = await client.dio.fetch<dynamic>(opts);
      return handler.resolve(res);
    } on DioException catch (e) {
      return handler.next(e);
    } catch (_) {
      return handler.next(err);
    }
  }
}
