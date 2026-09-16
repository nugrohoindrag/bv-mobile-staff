import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

/// Ubah DioException → AppError (problem+json RFC 9457 atau kegagalan jaringan).
AppError toAppError(Object e) {
  if (e is AppError) return e;
  if (e is DioException) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
      case DioExceptionType.connectionError:
        return AppError.network(e);
      case DioExceptionType.badResponse:
        final res = e.response;
        final status = res?.statusCode ?? 0;
        final data = res?.data;
        final problem = data is Map<String, dynamic>
            ? Problem.fromJson(data)
            : Problem(status: status, title: res?.statusMessage);
        return AppError.fromProblem(status, problem);
      case DioExceptionType.cancel:
        return AppError(AppErrorKind.unknown, 'Permintaan dibatalkan.', cause: e);
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        // dio memakai `unknown` untuk SocketException di beberapa platform.
        final msg = e.error?.toString() ?? '';
        if (msg.contains('SocketException') || msg.contains('Failed host lookup') || e.error is Exception) {
          return AppError.network(e);
        }
        return AppError(AppErrorKind.unknown, e.message ?? 'Terjadi kesalahan.', cause: e);
    }
  }
  return AppError(AppErrorKind.unknown, e.toString(), cause: e);
}

/// Bungkus pemanggilan API agar selalu melempar [AppError].
Future<T> guard<T>(Future<T> Function() fn) async {
  try {
    return await fn();
  } catch (e) {
    throw toAppError(e);
  }
}
