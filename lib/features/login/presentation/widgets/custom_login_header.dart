import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader(
      {super.key,
      required this.title,
      required this.subTitle,
      this.crossAxisAlignment = CrossAxisAlignment.center});
  final String title;
  final String subTitle;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment!,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium24,
        ),
        SizedBox(height: 15),
        Text(
          subTitle,
          style: AppStyles.styleRegular14,
        )
      ],
    );
  }
}
