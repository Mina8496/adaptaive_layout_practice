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
      appBar: buildAppBar(context),
      body: HomePageBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width - 32 <= 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.white),
            ),
          )
        : null;
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth < 900) {
//           return AppBar(
//             backgroundColor: Colors.black,
//             leading: IconButton(
//               onPressed: () {
//                 // scaffoldKey.currentState!.openDrawer();
//               },
//               icon: Icon(Icons.menu, color: Colors.white),
//             ),
//           );
//         } else {
//           return SizedBox();
//         }
//       },
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(56);
// }
