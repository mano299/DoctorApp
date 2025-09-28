import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_rating.dart';
import 'package:flutter/material.dart';

import 'doctor_review.dart';

class CategoryDoctorItem extends StatelessWidget {
  const CategoryDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(Assets.assetsImagesCategoryDoctor1),
          SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dr. Pediatrician',
                        style: AppStyles.styleMedium18,
                      ),
                      Icon(Icons.favorite_border_rounded)
                    ],
                  ),
                  Text(
                    'Specialist Cardiologist',
                    style: AppStyles.styleLight12.copyWith(fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DoctorRating(rating: 4),
                      DoctorReview(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
