import 'package:bv_core/bv_core.dart';
import 'package:geolocator/geolocator.dart';

/// Hasil capture GPS (PRD §22): status captured | unavailable | denied. Tidak pernah memblokir alur.
class GpsFix {
  const GpsFix({this.lat, this.lng, this.accuracyM, required this.status});
  final double? lat;
  final double? lng;
  final double? accuracyM;
  final String status;

  static const unavailable = GpsFix(status: GpsStatus.unavailable);
  static const denied = GpsFix(status: GpsStatus.denied);
}

class GpsService {
  const GpsService({this.timeout = const Duration(seconds: 10)});
  final Duration timeout;

  /// Meminta izin bila perlu; timeout 10 detik → `unavailable`; izin ditolak → `denied` (TAD §8.5).
  Future<GpsFix> capture() async {
    try {
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied) perm = await Geolocator.requestPermission();
      if (perm == LocationPermission.denied || perm == LocationPermission.deniedForever) return GpsFix.denied;
      if (!await Geolocator.isLocationServiceEnabled()) return GpsFix.unavailable;
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high, timeLimit: timeout),
      );
      return GpsFix(lat: pos.latitude, lng: pos.longitude, accuracyM: pos.accuracy, status: GpsStatus.captured);
    } catch (_) {
      return GpsFix.unavailable;
    }
  }
}
