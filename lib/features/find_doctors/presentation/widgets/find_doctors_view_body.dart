import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/pop_button.dart';
import 'package:doctor_app/features/home/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'find_doctors_list_view.dart';

class FindDoctorsViewBody extends StatelessWidget {
  const FindDoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PopButton(),
                        SizedBox(width: 19),
                        Text(
                          'Find Doctors',
                          style: AppStyles.styleRegular18,
                        ),
                      ],
                    ),
                    SizedBox(height: 34),
                    CustomTextField(hintText: 'Dentist'),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              FindDoctorsListView(),
            ],
          ),
        ),
      ],
    );
  }
}
