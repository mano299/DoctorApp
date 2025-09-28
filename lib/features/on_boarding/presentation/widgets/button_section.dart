import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/Navigation/presentation/views/navigation_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigationView(),
              ),
            );
          },
          child: SizedBox(
            width: double.infinity,
            height: 54,
            child: CustomButton(
              text: 'Get Started',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigationView(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 14),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigationView(),
              ),
            );
          },
          child: Text(
            'Skip',
            style: AppStyles.styleRegular14,
          ),
        )
      ],
    );
  }
}
