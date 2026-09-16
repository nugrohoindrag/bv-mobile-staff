import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';

/// Dialog alasan wajib (hold / reopen / cancel / manual scan) — mengembalikan teks atau null.
Future<String?> showReasonDialog(BuildContext context, {required String title, String hint = 'Tulis alasan', String confirm = 'Simpan', bool required = true}) {
  final c = TextEditingController();
  return showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: TextField(controller: c, autofocus: true, maxLines: 3, decoration: InputDecoration(hintText: hint)),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Batal')),
        FilledButton(
          onPressed: () {
            final v = c.text.trim();
            if (required && v.isEmpty) return;
            Navigator.pop(ctx, v);
          },
          child: Text(confirm),
        ),
      ],
    ),
  );
}

Future<bool> showConfirmDialog(BuildContext context, {required String title, String? message, String confirm = 'Ya', bool danger = false}) async {
  final r = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: message == null ? null : Text(message),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Batal')),
        FilledButton(
          style: danger ? FilledButton.styleFrom(backgroundColor: BvTokens.critical600) : null,
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(confirm),
        ),
      ],
    ),
  );
  return r ?? false;
}

void showError(BuildContext context, Object error) {
  final msg = error is AppError ? error.message : error.toString();
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(msg), backgroundColor: BvTokens.critical700));
}

void showInfo(BuildContext context, String message, {SnackBarAction? action}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message), action: action));
}

/// Sheet pilihan sederhana (prioritas, severity, tipe).
Future<T?> showPickerSheet<T>(BuildContext context, {required String title, required List<T> options, required String Function(T) label, T? selected, Widget Function(T)? leading}) {
  return showModalBottomSheet<T>(
    context: context,
    builder: (ctx) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(20, 4, 20, 8), child: Align(alignment: Alignment.centerLeft, child: Text(title, style: Theme.of(ctx).textTheme.titleMedium))),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                for (final o in options)
                  ListTile(
                    leading: leading?.call(o),
                    title: Text(label(o)),
                    trailing: o == selected ? const Icon(Icons.check, color: BvTokens.brand600) : null,
                    onTap: () => Navigator.pop(ctx, o),
                  ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

/// Sheet catatan penyelesaian (complete).
Future<String?> showCompletionSheet(BuildContext context, {required String title, String label = 'Catatan penyelesaian (opsional)', String confirm = 'Pekerjaan Selesai'}) {
  final c = TextEditingController();
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (ctx) => Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, MediaQuery.viewInsetsOf(ctx).bottom + 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: Theme.of(ctx).textTheme.titleMedium),
          const SizedBox(height: 12),
          TextField(controller: c, maxLines: 3, decoration: InputDecoration(labelText: label, alignLabelWithHint: true)),
          const SizedBox(height: 16),
          BvPrimaryButton(label: confirm, icon: Icons.check_circle_outline, onPressed: () => Navigator.pop(ctx, c.text.trim())),
        ],
      ),
    ),
  );
}
