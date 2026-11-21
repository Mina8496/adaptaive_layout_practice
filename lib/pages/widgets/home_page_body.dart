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
      child: LayoutBuilder(
        builder: (context, constrais) {
          if (constrais.maxWidth < 600) {
            return MobileLayout();
          } else if (constrais.maxWidth < 900) {
            return TablatLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}
