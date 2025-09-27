import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PopularDoctorsHeader extends StatelessWidget {
  const PopularDoctorsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Doctor',
          style: AppStyles.styleMedium18,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all >',
            style: AppStyles.styleLight12,
          ),
        )
      ],
    );
  }
}
