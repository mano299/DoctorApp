import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/pop_button.dart';
import 'package:flutter/material.dart';

class FindDoctorsViewBody extends StatelessWidget {
  const FindDoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PopButton(),
              SizedBox(width: 8),
              Text(
                'Find Doctors',
                style: AppStyles.styleRegular18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
