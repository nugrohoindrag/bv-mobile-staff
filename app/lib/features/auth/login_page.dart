import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/env.dart';
import '../../app/session.dart';
import '../../l10n/app_localizations.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _id = TextEditingController();
  final _pw = TextEditingController();
  bool _obscure = true;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _id.dispose();
    _pw.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    await ref.read(sessionProvider.notifier).login(_id.text.trim(), _pw.text);
    if (!mounted) return;
    final s = ref.read(sessionProvider);
    setState(() {
      _busy = false;
      if (s.hasError) {
        final e = s.error;
        _error = e is AppError
            ? (e.kind == AppErrorKind.unauthorized || e.kind == AppErrorKind.validation ? S.of(context).loginFailed : e.message)
            : S.of(context).loginFailed;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset('assets/images/bg_home_header.png', package: 'bv_ui', fit: BoxFit.cover, alignment: Alignment.bottomCenter),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 120, 24, 24),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusXl), boxShadow: bvCardShadow),
                  child: Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: const BoxDecoration(color: BvTokens.brand500, shape: BoxShape.circle),
                              child: const Icon(Icons.apartment, color: Colors.white),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(s.appTitle, style: Theme.of(context).textTheme.titleLarge),
                                const Text('Staff App', style: TextStyle(color: BvTokens.neutral500, fontSize: 13)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        TextFormField(
                          controller: _id,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(labelText: s.identifier, prefixIcon: const Icon(Icons.person_outline)),
                          validator: (v) => (v == null || v.trim().isEmpty) ? 'Wajib diisi' : null,
                        ),
                        const SizedBox(height: 14),
                        TextFormField(
                          controller: _pw,
                          obscureText: _obscure,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => _submit(),
                          decoration: InputDecoration(
                            labelText: s.password,
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              icon: Icon(_obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                              onPressed: () => setState(() => _obscure = !_obscure),
                            ),
                          ),
                          validator: (v) => (v == null || v.isEmpty) ? 'Wajib diisi' : null,
                        ),
                        if (_error != null) ...[
                          const SizedBox(height: 12),
                          Text(_error!, style: const TextStyle(color: BvTokens.critical600, fontSize: 13)),
                        ],
                        const SizedBox(height: 20),
                        BvPrimaryButton(label: s.login, onPressed: _submit, loading: _busy, height: 52),
                        const SizedBox(height: 12),
                        Text(
                          '${AppEnv.flavor} · ${AppEnv.apiUrl}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: BvTokens.neutral400, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
