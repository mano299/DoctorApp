import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/on_boarding/presentation/widgets/on_boarding_info.dart';
import 'package:flutter/material.dart';
import 'button_section.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
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
              OnBoardingInfo(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ButtonSection(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
