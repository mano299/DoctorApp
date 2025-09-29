import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class DoctorPercentage extends StatelessWidget {
  const DoctorPercentage({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDot(color: Color(0xFF0EBE7F)),
        SizedBox(width: 4),
        Text(
          text,
          style: AppStyles.styleLight12,
        ),
      ],
    );
  }
}

