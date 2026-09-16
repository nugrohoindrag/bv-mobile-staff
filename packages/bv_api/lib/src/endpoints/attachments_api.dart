import 'dart:typed_data';

import 'package:bv_core/bv_core.dart';
import 'package:dio/dio.dart';

import '../client.dart';
import '../errors.dart';

/// Foto evidence: presign → PUT → confirm (TAD §5.9, §8.5).
class AttachmentsApi {
  AttachmentsApi(this.client);
  final BvApiClient client;

  Future<List<Attachment>> list(String objectType, String objectId) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/attachments',
            queryParameters: {'object_type': objectType, 'object_id': objectId});
        return Page<Attachment>.fromJson(res.data!, (o) => Attachment.fromJson(o! as Map<String, dynamic>)).data;
      });

  Future<Attachment> get(String id) => guard(() async {
        final res = await client.dio.get<Map<String, dynamic>>('/attachments/$id');
        return Attachment.fromJson(res.data!);
      });

  Future<PresignOutput> presign(PresignInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/attachments/presign', data: input.toJson());
        return PresignOutput.fromJson(res.data!);
      });

  /// PUT byte ke presigned URL (S3/MinIO) — tanpa Authorization, Content-Type harus sama dengan presign.
  Future<void> upload(PresignOutput presigned, Uint8List bytes, String contentType,
          {void Function(int sent, int total)? onProgress}) =>
      guard(() async {
        final headers = <String, dynamic>{'Content-Type': contentType, 'Content-Length': bytes.length};
        presigned.headers?.forEach((k, v) => headers[k] = v);
        await client.raw.request<void>(
          presigned.uploadUrl,
          data: Stream.fromIterable([bytes]),
          options: Options(method: presigned.method, headers: headers),
          onSendProgress: onProgress,
        );
      });

  Future<Attachment> confirm(String attachmentId, ConfirmInput input) => guard(() async {
        final res = await client.dio.post<Map<String, dynamic>>('/attachments/$attachmentId/confirm', data: input.toJson());
        return Attachment.fromJson(res.data!);
      });

  Future<void> delete(String id) => guard(() => client.dio.delete<void>('/attachments/$id'));
}
