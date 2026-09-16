import 'package:bv_core/bv_core.dart';
import 'package:bv_ui/bv_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/session.dart';
import '../../l10n/app_localizations.dart';
import '../../shared/dialogs.dart';
import '../tasks/work_providers.dart';

final findingProvider = FutureProvider.family<Finding, String>((ref, id) => ref.watch(findingsApiProvider).get(id));

/// Detail Temuan (PRD §11): sumber, severity, foto; supervisor → buat Work Order dari temuan.
class FindingDetailPage extends ConsumerWidget {
  const FindingDetailPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final f = ref.watch(findingProvider(id));
    final session = ref.watch(currentSessionProvider);
    return Scaffold(
      appBar: AppBar(title: Text(f.value?.findingNumber ?? 'Temuan')),
      body: f.when(
        loading: () => const LoadingState(),
        error: (e, _) => ErrorState(error: e, onRetry: () => ref.invalidate(findingProvider(id))),
        data: (x) {
          final photos = ref.watch(attachmentsProvider((objectType: ObjectType.finding, id: x.id))).value ?? const <Attachment>[];
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            children: [
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(width: 48, height: 48, decoration: const BoxDecoration(color: BvTokens.warning600, shape: BoxShape.circle), child: const Icon(Icons.flag, color: Colors.white)),
                      const SizedBox(width: 12),
                      Expanded(child: Text(x.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18))),
                    ]),
                    const SizedBox(height: 12),
                    Wrap(spacing: 6, runSpacing: 6, children: [StatusBadge('finding', x.status), SeverityBadge(x.severity, dense: false), BvBadge(label: humanize(x.findingType), semantic: Semantic.neutral)]),
                    if (x.description != null && x.description!.isNotEmpty) ...[const SizedBox(height: 12), Text(x.description!, style: const TextStyle(color: BvTokens.neutral700))],
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SectionCard(
                child: Column(children: [
                  DetailRow(label: 'Lokasi', child: LocationPath(x.location.pathText ?? x.location.name)),
                  if (x.asset.id != null)
                    DetailRow(label: 'Aset', child: InkWell(onTap: () => context.push('/assets/${x.asset.id}'), child: Text('${x.asset.assetCode ?? ''} · ${x.asset.name ?? ''}', style: const TextStyle(color: BvTokens.brand600, fontWeight: FontWeight.w600)))),
                  DetailRow.text(label: 'Sumber', value: x.sourceLabel.isEmpty ? humanize(x.sourceType ?? '') : x.sourceLabel),
                  DetailRow.text(label: 'Dilaporkan', value: '${x.reportedByName ?? '—'} · ${BvFormat.dateTime(x.reportedAt)}'),
                  if (x.category != null) DetailRow.text(label: 'Kategori', value: humanize(x.category!)),
                  if (x.resolution != null) DetailRow.text(label: 'Resolusi', value: x.resolution!),
                ]),
              ),
              if (photos.isNotEmpty) ...[
                const SectionHeader(title: 'Foto', dotColor: BvTokens.info600),
                SectionCard(child: PhotoThumbnailRow(photos: [for (final a in photos) PhotoThumb(url: a.thumbUrl ?? a.url, id: a.id)], size: 84)),
              ],
              if (x.links.isNotEmpty) ...[
                const SectionHeader(title: 'Tindak lanjut', dotColor: BvTokens.neutral400),
                SectionCard(
                  padding: EdgeInsets.zero,
                  child: Column(children: [
                    for (final l in x.links)
                      ListTile(
                        leading: const Icon(Icons.link),
                        title: Text(l.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                        subtitle: Text(l.label),
                        trailing: StatusBadge(l.objectType, l.status, dense: true),
                        onTap: l.objectType == 'work_order' ? () => context.push('/work-orders/${l.objectId}') : l.objectType == 'task' ? () => context.push('/tasks/${l.objectId}') : null,
                      ),
                  ]),
                ),
              ],
              const SizedBox(height: 24),
            ],
          );
        },
      ),
      bottomNavigationBar: f.value != null && session.can(Perm.workOrdersCreate) && (f.value!.status == 'open' || f.value!.status == 'in_progress')
          ? BottomActionBar(children: [
              BvPrimaryButton(
                label: '${s.createWorkOrder} dari Temuan',
                icon: Icons.build_outlined,
                onPressed: () async {
                  final x = f.value!;
                  try {
                    final wo = await ref.read(findingsApiProvider).createWorkOrder(x.id, CreateWorkOrderInput(title: x.title, workOrderType: 'corrective', priority: x.severity == 'critical' ? 'critical' : x.severity == 'high' ? 'high' : 'medium', description: x.description, locationId: x.location.id, assetId: x.asset.id, requiresEvidence: true));
                    if (!context.mounted) return;
                    showInfo(context, 'Work Order ${wo.number} dibuat');
                    context.pushReplacement('/work-orders/${wo.id}');
                  } catch (e) {
                    if (context.mounted) showError(context, e);
                  }
                },
              ),
            ])
          : null,
    );
  }
}
