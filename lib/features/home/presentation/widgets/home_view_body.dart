import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'illness_item_list_view.dart';
import 'live_doctors_list_view.dart';
import 'popular_doctors_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Image.asset(
            //   Assets.assetsImagesSplashBg,
            //   width: double.infinity,
            //   height: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            const CustomAppBar(),
            Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const CustomTextField(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Live Doctors',
                style: AppStyles.styleMedium18.copyWith(color: Colors.black),
              ),
              LiveDoctorsListView(),
              SizedBox(height: 42),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.11,
                child: IllnessItemListView(),
              ),
              PopularDoctorsHeader()
            ],
          ),
        )
      ],
    );
  }
}
