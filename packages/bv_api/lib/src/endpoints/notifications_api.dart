import 'package:bv_core/bv_core.dart';

import '../client.dart';
import '../errors.dart';

class NotificationPage {
  const NotificationPage({required this.items, this.nextCursor, this.unreadCount = 0});
  final List<BvNotification> items;
  final String? nextCursor;
  final int unreadCount;
}

/// `/notifications` — inbox (PRD §17.2).
class NotificationsApi {
  NotificationsApi(this.client);
  final BvApiClient client;

  Future<NotificationPage> list({bool unreadOnly = false, String? cursor, int limit = 50}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/notifications', queryParameters: {
          if (unreadOnly) 'unread': 'true',
          'cursor': ?cursor,
          'limit': limit,
        });
        final d = res.data!;
        final items = (d['data'] as List<dynamic>? ?? const [])
            .map((e) => BvNotification.fromJson(e as Map<String, dynamic>))
            .toList();
        return NotificationPage(
          items: items,
          nextCursor: d['next_cursor'] as String?,
          unreadCount: (d['unread_count'] as num?)?.toInt() ?? 0,
        );
      });

  Future<void> markRead(String id) => guard(() => client.dio.post<void>('/notifications/$id/read'));
  Future<void> markAllRead() => guard(() => client.dio.post<void>('/notifications/read-all'));
}
