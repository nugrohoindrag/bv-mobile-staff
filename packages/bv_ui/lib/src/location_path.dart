import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// LocationPath (PRD §25.2): `Tower A / Lantai 3 / Area Lobby` dengan ikon lokasi.
class LocationPath extends StatelessWidget {
  const LocationPath(this.pathText, {super.key, this.maxLines = 2, this.style});
  final String? pathText;
  final int maxLines;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    if (pathText == null || pathText!.isEmpty) return const SizedBox.shrink();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(top: 1), child: Icon(Icons.place_outlined, size: 16, color: BvTokens.neutral500)),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            pathText!,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: style ?? const TextStyle(color: BvTokens.neutral600, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
