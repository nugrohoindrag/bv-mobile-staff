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

/// Implementasi produksi (flutter_image_compress) — TAD §8.5.
class FlutterImageProcessor implements ImageProcessor {
  const FlutterImageProcessor({this.maxSide = 1600, this.quality = 80});
  final int maxSide;
  final int quality;

  @override
  Future<ProcessedImage> process(Uint8List input) async {
    final out = await FlutterImageCompress.compressWithList(
      input,
      minWidth: maxSide,
      minHeight: maxSide,
      quality: quality,
      format: CompressFormat.jpeg,
      autoCorrectionAngle: true,
      keepExif: false,
    );
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
  const CapturedPhoto({
    required this.bytes,
    required this.capturedAt,
    this.gpsLat,
    this.gpsLng,
    this.gpsStatus = 'unavailable',
    this.caption,
    this.width,
    this.height,
  });
  final Uint8List bytes;
  final DateTime capturedAt;
  final double? gpsLat;
  final double? gpsLng;
  final String gpsStatus;
  final String? caption;
  final int? width;
  final int? height;
}
