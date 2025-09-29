import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_dot.dart';
import 'package:doctor_app/features/Navigation/presentation/views/navigation_view.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_login_header.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLoginHeader(
              title: 'Join us to start searching',
              subTitle: """ You can search course, apply course and find
              scholarship for abroad studies""",
            ),
            SizedBox(height: 67),
          ],
        ),
      ],
    );
  }
}
//            CustomDot(color: Color(0xff677294).withOpacity(0.5)),
