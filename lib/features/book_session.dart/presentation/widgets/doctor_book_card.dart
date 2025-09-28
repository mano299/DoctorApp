import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_rating.dart';
import 'package:flutter/material.dart';

class DoctorBookCard extends StatelessWidget {
  const DoctorBookCard({super.key});

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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(Assets.assetsImagesDoctorCard1),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. Shruti Kedia',
                      style: AppStyles.styleMedium18.copyWith(fontSize: 16),
                    ),
                    SizedBox(width: 120),
                    Icon(Icons.favorite_border_outlined),
                  ],
                ),
                Text(
                  'Upasana Dental Clinic, salt lake',
                  style: AppStyles.styleLight12,
                ),
                DoctorRating(rating: 4)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
