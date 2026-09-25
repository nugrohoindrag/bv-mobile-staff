import 'package:bv_core/bv_core.dart';

import '../client.dart';
import '../errors.dart';

/// `/staff/announcements` — News: pengumuman published untuk staf (baca saja).
class AnnouncementsApi {
  AnnouncementsApi(this.client);
  final BvApiClient client;

  Future<List<Announcement>> list({int limit = 50}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/staff/announcements', queryParameters: {'limit': limit});
        return (res.data!['data'] as List<dynamic>? ?? const [])
            .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
            .toList();
      });

  Future<Announcement> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/staff/announcements/$id');
        return Announcement.fromJson(res.data!);
      });
}
