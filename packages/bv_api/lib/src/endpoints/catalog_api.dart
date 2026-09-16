import 'package:bv_core/bv_core.dart';

import '../client.dart';
import '../errors.dart';

/// QR resolve, aset, lokasi, tim, user, search — data referensi untuk mobile.
class CatalogApi {
  CatalogApi(this.client);
  final BvApiClient client;

  /// `GET /qr/{code}/resolve` — validasi org + permission di server (PRD §22).
  Future<QrResolve> resolveQr(String code) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/qr/$code/resolve');
        return QrResolve.fromJson(res.data!);
      });

  Future<Asset> asset(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/assets/$id');
        return Asset.fromJson(res.data!);
      });

  Future<Page<AssetLite>> assets({String? q, String? locationId, String? propertyId, int limit = 50, String? cursor}) =>
      guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/assets', queryParameters: {
          if (q != null && q.isNotEmpty) 'q': q,
          'location_id': ?locationId,
          'property_id': ?propertyId,
          'limit': limit,
          'cursor': ?cursor,
        });
        return Page<AssetLite>.fromJson(res.data!, (o) => AssetLite.fromJson(o! as Map<String, dynamic>));
      });

  Future<Page<LocationLite>> locations({String? q, String? propertyId, String? type, int limit = 100, String? cursor}) =>
      guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/locations', queryParameters: {
          if (q != null && q.isNotEmpty) 'q': q,
          'property_id': ?propertyId,
          'location_type': ?type,
          'limit': limit,
          'cursor': ?cursor,
        });
        return Page<LocationLite>.fromJson(res.data!, (o) => LocationLite.fromJson(o! as Map<String, dynamic>));
      });

  Future<List<Team>> teams({String? propertyId, String? domain}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/teams', queryParameters: {
          'property_id': ?propertyId,
          'domain': ?domain,
          'limit': 200,
        });
        return Page<Team>.fromJson(res.data!, (o) => Team.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<Team> team(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/teams/$id');
        return Team.fromJson(res.data!);
      });

  Future<List<SearchResult>> search(String q, {int limit = 20}) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/search', queryParameters: {'q': q, 'limit': limit});
        return Page<SearchResult>.fromJson(res.data!, (o) => SearchResult.fromJson(o! as Map<String, dynamic>)).data;
      });
}
