import 'package:adaptaive_layout_practice/pages/widgets/custom_drawer.dart';
import 'package:adaptaive_layout_practice/pages/widgets/tablat_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDrawer(),
        Expanded(child: TablatLayout()),
      ],
    );
  }
}
