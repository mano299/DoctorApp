import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium18,
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            'See all >',
            style: AppStyles.styleLight12,
          ),
        )
      ],
    );
  }
}
