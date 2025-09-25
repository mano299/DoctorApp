import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ],
    );
  }
}
