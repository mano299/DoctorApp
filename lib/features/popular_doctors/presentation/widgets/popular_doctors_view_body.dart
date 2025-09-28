import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/pop_button.dart';
import 'package:doctor_app/features/home/presentation/widgets/custom_header.dart';
import 'package:doctor_app/features/home/presentation/widgets/popular_doctor_list_view.dart';
import 'package:doctor_app/features/popular_doctors/presentation/widgets/category_doctor_item.dart';
import 'package:flutter/material.dart';

import 'category_doctor_list_view.dart';

class PopularDoctorsViewBody extends StatelessWidget {
  const PopularDoctorsViewBody({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Row(
                      children: [
                        PopButton(),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search_sharp),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    PopularDoctorsHeader(text: "Popular Doctor"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.32,
                      child: PopularDoctorListView(),
                    ),
                    Text(
                      'Category',
                      style: AppStyles.styleMedium18,
                    ),
                    SizedBox(height: 17),
                  ],
                ),
              ),
              CategoryDoctorListView(),
            ],
          ),
        )
      ],
    );
  }
}
