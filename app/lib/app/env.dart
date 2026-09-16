/// Konfigurasi flavor via `--dart-define-from-file=env/<flavor>.json` (TAD §8.1).
class AppEnv {
  const AppEnv._();

  static const flavor = String.fromEnvironment('BV_FLAVOR', defaultValue: 'dev');

  /// Base URL API tanpa `/api/v1`. Default emulator Android → host: `http://10.0.2.2:8080`.
  static const apiUrl = String.fromEnvironment('BV_API_URL', defaultValue: 'http://10.0.2.2:8080');

  /// Host app links (`https://<host>/work-orders/{id}`), scheme fallback `buildingvision://`.
  static const appLinkHost = String.fromEnvironment('BV_APP_LINK_HOST', defaultValue: 'app.buildingvision.id');

  static bool get isProd => flavor == 'prod';
  static bool get isDev => flavor == 'dev';
}
