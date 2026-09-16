import 'dart:async';

import 'package:bv_api/bv_api.dart';
import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/env.dart';
import '../../app/providers.dart';
import '../../app/shell_scaffold.dart';

final inboxProvider = FutureProvider.family<NotificationPage, bool>((ref, unreadOnly) async {
  final page = await ref.watch(notificationsApiProvider).list(unreadOnly: unreadOnly);
  ref.read(unreadCountProvider.notifier).set(page.unreadCount);
  return page;
});

/// NotificationInbox (PRD §17.2): daftar, belum dibaca, tandai dibaca, deep link → route.
class InboxPage extends ConsumerStatefulWidget {
  const InboxPage({super.key});
  @override
  ConsumerState<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends ConsumerState<InboxPage> {
  bool _unreadOnly = false;

  /// `https://app.buildingvision.id/work-orders/{id}` atau `buildingvision://work-orders/{id}` → path internal.
  String? _routeFor(BvNotification n) {
    final link = n.deepLink;
    if (link != null && link.isNotEmpty) {
      final u = Uri.tryParse(link);
      if (u != null) {
        final path = u.host == AppEnv.appLinkHost || u.scheme == 'buildingvision' ? (u.scheme == 'buildingvision' ? '/${u.host}${u.path}' : u.path) : u.path;
        if (path.startsWith('/work-orders/') || path.startsWith('/tasks/') || path.startsWith('/patrol/')) return path;
      }
    }
    return switch (n.objectType) {
      'work_order' when n.objectId != null => '/work-orders/${n.objectId}',
      'task' when n.objectId != null => '/tasks/${n.objectId}',
      _ => null,
    };
  }

  Future<void> _open(BvNotification n) async {
    if (n.isUnread) {
      try {
        await ref.read(notificationsApiProvider).markRead(n.id);
        ref.invalidate(inboxProvider);
      } catch (_) {}
    }
    final route = _routeFor(n);
    if (route != null && mounted) unawaited(context.push(route));
  }

  @override
  Widget build(BuildContext context) {
    final inbox = ref.watch(inboxProvider(_unreadOnly));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          IconButton(
            tooltip: _unreadOnly ? 'Tampilkan semua' : 'Hanya belum dibaca',
            icon: Icon(_unreadOnly ? Icons.mark_email_unread : Icons.mark_email_unread_outlined),
            onPressed: () => setState(() => _unreadOnly = !_unreadOnly),
          ),
          IconButton(
            tooltip: 'Tandai semua dibaca',
            icon: const Icon(Icons.done_all),
            onPressed: () async {
              await ref.read(notificationsApiProvider).markAllRead();
              ref.invalidate(inboxProvider);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(inboxProvider),
        child: inbox.when(
          loading: () => const LoadingState(),
          error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(inboxProvider)),
          data: (page) => page.items.isEmpty
              ? ListView(children: const [EmptyState(title: 'Inbox kosong', message: 'Notifikasi penugasan, SLA, dan konflik sync muncul di sini.', icon: Icons.mail_outline)])
              : ListView.separated(
                  itemCount: page.items.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (_, i) {
                    final n = page.items[i];
                    final sem = switch (n.severity) { 'critical' => Semantic.critical, 'warning' => Semantic.warning, _ => Semantic.info };
                    final p = SemanticPalette.of(sem);
                    return ListTile(
                      tileColor: n.isUnread ? Colors.white : BvTokens.neutral50,
                      leading: CircleAvatar(
                        backgroundColor: p.soft,
                        child: Icon(
                          switch (n.type) {
                            final t when t.contains('assigned') => Icons.assignment_ind_outlined,
                            final t when t.contains('sla') => Icons.timer_outlined,
                            final t when t.contains('sync') => Icons.merge_type,
                            final t when t.contains('incident') => Icons.report_gmailerrorred_outlined,
                            _ => Icons.notifications_outlined,
                          },
                          color: p.solid,
                        ),
                      ),
                      title: Text(n.title, style: TextStyle(fontWeight: n.isUnread ? FontWeight.w800 : FontWeight.w600)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(n.body, maxLines: 2, overflow: TextOverflow.ellipsis),
                          const SizedBox(height: 2),
                          Text('${n.objectLabel != null ? '${n.objectLabel} · ' : ''}${BvFormat.relative(n.createdAt)}', style: const TextStyle(fontSize: 11, color: BvTokens.neutral500)),
                        ],
                      ),
                      trailing: n.isUnread ? Container(width: 10, height: 10, decoration: const BoxDecoration(color: BvTokens.brand500, shape: BoxShape.circle)) : null,
                      onTap: () => _open(n),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
