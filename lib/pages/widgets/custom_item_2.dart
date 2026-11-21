import 'package:flutter/material.dart';

class CustomItem2 extends StatelessWidget {
  const CustomItem2({this.color, super.key});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
