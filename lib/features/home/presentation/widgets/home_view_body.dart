import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/home/presentation/widgets/feature_doctor_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'illness_item_list_view.dart';
import 'live_doctors_list_view.dart';
import 'popular_doctor_list_view.dart';
import 'custom_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
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
                  child: const CustomTextField(
                    hintText: 'Search...',
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 50)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Doctors',
                  style: AppStyles.styleMedium18,
                ),
                SizedBox(height: 20),
                LiveDoctorsListView(),
                SizedBox(height: 40),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.11,
                  child: IllnessItemListView(),
                ),
                PopularDoctorsHeader(text: 'Popular Doctor'),
                SizedBox(
                  height: 280,
                  child: PopularDoctorListView(),
                ),
                SizedBox(height: 32),
                PopularDoctorsHeader(text: 'Feature Doctor'),
                SizedBox(height: 22),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: FeatureDoctorListView(),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
