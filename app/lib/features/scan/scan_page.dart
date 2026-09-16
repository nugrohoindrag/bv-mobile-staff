import 'dart:async';

import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../app/providers.dart';
import '../../app/sync_controller.dart';
import '../../shared/dialogs.dart';
import '../../shared/gps.dart';

/// Scan QR (PRD §22, TAD §8.6): Asset / Checkpoint / Area.
/// - Mode patrol (`patrolTaskId`): cocokkan checkpoint dari bundle secara lokal → `checkpoint_scan` (offline OK).
/// - Mode umum: coba lokal (aset/lokasi di bundle) → bila tidak ada, resolve ke server.
class ScanPage extends ConsumerStatefulWidget {
  const ScanPage({super.key, this.patrolTaskId, this.fullScreen = false, this.initialCode});
  final String? patrolTaskId;
  final bool fullScreen;

  /// Kode dari deep link `bv.link/q/{code}` — langsung di-resolve tanpa kamera.
  final String? initialCode;
  @override
  ConsumerState<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends ConsumerState<ScanPage> {
  final _controller = MobileScannerController(detectionSpeed: DetectionSpeed.noDuplicates, formats: const [BarcodeFormat.qrCode]);
  bool _handling = false;
  String? _lastCode;
  String? _message;
  bool _torch = false;

  @override
  void initState() {
    super.initState();
    final c = widget.initialCode;
    if (c != null && c.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _handleGeneric(c).catchError((Object e) {
            if (mounted) showError(context, e);
          }));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    if (_handling) return;
    final raw = capture.barcodes.map((b) => b.rawValue).whereType<String>().firstOrNull;
    if (raw == null) return;
    final code = parseQrCode(raw);
    if (code == null) {
      setState(() => _message = 'QR tidak dikenali');
      return;
    }
    if (code == _lastCode) return;
    _handling = true;
    _lastCode = code;
    try {
      if (widget.patrolTaskId != null) {
        await _handleCheckpoint(code);
      } else {
        await _handleGeneric(code);
      }
    } catch (e) {
      if (mounted) showError(context, e);
    } finally {
      _handling = false;
      Future<void>.delayed(const Duration(seconds: 2), () => _lastCode = null);
    }
  }

  Future<void> _handleCheckpoint(String code) async {
    final repo = ref.read(localRepoProvider);
    final cp = await repo.checkpointByQr(widget.patrolTaskId!, code);
    if (cp == null) {
      setState(() => _message = 'QR bukan checkpoint rute patrol ini');
      return;
    }
    if (cp.isScanned) {
      setState(() => _message = '${cp.checkpointName} sudah diverifikasi');
      return;
    }
    final fix = await const GpsService().capture();
    await repo.scanCheckpoint(widget.patrolTaskId!, ScanInput(scanMethod: ScanMethod.qr, checkpointId: cp.checkpointId, qrCode: code, gpsStatus: fix.status, gpsLat: fix.lat, gpsLng: fix.lng));
    ref.read(syncControllerProvider.notifier).afterMutation();
    if (!mounted) return;
    setState(() => _message = '✓ ${cp.checkpointName} terverifikasi');
    showInfo(context, 'Checkpoint ${cp.checkpointName} terverifikasi');
  }

  Future<void> _handleGeneric(String code) async {
    final repo = ref.read(localRepoProvider);
    final asset = await repo.assetByQr(code);
    if (asset != null && mounted) {
      unawaited(context.push('/assets/${asset.id}'));
      return;
    }
    final loc = await repo.locationByQr(code);
    if (loc != null && mounted) {
      _showLocation(loc.id, loc.pathText.isEmpty ? loc.name : loc.pathText);
      return;
    }
    // online resolve — validasi org + permission di server
    final r = await ref.read(catalogApiProvider).resolveQr(code);
    if (!mounted) return;
    switch (r.objectType) {
      case 'asset':
        unawaited(context.push('/assets/${r.objectId}'));
      case 'location':
        _showLocation(r.objectId, (r.summary?['path_text'] ?? r.summary?['name'] ?? 'Lokasi') as String);
      case 'checkpoint':
        setState(() => _message = 'QR checkpoint — buka patrol yang sedang berjalan lalu scan dari sana');
      default:
        setState(() => _message = 'Objek ${r.objectType} tidak didukung di aplikasi ini');
    }
  }

  void _showLocation(String id, String label) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(leading: const Icon(Icons.place_outlined), title: Text(label), subtitle: const Text('Area / lokasi')),
            ListTile(
              leading: const Icon(Icons.build_outlined),
              title: const Text('Buat Work Order di lokasi ini'),
              onTap: () {
                Navigator.pop(ctx);
                context.push('/new/work-order?location_id=$id');
              },
            ),
            ListTile(
              leading: const Icon(Icons.report_gmailerrorred_outlined),
              title: const Text('Laporkan insiden di lokasi ini'),
              onTap: () {
                Navigator.pop(ctx);
                context.push('/new/incident?location_id=$id');
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final patrol = widget.patrolTaskId != null;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(patrol ? 'Scan Checkpoint' : 'Scan QR'),
        automaticallyImplyLeading: widget.fullScreen,
        actions: [
          IconButton(
            icon: Icon(_torch ? Icons.flash_on : Icons.flash_off),
            onPressed: () async {
              await _controller.toggleTorch();
              setState(() => _torch = !_torch);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          MobileScanner(controller: _controller, onDetect: _onDetect),
          Center(
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(border: Border.all(color: BvTokens.brand500, width: 3), borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 24,
            child: Column(
              children: [
                if (_message != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(BvTokens.radiusMd)),
                    child: Text(_message!, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
                  ),
                const SizedBox(height: 12),
                Text(
                  patrol ? 'Arahkan kamera ke QR checkpoint sesuai urutan rute' : 'Arahkan kamera ke QR Aset, Checkpoint, atau Area',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
