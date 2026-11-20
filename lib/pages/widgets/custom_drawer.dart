import 'package:adaptaive_layout_practice/model/drawer_item_model.dart';
import 'package:adaptaive_layout_practice/pages/widgets/custom_drawer_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'D A S H B O A R D', icons: Icons.home),
    DrawerItemModel(title: 'S E T T I N G S', icons: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icons: Icons.info),
    DrawerItemModel(title: 'L O G O U T', icons: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: FaIcon(FontAwesomeIcons.solidHeart, size: 68)),
          CustomDrawerItemListView(items: items),
        ],
      ),
    );
  }
}
