import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/PagesHeader.dart';
import 'package:flutter/material.dart';

class FavouriteDoctorsViewBody extends StatelessWidget {
  const FavouriteDoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              PagesHeader(text: 'Favourite Doctors'),
            ],
          ),
        )
      ],
    );
  }
}
