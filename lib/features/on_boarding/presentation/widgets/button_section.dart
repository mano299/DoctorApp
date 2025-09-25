import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0EBE7F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Text(
                'Get Started',
                style: AppStyles.styleMedium18,
              ),
            ),
          ),
        ),
        SizedBox(height: 14),
        Text(
          'Skip',
          style: AppStyles.styleRegular14,
        )
      ],
    );
  }
}
