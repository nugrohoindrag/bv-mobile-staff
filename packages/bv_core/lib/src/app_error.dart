import 'models/misc.dart';

/// Jenis kegagalan yang dibedakan UI (PRD §25.3: Error / Offline).
enum AppErrorKind { network, unauthorized, forbidden, notFound, validation, conflict, server, appOutdated, unknown }

/// Error terpadu untuk UI; dibangun dari RFC 9457 problem+json atau kegagalan jaringan.
class AppError implements Exception {
  const AppError(this.kind, this.message, {this.code, this.problem, this.statusCode, this.cause});

  final AppErrorKind kind;
  final String message;
  final String? code;
  final Problem? problem;
  final int? statusCode;
  final Object? cause;

  bool get isNetwork => kind == AppErrorKind.network;
  bool get isAuth => kind == AppErrorKind.unauthorized;

  factory AppError.network([Object? cause]) =>
      AppError(AppErrorKind.network, 'Tidak ada koneksi. Perubahan disimpan dan akan disinkronkan.', cause: cause);

  factory AppError.fromProblem(int status, Problem p) {
    final kind = switch (status) {
      401 => AppErrorKind.unauthorized,
      403 => AppErrorKind.forbidden,
      404 => AppErrorKind.notFound,
      400 || 422 => AppErrorKind.validation,
      409 => AppErrorKind.conflict,
      426 => AppErrorKind.appOutdated,
      >= 500 => AppErrorKind.server,
      _ => AppErrorKind.unknown,
    };
    final msg = p.detail ?? p.title ?? _defaultMessage(kind);
    return AppError(kind, msg, code: p.code, problem: p, statusCode: status);
  }

  static String _defaultMessage(AppErrorKind k) => switch (k) {
        AppErrorKind.network => 'Tidak ada koneksi.',
        AppErrorKind.unauthorized => 'Sesi berakhir. Silakan masuk kembali.',
        AppErrorKind.forbidden => 'Anda tidak memiliki akses untuk aksi ini.',
        AppErrorKind.notFound => 'Data tidak ditemukan.',
        AppErrorKind.validation => 'Data tidak valid.',
        AppErrorKind.conflict => 'Data sudah berubah di server. Muat ulang.',
        AppErrorKind.server => 'Server bermasalah. Coba lagi.',
        AppErrorKind.appOutdated => 'Versi aplikasi terlalu lama. Perbarui aplikasi.',
        AppErrorKind.unknown => 'Terjadi kesalahan.',
      };

  @override
  String toString() => 'AppError($kind, $code): $message';
}
