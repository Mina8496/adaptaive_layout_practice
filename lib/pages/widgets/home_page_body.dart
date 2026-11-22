import 'package:adaptaive_layout_practice/pages/widgets/adaptive_layout.dart';
import 'package:adaptaive_layout_practice/pages/widgets/desktop_layout.dart';
import 'package:adaptaive_layout_practice/pages/widgets/mobile_layout.dart';
import 'package:adaptaive_layout_practice/pages/widgets/tablat_layout.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TablatLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
