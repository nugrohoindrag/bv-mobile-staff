import 'dart:convert';

import 'package:dio/dio.dart';

/// Transformer request: menormalkan setiap string tanggal ISO **tanpa zona** (hasil
/// `DateTime.toIso8601String()` untuk waktu lokal, mis. `2026-09-15T20:07:00.000`) menjadi
/// RFC 3339 UTC (`2026-09-15T13:07:00.000Z`) — API Go menolak tanggal tanpa offset.
class BvJsonTransformer extends BackgroundTransformer {
  static final _naiveIso = RegExp(r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(\.\d{1,6})?$');

  @override
  Future<String> transformRequest(RequestOptions options) async {
    final data = options.data;
    if (data is Map || data is List) {
      options.data = normalizeDates(data);
    }
    return super.transformRequest(options);
  }

  /// Rekursif: Map/List disalin, string ISO naif → UTC.
  static Object? normalizeDates(Object? v) {
    if (v is String) {
      if (_naiveIso.hasMatch(v)) {
        final local = DateTime.tryParse(v);
        if (local != null) return local.toUtc().toIso8601String();
      }
      return v;
    }
    if (v is Map) return {for (final e in v.entries) e.key: normalizeDates(e.value)};
    if (v is List) return [for (final e in v) normalizeDates(e)];
    return v;
  }

  static String encode(Object? v) => jsonEncode(normalizeDates(v));
}
