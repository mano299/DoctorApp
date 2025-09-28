import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorPercentage extends StatelessWidget {
  const DoctorPercentage({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: ShapeDecoration(
            color: const Color(0xFF0EBE7F),
            shape: OvalBorder(),
          ),
        ),
        SizedBox(width: 4),
        Text(
          text,
          style: AppStyles.styleLight12,
        ),
      ],
    );
  }
}
