import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:doctor_app/features/on_boarding/presentation/widgets/on_boarding_info.dart';
import 'package:flutter/material.dart';
import 'button_section.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
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
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: PageView.builder(
                  itemCount: models.length,
                  itemBuilder: (context, index) =>
                      OnBoardingInfo(onBoardingModel: models[index]),
                ),
              ),
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
