import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/PagesHeader.dart';
import 'package:doctor_app/features/favourite_doctors/data/models/favourite_doctor_model.dart';
import 'package:doctor_app/features/favourite_doctors/widgets/favourite_doctor_item.dart';
import 'package:doctor_app/features/home/presentation/widgets/custom_text_field.dart';
import 'package:doctor_app/features/home/presentation/widgets/feature_doctor_list_view.dart';
import 'package:flutter/material.dart';

import '../../home/presentation/widgets/custom_header.dart';
import 'favourite_doctors_grid_view.dart';

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
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  PagesHeader(text: 'Favourite Doctors'),
                  SizedBox(height: 38),
                  CustomTextField(hintText: 'Dentist'),
                  SizedBox(height: 24),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    child: FavouriteDoctorsGridView(),
                  ),
                  CustomHeader(text: 'Feature Doctor'),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.18,
                    child: FeatureDoctorListView(),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
