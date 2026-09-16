import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Banner tipis di atas konten: offline / pending sync / gagal sync (PRD §25.3 Offline & Pending Sync).
class SyncBanner extends StatelessWidget {
  const SyncBanner({
    super.key,
    required this.online,
    this.pending = 0,
    this.failed = 0,
    this.conflict = 0,
    this.syncing = false,
    this.onTap,
  });

  final bool online;
  final int pending;
  final int failed;
  final int conflict;
  final bool syncing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final (Color bg, Color fg, IconData icon, String text) = () {
      if (!online) {
        return (
          BvTokens.neutral800,
          Colors.white,
          Icons.cloud_off_outlined,
          pending > 0 ? 'Offline · $pending perubahan menunggu sinkronisasi' : 'Offline · pekerjaan tetap bisa dilanjutkan',
        );
      }
      if (failed > 0) return (BvTokens.critical50, BvTokens.critical700, Icons.error_outline, '$failed perubahan gagal disinkronkan · ketuk untuk lihat');
      if (conflict > 0) return (BvTokens.warning50, BvTokens.warning700, Icons.merge_type, '$conflict konflik sinkronisasi · ditinjau supervisor');
      if (syncing) return (BvTokens.info50, BvTokens.info700, Icons.sync, 'Menyinkronkan…');
      if (pending > 0) return (BvTokens.warning50, BvTokens.warning700, Icons.cloud_upload_outlined, '$pending perubahan menunggu sinkronisasi');
      return (Colors.transparent, Colors.transparent, Icons.check, '');
    }();
    if (text.isEmpty) return const SizedBox.shrink();
    return Material(
      color: bg,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              if (syncing && online && failed == 0 && conflict == 0)
                SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2, color: fg))
              else
                Icon(icon, size: 16, color: fg),
              const SizedBox(width: 8),
              Expanded(child: Text(text, style: TextStyle(color: fg, fontSize: 12.5, fontWeight: FontWeight.w600))),
              if (onTap != null) Icon(Icons.chevron_right, size: 18, color: fg),
            ],
          ),
        ),
      ),
    );
  }
}
