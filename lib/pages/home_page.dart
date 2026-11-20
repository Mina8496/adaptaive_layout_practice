import 'package:adaptaive_layout_practice/pages/widgets/custom_drawer.dart';
import 'package:adaptaive_layout_practice/pages/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffDBDBDB),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      body: HomePageBody(),
    );
  }
}
