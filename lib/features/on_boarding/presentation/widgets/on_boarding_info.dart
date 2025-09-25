import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingInfo extends StatelessWidget {
  const OnBoardingInfo({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            minRadius: 25,
            child: Image.asset(
              onBoardingModel.image,
            ),
          ),
          SizedBox(height: 85),
          Text(
            onBoardingModel.title,
            style: AppStyles.styleMedium28,
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              textAlign: TextAlign.center,
              onBoardingModel.descreption,
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
