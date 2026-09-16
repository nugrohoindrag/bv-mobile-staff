import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../l10n/app_localizations.dart';
import '../tasks/work_providers.dart';

final assetProvider = FutureProvider.family<Asset, String>((ref, id) => ref.watch(catalogApiProvider).asset(id));

/// Ringkasan aset hasil scan (PRD §20.1 Scan Asset): identitas, lokasi, status, PM berikutnya, WO terbuka.
class AssetPage extends ConsumerWidget {
  const AssetPage({super.key, required this.assetId});
  final String assetId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final asset = ref.watch(assetProvider(assetId));
    final session = ref.watch(currentSessionProvider);
    final localAssets = ref.watch(localAssetsProvider).value ?? const <AssetLite>[];
    final lite = localAssets.where((a) => a.id == assetId).firstOrNull;
    final related = (ref.watch(localWorkItemsProvider(session.shell.workKinds)).value ?? const <WorkItem>[]).where((w) => w.asset.id == assetId && w.isOpen).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Aset')),
      body: asset.when(
        loading: () => lite == null ? const LoadingState() : _body(context, ref, null, lite, related),
        error: (e, _) => lite == null ? ErrorState(error: e, onRetry: () => ref.invalidate(assetProvider(assetId))) : _body(context, ref, null, lite, related, offline: true),
        data: (a) => _body(context, ref, a, lite, related),
      ),
      bottomNavigationBar: session.can(Perm.workOrdersCreate)
          ? BottomActionBar(children: [
              BvPrimaryButton(label: s.createWorkOrder, icon: Icons.build_outlined, onPressed: () => context.push('/new/work-order?asset_id=$assetId&location_id=${asset.value?.locationId ?? lite?.locationId ?? ''}')),
            ])
          : null,
    );
  }

  Widget _body(BuildContext context, WidgetRef ref, Asset? a, AssetLite? lite, List<WorkItem> related, {bool offline = false}) {
    final name = a?.name ?? lite?.name ?? '';
    final code = a?.assetCode ?? lite?.assetCode ?? '';
    final status = a?.status ?? lite?.status ?? 'active';
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const KindIcon('work_order', size: 52),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(name, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18)),
                    Text(code, style: const TextStyle(color: BvTokens.neutral500, fontWeight: FontWeight.w600)),
                  ]),
                ),
                StatusBadge('asset', status, dense: true),
              ]),
              if (offline) const Padding(padding: EdgeInsets.only(top: 10), child: Text('Offline — detail lengkap tersedia saat online.', style: TextStyle(color: BvTokens.warning700, fontSize: 12))),
            ],
          ),
        ),
        const SizedBox(height: 12),
        if (a != null)
          SectionCard(
            child: Column(children: [
              DetailRow(label: 'Lokasi', child: LocationPath(a.locationPath.isEmpty ? a.locationName : a.locationPath)),
              DetailRow.text(label: 'Kategori', value: [a.categoryName, a.typeName].whereType<String>().where((e) => e.isNotEmpty).join(' · ')),
              if (a.manufacturer != null || a.model != null) DetailRow.text(label: 'Merek/Model', value: [a.manufacturer, a.model].whereType<String>().join(' ')),
              if (a.serialNumber != null) DetailRow.text(label: 'No. seri', value: a.serialNumber!),
              if (a.criticality != null) DetailRow(label: 'Kritikalitas', child: SeverityBadge(a.criticality!)),
              DetailRow.text(label: 'PM terakhir', value: BvFormat.date(a.lastMaintenanceAt)),
              DetailRow(
                label: 'PM berikutnya',
                child: Text(BvFormat.date(a.nextPmDue), style: TextStyle(fontWeight: FontWeight.w600, color: a.nextPmDue != null && a.nextPmDue!.isBefore(DateTime.now()) ? BvTokens.critical600 : BvTokens.neutral800)),
              ),
              DetailRow.text(label: 'WO terbuka', value: '${a.openWorkOrders}'),
              if (a.specifications != null && a.specifications!.isNotEmpty)
                for (final e in a.specifications!.entries) DetailRow.text(label: humanize(e.key), value: '${e.value}', dense: true),
            ]),
          ),
        if (related.isNotEmpty) ...[
          const SectionHeader(title: 'Pekerjaan hari ini pada aset ini', dotColor: BvTokens.info600),
          SectionCard(
            padding: EdgeInsets.zero,
            child: Column(children: [
              for (final w in related)
                ListTile(
                  leading: KindIcon(w.isWorkOrder ? 'work_order' : 'task', size: 36),
                  title: Text(w.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  subtitle: Text(w.number),
                  trailing: StatusBadge(w.objectType, w.status, dense: true),
                  onTap: () => context.push(w.isWorkOrder ? '/work-orders/${w.id}' : '/tasks/${w.id}'),
                ),
            ]),
          ),
        ],
        const SizedBox(height: 24),
      ],
    );
  }
}
