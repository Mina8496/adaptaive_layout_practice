import 'package:adaptaive_layout_practice/pages/widgets/custom_list_tablat.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constrains) {
                if (constrains.maxWidth > 600) {
                  return CustomListTablat();
                } else {
                  return CustomSliverGrid();
                }
              },
            ),
          ),
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
