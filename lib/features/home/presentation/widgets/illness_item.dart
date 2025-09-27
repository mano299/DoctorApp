import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IllnessItem extends StatelessWidget {
  const IllnessItem(
      {super.key, required this.backgroundColors, required this.icon});
  final List<Color> backgroundColors;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: backgroundColors ?? [Colors.blue, Colors.blueAccent]),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 8,
            offset: Offset(0, 6),
            spreadRadius: 1,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 26),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
