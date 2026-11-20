import 'package:adaptaive_layout_practice/pages/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const CustomSliverGrid(),
        const CustomSliverListView(),
      ],
    );
  }
}