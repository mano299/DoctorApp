import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/custom_dot.dart';
import 'package:doctor_app/features/Navigation/presentation/views/navigation_view.dart';
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
          children: [
            CustomDot(color: Color(0xff677294).withOpacity(0.5)),
          ],
        ),
      ],
    );
  }
}
