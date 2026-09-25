import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';

final newsProvider = FutureProvider<List<Announcement>>((ref) => ref.watch(announcementsApiProvider).list());
final newsDetailProvider = FutureProvider.family<Announcement, String>((ref, id) => ref.watch(announcementsApiProvider).get(id));

/// News: pengumuman building management untuk staf (audience staff|all) — terpisah dari Inbox notifikasi.
class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(newsProvider),
        child: news.when(
          loading: () => const LoadingState(),
          error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(newsProvider)),
          data: (items) => items.isEmpty
              ? ListView(children: const [EmptyState(title: 'Belum ada pengumuman', message: 'Pengumuman dari building management untuk staf muncul di sini.', icon: Icons.newspaper_outlined)])
              : ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: items.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (_, i) {
                    final a = items[i];
                    final p = SemanticPalette.of(a.isImportant ? Semantic.warning : Semantic.info);
                    return ListTile(
                      leading: CircleAvatar(backgroundColor: p.soft, child: Icon(a.isImportant ? Icons.campaign_outlined : Icons.newspaper_outlined, color: p.solid)),
                      title: Text(a.title, style: const TextStyle(fontWeight: FontWeight.w700)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if ((a.excerpt ?? a.body).isNotEmpty) Text(a.excerpt ?? a.body, maxLines: 2, overflow: TextOverflow.ellipsis),
                          const SizedBox(height: 2),
                          Text('${a.propertyName ?? 'Semua properti'} · ${BvFormat.relative(a.date)}', style: const TextStyle(fontSize: 11, color: BvTokens.neutral500)),
                        ],
                      ),
                      trailing: a.isImportant ? _ImportantChip(palette: p) : null,
                      onTap: () => context.push('/news/${a.id}'),
                    );
                  },
                ),
        ),
      ),
    );
  }
}

class NewsDetailPage extends ConsumerWidget {
  const NewsDetailPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ann = ref.watch(newsDetailProvider(id));
    return Scaffold(
      appBar: AppBar(title: const Text('Pengumuman')),
      body: ann.when(
        loading: () => const LoadingState(),
        error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(newsDetailProvider(id))),
        data: (a) => ListView(
          padding: const EdgeInsets.all(20),
          children: [
            if (a.isImportant) Align(alignment: Alignment.centerLeft, child: _ImportantChip(palette: SemanticPalette.of(Semantic.warning))),
            const SizedBox(height: 8),
            Text(a.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
            const SizedBox(height: 6),
            Text(
              '${a.propertyName ?? 'Semua properti'} · ${BvFormat.dateTime(a.date)}${a.createdByName != null ? ' · ${a.createdByName}' : ''}',
              style: const TextStyle(fontSize: 12, color: BvTokens.neutral500),
            ),
            const Divider(height: 28),
            Text(a.body, style: const TextStyle(fontSize: 15, height: 1.5)),
          ],
        ),
      ),
    );
  }
}

class _ImportantChip extends StatelessWidget {
  const _ImportantChip({required this.palette});
  final SemanticPalette palette;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(color: palette.soft, borderRadius: BorderRadius.circular(999)),
        child: Text('PENTING', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: palette.solid)),
      );
}
