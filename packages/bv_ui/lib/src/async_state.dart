import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// State wajib list/detail (PRD §25.3): Loading / Empty / Error / Offline / Success. CTA harus actionable.
class EmptyState extends StatelessWidget {
  const EmptyState({super.key, required this.title, this.message, this.ctaLabel, this.onCta, this.illustration = true, this.icon});
  final String title;
  final String? message;
  final String? ctaLabel;
  final VoidCallback? onCta;
  final bool illustration;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(icon, size: 64, color: BvTokens.neutral300)
            else if (illustration)
              Image.asset('assets/images/ilustration_notfound.png', package: 'bv_ui', width: 180),
            const SizedBox(height: 16),
            Text(title, textAlign: TextAlign.center, style: t.titleMedium),
            if (message != null) ...[const SizedBox(height: 6), Text(message!, textAlign: TextAlign.center, style: t.bodyMedium?.copyWith(color: BvTokens.neutral500))],
            if (ctaLabel != null) ...[const SizedBox(height: 16), FilledButton(onPressed: onCta, child: Text(ctaLabel!))],
          ],
        ),
      ),
    );
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({super.key, required this.error, this.onRetry});
  final Object error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final e = error is AppError ? error as AppError : null;
    if (e != null && e.isNetwork) return OfflineState(onRetry: onRetry);
    return EmptyState(
      icon: Icons.error_outline,
      title: e?.kind == AppErrorKind.forbidden ? 'Tidak ada akses' : 'Terjadi kesalahan',
      message: e?.message ?? error.toString(),
      ctaLabel: onRetry == null ? null : 'Coba lagi',
      onCta: onRetry,
    );
  }
}

class OfflineState extends StatelessWidget {
  const OfflineState({super.key, this.onRetry, this.message});
  final VoidCallback? onRetry;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/no_connection.png', package: 'bv_ui', width: 200),
            const SizedBox(height: 12),
            Text('Tidak ada koneksi', style: t.titleMedium),
            const SizedBox(height: 6),
            Text(message ?? 'Pekerjaan hari ini tetap bisa dikerjakan. Perubahan akan disinkronkan otomatis.',
                textAlign: TextAlign.center, style: t.bodyMedium?.copyWith(color: BvTokens.neutral500)),
            if (onRetry != null) ...[const SizedBox(height: 16), OutlinedButton(onPressed: onRetry, child: const Text('Coba lagi'))],
          ],
        ),
      ),
    );
  }
}

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Padding(padding: EdgeInsets.all(32), child: CircularProgressIndicator()));
}

/// Placeholder kartu saat memuat (skeleton sederhana).
class SkeletonCard extends StatelessWidget {
  const SkeletonCard({super.key, this.height = 110});
  final double height;
  @override
  Widget build(BuildContext context) => Container(
        height: height,
        decoration: BoxDecoration(color: BvTokens.neutral100, borderRadius: BorderRadius.circular(BvTokens.radiusXl)),
      );
}
