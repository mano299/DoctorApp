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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(colors: backgroundColors),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 30,
            offset: Offset(0, 4),
            spreadRadius: 2,
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
