# BuildingVision Staff App (Flutter)

Aplikasi mobile Android/iOS (satu codebase) untuk staf operasional gedung: Technician, Security Officer, Housekeeping Staff, dan Supervisor — work order, task, checklist, patroli, cleaning, foto bukti, dengan dukungan offline (mutation queue + sinkronisasi). Backend: BuildingVision API (repo `bv-dashboard`), kontrak di `contracts/`.

## Struktur (Dart pub workspace)

```text
app/                 # bv_staff — aplikasi (Riverpod, go_router, flavor dev/staging/prod)
packages/bv_core     # model (freezed), status map, permission matcher, formatter, konstanta kontrak
packages/bv_api      # klien HTTP (dio): Bearer + refresh token, header device, endpoint per resource
packages/bv_sync     # offline: skema drift, mutation queue, sync engine, pipeline foto
packages/bv_ui       # design system: tema dari token, StatusBadge, WorkItemCard, DomainHeader, ChecklistRunner
contracts/           # salinan permissions.yaml & sync-api.md dari repo backend (tool/sync_contracts.sh)
```

## Prasyarat

- Flutter (stable) dengan Dart SDK, JDK 17, Android SDK (Android Studio / command-line tools)
- iOS: macOS + Xcode + CocoaPods

## Menjalankan

```bash
flutter pub get                                   # dari root workspace
cd app
cp env/dev.example.json env/dev.json              # BV_API_URL: emulator Android → http://10.0.2.2:8080
flutter run --dart-define-from-file=env/dev.json
```

Konfigurasi flavor lewat `app/env/*.json` (`dev`, `staging`, `prod`; file contoh `*.example.json`, file aktual tidak di-commit):

| Kunci | Keterangan |
|---|---|
| `BV_FLAVOR` | `dev` · `staging` · `prod` |
| `BV_API_URL` | base URL BuildingVision API |
| `BV_APP_LINK_HOST` | host untuk app link / deep link |

Perangkat fisik di jaringan yang sama: set `BV_API_URL` ke `http://<IP-host>:8080` (debug build mengizinkan cleartext).

## Perintah

| Area | Perintah |
|---|---|
| Analyze | `flutter analyze` (di root) |
| Test | `cd packages/bv_core && flutter test` (juga `bv_api`, `bv_sync`, `bv_ui`) |
| Codegen (freezed/drift) | `cd packages/bv_core && dart run build_runner build` · `cd packages/bv_sync && dart run build_runner build` |
| l10n | `cd app && flutter gen-l10n` |
| Sinkron kontrak dari repo backend | `bash tool/sync_contracts.sh <path>/bv-dashboard/contracts` |
| APK debug | `cd app && flutter build apk --debug --dart-define-from-file=env/dev.json` |
| AAB rilis | `cd app && flutter build appbundle --dart-define-from-file=env/prod.json` (butuh `android/key.properties` + keystore) |

## Push notification (opsional)

Letakkan `app/android/app/google-services.json` (dan `app/ios/Runner/GoogleService-Info.plist`), lalu aktifkan plugin `com.google.gms.google-services` di `android/settings.gradle.kts` & `app/build.gradle.kts`. Tanpa file ini aplikasi tetap berjalan; push dilewati otomatis. File kredensial tersebut tidak di-commit.

## iOS

Build/test iOS memerlukan macOS + Xcode (`cd app/ios && pod install`). Tidak ada kode platform-spesifik selain konfigurasi plugin; izin kamera/lokasi dan URL scheme `buildingvision://` sudah di `Info.plist`.
