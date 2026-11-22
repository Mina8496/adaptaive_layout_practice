import 'package:adaptaive_layout_practice/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptaiveLayoutPractice());
}

class AdaptaiveLayoutPractice extends StatelessWidget {
  const AdaptaiveLayoutPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
