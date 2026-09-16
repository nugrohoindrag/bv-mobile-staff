import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/providers.dart';

/// LocationPicker / AssetPicker (PRD §25.2): data lokal dari bundle, plus pencarian server saat online.
Future<LocationLite?> pickLocation(BuildContext context, WidgetRef ref) => _pick<LocationLite>(
      context,
      title: 'Pilih lokasi',
      local: (q) => ref.read(localRepoProvider).locations(q: q),
      remote: (q) async => (await ref.read(catalogApiProvider).locations(q: q)).data,
      title$: (l) => l.name,
      subtitle$: (l) => l.pathText,
      icon: Icons.place_outlined,
    );

Future<AssetLite?> pickAsset(BuildContext context, WidgetRef ref) => _pick<AssetLite>(
      context,
      title: 'Pilih aset',
      local: (q) => ref.read(localRepoProvider).assets(q: q),
      remote: (q) async => (await ref.read(catalogApiProvider).assets(q: q)).data,
      title$: (a) => a.name,
      subtitle$: (a) => a.assetCode,
      icon: Icons.precision_manufacturing_outlined,
    );

Future<T?> _pick<T>(
  BuildContext context, {
  required String title,
  required Future<List<T>> Function(String q) local,
  required Future<List<T>> Function(String q) remote,
  required String Function(T) title$,
  required String Function(T) subtitle$,
  required IconData icon,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    builder: (ctx) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      builder: (ctx, scroll) => _PickerSheet<T>(title: title, local: local, remote: remote, title$: title$, subtitle$: subtitle$, icon: icon, scroll: scroll),
    ),
  );
}

class _PickerSheet<T> extends StatefulWidget {
  const _PickerSheet({required this.title, required this.local, required this.remote, required this.title$, required this.subtitle$, required this.icon, required this.scroll});
  final String title;
  final Future<List<T>> Function(String q) local;
  final Future<List<T>> Function(String q) remote;
  final String Function(T) title$;
  final String Function(T) subtitle$;
  final IconData icon;
  final ScrollController scroll;
  @override
  State<_PickerSheet<T>> createState() => _PickerSheetState<T>();
}

class _PickerSheetState<T> extends State<_PickerSheet<T>> {
  List<T> _items = [];
  String _q = '';
  bool _loading = true;
  bool _fromServer = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    var items = await widget.local(_q);
    var fromServer = false;
    if (items.isEmpty || _q.length >= 3) {
      try {
        final r = await widget.remote(_q);
        if (r.isNotEmpty) {
          items = r;
          fromServer = true;
        }
      } catch (_) {}
    }
    if (mounted) {
      setState(() {
        _items = items;
        _loading = false;
        _fromServer = fromServer;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                TextField(
                  autofocus: false,
                  decoration: const InputDecoration(hintText: 'Cari…', prefixIcon: Icon(Icons.search), isDense: true),
                  onChanged: (v) {
                    _q = v;
                    _load();
                  },
                ),
              ],
            ),
          ),
          if (_loading) const LinearProgressIndicator(),
          Expanded(
            child: _items.isEmpty && !_loading
                ? const EmptyState(title: 'Tidak ditemukan', icon: Icons.search_off)
                : ListView.builder(
                    controller: widget.scroll,
                    itemCount: _items.length,
                    itemBuilder: (_, i) {
                      final it = _items[i];
                      return ListTile(
                        leading: Icon(widget.icon, color: BvTokens.brand600),
                        title: Text(widget.title$(it)),
                        subtitle: Text(widget.subtitle$(it), maxLines: 1, overflow: TextOverflow.ellipsis),
                        onTap: () => Navigator.pop(context, it),
                      );
                    },
                  ),
          ),
          if (_fromServer) const Padding(padding: EdgeInsets.all(6), child: Text('Hasil dari server', style: TextStyle(fontSize: 11, color: BvTokens.neutral400))),
        ],
      );
}

/// Field pilihan yang tampil seperti input (nilai + ikon chevron).
class PickerField extends StatelessWidget {
  const PickerField({super.key, required this.label, required this.value, required this.onTap, this.icon, this.onClear, this.required = false});
  final String label;
  final String? value;
  final VoidCallback onTap;
  final IconData? icon;
  final VoidCallback? onClear;
  final bool required;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(BvTokens.radiusMd),
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: required ? '$label *' : label,
            prefixIcon: icon == null ? null : Icon(icon),
            suffixIcon: value != null && onClear != null ? IconButton(icon: const Icon(Icons.clear), onPressed: onClear) : const Icon(Icons.expand_more),
          ),
          child: Text(value ?? 'Pilih…', style: TextStyle(color: value == null ? BvTokens.neutral400 : BvTokens.neutral900), maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
      );
}
