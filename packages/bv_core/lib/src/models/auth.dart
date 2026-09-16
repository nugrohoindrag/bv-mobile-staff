import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
abstract class TokenPair with _$TokenPair {
  const factory TokenPair({
    required String accessToken,
    String? refreshToken,
    @Default('Bearer') String tokenType,
    required DateTime accessExpiresAt,
    required DateTime refreshExpiresAt,
  }) = _TokenPair;
  factory TokenPair.fromJson(Map<String, dynamic> json) => _$TokenPairFromJson(json);
}

@freezed
abstract class PropertyScope with _$PropertyScope {
  const factory PropertyScope({String? propertyId, @Default(<String>[]) List<String> permissions}) = _PropertyScope;
  factory PropertyScope.fromJson(Map<String, dynamic> json) => _$PropertyScopeFromJson(json);
}

/// Respons `GET /me` dan field `user` pada login.
@freezed
abstract class Me with _$Me {
  const factory Me({
    required String id,
    required String fullName,
    @Default('') String organizationId,
    @Default(<String>[]) List<String> roles,
    @Default(<String>[]) List<String> teamIds,
    @Default(<String>[]) List<String> leadTeamIds,
    @Default(<String>[]) List<String> permissions,
    @Default(<PropertyScope>[]) List<PropertyScope> properties,
  }) = _Me;
  factory Me.fromJson(Map<String, dynamic> json) => _$MeFromJson(json);
}

@freezed
abstract class LoginResponse with _$LoginResponse {
  const LoginResponse._();
  const factory LoginResponse({
    required String accessToken,
    String? refreshToken,
    @Default('Bearer') String tokenType,
    required DateTime accessExpiresAt,
    required DateTime refreshExpiresAt,
    required Me user,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  TokenPair get tokens => TokenPair(
        accessToken: accessToken,
        refreshToken: refreshToken,
        tokenType: tokenType,
        accessExpiresAt: accessExpiresAt,
        refreshExpiresAt: refreshExpiresAt,
      );
}

@freezed
abstract class HealthInfo with _$HealthInfo {
  const factory HealthInfo({
    @Default('ok') String status,
    DateTime? time,
    @Default('0.0.0') String minSupportedAppVersion,
  }) = _HealthInfo;
  factory HealthInfo.fromJson(Map<String, dynamic> json) => _$HealthInfoFromJson(json);
}
