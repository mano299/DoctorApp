import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingInfo extends StatelessWidget {
  const OnBoardingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Text(
            'Find Trusted Doctors',
            style: AppStyles.styleMedium28,
          ),
          SizedBox(height: 12),
          Align(
            alignment: Alignment.center,
            child: Text(
              """Contrary to popular belief, Lorem Ipsum is not simply
          random text. It has roots in a piece of it 
                                over 2000 years old.""",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRegular14,
            ),
          ),
        ],
      ),
    );
  }
}
