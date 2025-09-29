import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: ShapeDecoration(
        color: color,
        shape: OvalBorder(),
      ),
    );
  }
}
