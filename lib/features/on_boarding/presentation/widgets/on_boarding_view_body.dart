import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          Assets.assetsImagesOnBoardingBg,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              minRadius: 25,
              child: Image.asset(
                Assets.assetsImagesOnBoardingPhoto1,
              ),
            ),
            SizedBox(height: 85),
            Text(
              'Find Trusted Doctors',
              style: AppStyles.styleMedium28,
            ),
            Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.', ),
          ],
        )
      ],
    );
  }
}
