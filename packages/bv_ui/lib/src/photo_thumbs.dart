import 'dart:io';
import 'dart:typed_data';

import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Sumber thumbnail: file lokal (pending upload) atau URL server.
class PhotoThumb {
  const PhotoThumb({this.localPath, this.url, this.bytes, this.pending = false, this.id});
  final String? localPath;
  final Uint8List? bytes;
  final String? url;
  final bool pending;
  final String? id;
}

/// Baris thumbnail foto + kotak tambah (mockup FORM CHECKLIST: 4 thumbnail dengan tombol hapus).
class PhotoThumbnailRow extends StatelessWidget {
  const PhotoThumbnailRow({super.key, required this.photos, this.onAdd, this.onRemove, this.onTap, this.size = 72, this.addLabel});
  final List<PhotoThumb> photos;
  final VoidCallback? onAdd;
  final void Function(PhotoThumb)? onRemove;
  final void Function(PhotoThumb)? onTap;
  final double size;
  final String? addLabel;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size + 8,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            if (onAdd != null) AddPhotoBox(onTap: onAdd!, size: size, label: addLabel),
            for (final p in photos) ...[
              const SizedBox(width: 10),
              _Thumb(photo: p, size: size, onRemove: onRemove == null ? null : () => onRemove!(p), onTap: onTap == null ? null : () => onTap!(p)),
            ],
          ],
        ),
      );
}

/// Kotak "tambah foto" bergaris putus (mockup).
class AddPhotoBox extends StatelessWidget {
  const AddPhotoBox({super.key, required this.onTap, this.size = 72, this.label});
  final VoidCallback onTap;
  final double size;
  final String? label;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(BvTokens.radiusMd),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(BvTokens.radiusMd),
            border: Border.all(color: BvTokens.neutral300),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add_a_photo_outlined, color: BvTokens.neutral400),
              if (label != null) ...[const SizedBox(height: 4), Text(label!, style: const TextStyle(fontSize: 10, color: BvTokens.neutral500))],
            ],
          ),
        ),
      );
}

class _Thumb extends StatelessWidget {
  const _Thumb({required this.photo, required this.size, this.onRemove, this.onTap});
  final PhotoThumb photo;
  final double size;
  final VoidCallback? onRemove;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final Widget img = photo.bytes != null
        ? Image.memory(photo.bytes!, width: size, height: size, fit: BoxFit.cover)
        : photo.localPath != null
        ? Image.file(File(photo.localPath!), width: size, height: size, fit: BoxFit.cover)
        : photo.url != null
            ? Image.network(photo.url!, width: size, height: size, fit: BoxFit.cover,
                errorBuilder: (_, _, _) => Container(width: size, height: size, color: BvTokens.neutral100, child: const Icon(Icons.broken_image_outlined, color: BvTokens.neutral400)))
            : Container(width: size, height: size, color: BvTokens.neutral100);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipRRect(borderRadius: BorderRadius.circular(BvTokens.radiusMd), child: img),
        ),
        if (photo.pending)
          Positioned(
            left: 4,
            bottom: 4,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(color: Color(0xCCFFFFFF), shape: BoxShape.circle),
              child: const Icon(Icons.cloud_upload_outlined, size: 12, color: BvTokens.warning600),
            ),
          ),
        if (onRemove != null)
          Positioned(
            right: -6,
            top: -6,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(color: BvTokens.critical600, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
                child: const Icon(Icons.close, size: 12, color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}
