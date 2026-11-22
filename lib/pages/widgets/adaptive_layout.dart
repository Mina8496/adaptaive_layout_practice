import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final Widget mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrais) {
        if (constrais.maxWidth < 600) {
          return mobileLayout;
        } else if (constrais.maxWidth < 900) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
