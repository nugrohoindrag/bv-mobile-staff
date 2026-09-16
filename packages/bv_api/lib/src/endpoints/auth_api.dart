import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';

/// `/auth/*`, `/me*` (TAD §6.3; iam/http.go).
class AuthApi {
  AuthApi(this.client);
  final BvApiClient client;

  /// Login mobile: refresh token dikirim di body (bukan cookie) — `client: "mobile"`.
  Future<LoginResponse> login({required String identifier, required String password}) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>(
          '/auth/login',
          data: {
            'identifier': identifier,
            'password': password,
            'client': 'mobile',
            'device_id': client.config.deviceId,
          },
          options: Options(extra: {'noAuth': true}),
        );
        final login = LoginResponse.fromJson(res.data!);
        await client.tokens.write(login.tokens);
        return login;
      });

  Future<void> logout() => guard(() async {
        final pair = await client.tokens.read();
        try {
          await client.dio.post<void>('/auth/logout', data: {'refresh_token': pair?.refreshToken, 'client': 'mobile'});
        } finally {
          await client.tokens.clear();
        }
      });

  Future<Me> me() => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/me');
        return Me.fromJson(res.data!);
      });

  Future<void> changePassword({required String currentPassword, required String newPassword}) => guard(() async {
        await client.dio.post<void>('/me/password', data: {'current_password': currentPassword, 'new_password': newPassword});
      });

  /// Daftarkan token push (FCM) — dipanggil saat login & token berubah (TAD §8.7).
  Future<void> registerDevice(DeviceInput input) =>
      guard(() => client.dio.post<void>('/me/devices', data: input.toJson()));

  Future<void> unregisterDevice(String token) => guard(() => client.dio.delete<void>('/me/devices/$token'));
}
