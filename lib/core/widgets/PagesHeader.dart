import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/pop_button.dart';
import 'package:flutter/material.dart';

class PagesHeader extends StatelessWidget {
  const PagesHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PopButton(),
        SizedBox(width: 19),
        Text(
          text,
          style: AppStyles.styleRegular18,
        ),
      ],
    );
  }
}
