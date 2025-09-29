import 'package:flutter/material.dart';

class IAgreeDot extends StatelessWidget {
  const IAgreeDot({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: ShapeDecoration(
        color: color,
        shape: OvalBorder(),
      ),
    );
  }
}
