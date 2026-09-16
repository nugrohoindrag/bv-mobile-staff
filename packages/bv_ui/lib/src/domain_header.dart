import 'package:bv_core/bv_core.dart';
import 'package:flutter/material.dart';

/// Header Home berilustrasi per domain (mockup: "Engineering — Yosep Kuncoro" di atas ilustrasi teal).
class DomainHeader extends StatelessWidget {
  const DomainHeader({
    super.key,
    required this.domain,
    required this.userName,
    this.title,
    this.height = 210,
    this.trailing,
  });

  final Domain domain;
  final String userName;
  final String? title;
  final double height;
  final Widget? trailing;

  static String assetFor(Domain d) => switch (d) {
        Domain.security => 'assets/images/security_header_bg.png',
        Domain.housekeeping => 'assets/images/housekeeping_header_bg.png',
        Domain.engineering => 'assets/images/engineering_header_bg.png',
        Domain.operations => 'assets/images/bg_home_header.png',
      };

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return SizedBox(
      height: height + top,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const DecoratedBox(decoration: BoxDecoration(color: Color(0xFF4FB8B3))),
          Image.asset(assetFor(domain), package: 'bv_ui', fit: BoxFit.cover, alignment: Alignment.bottomCenter),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x66000000), Color(0x00000000)],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, top + 12, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text(
                    BvFormat.initials(userName),
                    style: const TextStyle(color: BvTokens.brand600, fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? domain.labelId,
                        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800, shadows: [Shadow(color: Color(0x55000000), blurRadius: 6)]),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        userName,
                        style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600, shadows: [Shadow(color: Color(0x55000000), blurRadius: 6)]),
                      ),
                    ],
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Panel putih melayang di bawah header (mockup: kartu "Saldo" / ringkasan hari ini).
class FloatingPanel extends StatelessWidget {
  const FloatingPanel({super.key, required this.child, this.overlap = 60, this.margin = 16});
  final Widget child;
  final double overlap;
  final double margin;

  @override
  Widget build(BuildContext context) => Transform.translate(
        offset: Offset(0, -overlap),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: margin),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(BvTokens.radiusLg),
            boxShadow: const [BoxShadow(color: Color(0x1F000000), blurRadius: 16, offset: Offset(0, 6))],
          ),
          child: child,
        ),
      );
}
