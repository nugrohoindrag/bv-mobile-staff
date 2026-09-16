import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../shared/dialogs.dart';

class ChangePasswordPage extends ConsumerStatefulWidget {
  const ChangePasswordPage({super.key});
  @override
  ConsumerState<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends ConsumerState<ChangePasswordPage> {
  final _form = GlobalKey<FormState>();
  final _cur = TextEditingController();
  final _new = TextEditingController();
  final _confirm = TextEditingController();
  bool _busy = false;

  @override
  void dispose() {
    _cur.dispose();
    _new.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;
    setState(() => _busy = true);
    try {
      await ref.read(authApiProvider).changePassword(currentPassword: _cur.text, newPassword: _new.text);
      if (!mounted) return;
      showInfo(context, 'Kata sandi diperbarui');
      context.pop();
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Ganti kata sandi')),
        body: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TextFormField(controller: _cur, obscureText: true, decoration: const InputDecoration(labelText: 'Kata sandi saat ini'), validator: (v) => (v == null || v.isEmpty) ? 'Wajib diisi' : null),
              const SizedBox(height: 12),
              TextFormField(controller: _new, obscureText: true, decoration: const InputDecoration(labelText: 'Kata sandi baru (min. 10 karakter)'), validator: (v) => (v == null || v.length < 10) ? 'Minimal 10 karakter' : null),
              const SizedBox(height: 12),
              TextFormField(controller: _confirm, obscureText: true, decoration: const InputDecoration(labelText: 'Ulangi kata sandi baru'), validator: (v) => v != _new.text ? 'Tidak sama' : null),
              const SizedBox(height: 24),
              BvPrimaryButton(label: 'Simpan', loading: _busy, onPressed: _submit),
            ],
          ),
        ),
      );
}
