import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/data/models/popular_doctor_model.dart';
import 'package:flutter/material.dart';

import 'doctor_rating.dart';

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({super.key, required this.popularDoctorModel});
  final PopularDoctorModel popularDoctorModel;
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
              fit: BoxFit.contain,
              popularDoctorModel.image,
            ),
          ),
          SizedBox(height: 14),
          Text(
            popularDoctorModel.name,
            style: AppStyles.styleMedium18,
          ),
          Text(
            popularDoctorModel.descreption,
            style: AppStyles.styleLight12,
          ),
          SizedBox(height: 6),
          DoctorRating(rating: popularDoctorModel.rating),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
