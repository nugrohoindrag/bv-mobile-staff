import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Pilihan kondisi checklist (mockup FORM CHECKLIST): pill "Kondisi Baik" (hijau, smiley) /
/// "Kondisi Buruk" (merah). Nilai kontrak: `ok` | `not_ok` (item_type ok_not_ok) atau `yes` | `no`.
class ConditionToggle extends StatelessWidget {
  const ConditionToggle({
    super.key,
    required this.value,
    required this.onChanged,
    this.okValue = 'ok',
    this.notOkValue = 'not_ok',
    this.okLabel = 'Kondisi Baik',
    this.notOkLabel = 'Kondisi Buruk',
    this.enabled = true,
  });

  final String? value;
  final ValueChanged<String> onChanged;
  final String okValue;
  final String notOkValue;
  final String okLabel;
  final String notOkLabel;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: _Pill(
              label: okLabel,
              selected: value == okValue,
              color: BvTokens.success600,
              iconAsset: value == okValue ? 'assets/images/ic_satisfied_selected.png' : 'assets/images/ic_satisfied_unselected.png',
              iconRight: true,
              onTap: enabled ? () => onChanged(okValue) : null,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _Pill(
              label: notOkLabel,
              selected: value == notOkValue,
              color: BvTokens.critical600,
              iconAsset: value == notOkValue ? 'assets/images/ic_dissatisfied_selected.png' : 'assets/images/ic_dissatisfied_unselected.png',
              iconRight: false,
              onTap: enabled ? () => onChanged(notOkValue) : null,
            ),
          ),
        ],
      );
}

class _Pill extends StatelessWidget {
  const _Pill({required this.label, required this.selected, required this.color, required this.iconAsset, required this.iconRight, this.onTap});
  final String label;
  final bool selected;
  final Color color;
  final String iconAsset;
  final bool iconRight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final icon = Image.asset(iconAsset, package: 'bv_ui', width: 26, height: 26);
    final text = Text(label, style: TextStyle(color: selected ? Colors.white : color, fontWeight: selected ? FontWeight.w700 : FontWeight.w600, fontSize: 14));
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 52,
      decoration: BoxDecoration(
        color: selected ? color : Colors.white,
        borderRadius: BorderRadius.circular(BvTokens.radiusFull),
        border: Border.all(color: color, width: 1.5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(BvTokens.radiusFull),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconRight ? [text, const SizedBox(width: 8), icon] : [icon, const SizedBox(width: 8), text],
          ),
        ),
      ),
    );
  }
}
