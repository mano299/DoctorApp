import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'doctor_rating.dart';

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              fit: BoxFit.cover,
              Assets.assetsImagesPopularDoctor1,
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Dr. Fillerup Grab',
            style: AppStyles.styleMedium18,
          ),
          Text(
            'Medicine Specialist',
            style: AppStyles.styleLight12,
          ),
          DoctorRating(),
        ],
      ),
    );
  }
}
