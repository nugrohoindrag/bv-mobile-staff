import 'package:bv_sync/bv_sync.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'gps.dart';

/// Ambil foto dari kamera (atau galeri) dengan GPS paralel (TAD §8.5). `null` bila dibatalkan.
class PhotoCapture {
  const PhotoCapture({this.gps = const GpsService()});
  final GpsService gps;

  Future<CapturedPhoto?> capture({ImageSource source = ImageSource.camera, String? caption}) async {
    final picker = ImagePicker();
    final gpsFuture = gps.capture();
    final file = await picker.pickImage(source: source, imageQuality: 92, maxWidth: 2400, preferredCameraDevice: CameraDevice.rear);
    if (file == null) return null;
    final bytes = await file.readAsBytes();
    final fix = await gpsFuture;
    return CapturedPhoto(
      bytes: bytes,
      capturedAt: DateTime.now(),
      gpsLat: fix.lat,
      gpsLng: fix.lng,
      gpsStatus: fix.status,
      caption: caption,
    );
  }

  /// Sheet pilihan Kamera / Galeri.
  Future<CapturedPhoto?> pick(BuildContext context, {String? caption}) async {
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(leading: const Icon(Icons.photo_camera_outlined), title: const Text('Ambil foto'), onTap: () => Navigator.pop(ctx, ImageSource.camera)),
            ListTile(leading: const Icon(Icons.photo_library_outlined), title: const Text('Pilih dari galeri'), onTap: () => Navigator.pop(ctx, ImageSource.gallery)),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
    if (source == null) return null;
    return capture(source: source, caption: caption);
  }
}
