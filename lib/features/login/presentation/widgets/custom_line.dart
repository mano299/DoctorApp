import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 5,
      decoration: ShapeDecoration(
        color: const Color(0xFFC4C4C4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
