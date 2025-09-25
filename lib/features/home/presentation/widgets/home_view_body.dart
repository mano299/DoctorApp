import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        CustomAppBar(),
        Positioned(
          top: 130,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextField(),
          ),
        )
      ],
    );
  }
}
