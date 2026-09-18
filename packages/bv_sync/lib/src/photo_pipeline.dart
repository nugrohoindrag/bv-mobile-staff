import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as p;

/// Hasil pemrosesan foto: JPEG ≤ 1600 px sisi terpanjang, q≈80, orientasi EXIF diterapkan, EXIF dibuang.
class ProcessedImage {
  const ProcessedImage(this.bytes, {this.width, this.height});
  final Uint8List bytes;
  final int? width;
  final int? height;
  String get sha256Hex => sha256.convert(bytes).toString();
}

/// Abstraksi kompresi agar engine bisa diuji tanpa plugin native.
abstract class ImageProcessor {
  Future<ProcessedImage> process(Uint8List input);
}

/// Batas ukuran foto yang diterima server (`BV_MAX_IMAGE_BYTES`, default 500 KB) — sync `attach_photo`
/// dan presign menolak `size_bytes` di atas ini, jadi kompresi di perangkat wajib.
const int kMaxImageBytes = 500 * 1024;

/// Implementasi produksi (flutter_image_compress) — TAD §8.5. Kompres sampai ≤ [maxBytes]:
/// sisi ≤ [maxSide] & q80 dulu, lalu kualitas turun bertahap (→40), lalu sisi diperkecil 0.8× berulang.
class FlutterImageProcessor implements ImageProcessor {
  const FlutterImageProcessor({this.maxSide = 1600, this.quality = 80, this.maxBytes = kMaxImageBytes});
  final int maxSide;
  final int quality;
  final int maxBytes;

  @override
  Future<ProcessedImage> process(Uint8List input) async {
    var side = maxSide;
    var q = quality;
    Uint8List out = input;
    for (var i = 0; i < 12; i++) {
      out = await FlutterImageCompress.compressWithList(input, minWidth: side, minHeight: side, quality: q, format: CompressFormat.jpeg, autoCorrectionAngle: true, keepExif: false);
      if (out.length <= maxBytes) break;
      if (q > 40) {
        q -= 10;
      } else {
        side = (side * 0.8).round();
      }
    }
    return ProcessedImage(out);
  }
}

/// Untuk test: tidak mengubah byte.
class PassthroughImageProcessor implements ImageProcessor {
  const PassthroughImageProcessor();
  @override
  Future<ProcessedImage> process(Uint8List input) async => ProcessedImage(input);
}

/// Penyimpanan file foto lokal di direktori app (dihapus setelah `confirmed`).
class PhotoStore {
  PhotoStore(this.rootDir);
  final Directory rootDir;

  Future<String> save(String clientAttachmentId, Uint8List bytes) async {
    await rootDir.create(recursive: true);
    final f = File(p.join(rootDir.path, '$clientAttachmentId.jpg'));
    await f.writeAsBytes(bytes, flush: true);
    return f.path;
  }

  Future<Uint8List?> read(String path) async {
    final f = File(path);
    if (!await f.exists()) return null;
    return f.readAsBytes();
  }

  Future<void> delete(String path) async {
    final f = File(path);
    if (await f.exists()) await f.delete();
  }
}

/// Foto siap antre (hasil capture + GPS paralel, PRD §22).
class CapturedPhoto {
  const CapturedPhoto({required this.bytes, required this.capturedAt, this.gpsLat, this.gpsLng, this.gpsStatus = 'unavailable', this.caption, this.width, this.height});
  final Uint8List bytes;
  final DateTime capturedAt;
  final double? gpsLat;
  final double? gpsLng;
  final String gpsStatus;
  final String? caption;
  final int? width;
  final int? height;
}
