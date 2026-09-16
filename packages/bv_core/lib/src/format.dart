import 'package:intl/intl.dart';

/// Format tanggal/waktu user-facing Indonesia (NC §39): `14 Sep 2026, 09:30`.
class BvFormat {
  BvFormat._();

  static final _dateTime = DateFormat('d MMM yyyy, HH:mm', 'id');
  static final _date = DateFormat('d MMM yyyy', 'id');
  static final _dateLong = DateFormat('EEEE, d MMMM yyyy', 'id');
  static final _time = DateFormat('HH:mm', 'id');
  static final _dayShort = DateFormat('EEE', 'id');
  static final _monthYear = DateFormat('MMMM  yyyy', 'id');
  static final _timeDayDate = DateFormat('HH:mm EEEE, dd MMMM yyyy', 'id');
  static final _money = NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);

  static String dateTime(DateTime? d) => d == null ? '—' : _dateTime.format(d.toLocal());
  static String date(DateTime? d) => d == null ? '—' : _date.format(d.toLocal());
  static String dateLong(DateTime d) => _dateLong.format(d.toLocal());
  static String time(DateTime? d) => d == null ? '—' : _time.format(d.toLocal());
  static String dayShort(DateTime d) => _dayShort.format(d.toLocal()).toUpperCase();

  /// `Juni  2019` (header kalender).
  static String monthYear(DateTime d) => _monthYear.format(d.toLocal());

  /// `23:59 Rabu, 05 Juni 2019` (kartu kerja mockup).
  static String timeDayDate(DateTime? d) => d == null ? '—' : _timeDayDate.format(d.toLocal());

  /// `Rp 1.250.000` dari amount dalam rupiah (integer).
  static String money(int amount, {String currency = 'IDR'}) =>
      currency == 'IDR' ? _money.format(amount) : '$currency ${NumberFormat.decimalPattern('id').format(amount)}';

  /// `5 mnt lalu`, `2 jam lalu`, `kemarin`, atau tanggal.
  static String relative(DateTime d, {DateTime? now}) {
    final n = now ?? DateTime.now();
    final diff = n.difference(d.toLocal());
    if (diff.inSeconds < 60) return 'baru saja';
    if (diff.inMinutes < 60) return '${diff.inMinutes} mnt lalu';
    if (diff.inHours < 24) return '${diff.inHours} jam lalu';
    if (diff.inDays == 1) return 'kemarin';
    if (diff.inDays < 7) return '${diff.inDays} hari lalu';
    return date(d);
  }

  /// Sisa waktu sampai due: `2 jam lagi` / `Overdue 3 jam`.
  static String dueIn(DateTime? due, {DateTime? now}) {
    if (due == null) return '—';
    final n = now ?? DateTime.now();
    final diff = due.toLocal().difference(n);
    final abs = diff.abs();
    final text = abs.inMinutes < 60
        ? '${abs.inMinutes} mnt'
        : abs.inHours < 24
            ? '${abs.inHours} jam'
            : '${abs.inDays} hari';
    return diff.isNegative ? 'Overdue $text' : '$text lagi';
  }

  static bool isSameDay(DateTime a, DateTime b) {
    final x = a.toLocal();
    final y = b.toLocal();
    return x.year == y.year && x.month == y.month && x.day == y.day;
  }

  /// Inisial nama untuk avatar: `Budi Santoso` → `BS`.
  static String initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) return '?';
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return (parts.first.substring(0, 1) + parts.last.substring(0, 1)).toUpperCase();
  }
}
