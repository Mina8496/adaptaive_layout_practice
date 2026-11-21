import 'package:adaptaive_layout_practice/pages/widgets/custom_list_tablat.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class TablatLayout extends StatelessWidget {
  const TablatLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const CustomListTablat(),
        const CustomSliverListView(),
      ],
    );
  }
}
