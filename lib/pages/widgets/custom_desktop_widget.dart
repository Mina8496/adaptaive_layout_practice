import 'package:adaptaive_layout_practice/pages/widgets/custom_item.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_item_2.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: CustomItem(),
          ),
        ),
        SizedBox(height: 16),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
