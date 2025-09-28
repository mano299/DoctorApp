import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../data/models/favourite_doctor_model.dart';

class FavouriteDoctorItem extends StatelessWidget {
  const FavouriteDoctorItem({super.key, required this.favouriteDoctor});
  final FavouriteDoctorModel favouriteDoctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 40,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              fit: BoxFit.contain,
              favouriteDoctor.image,
            ),
          ),
          SizedBox(height: 14),
          Text(
            favouriteDoctor.name,
            style: AppStyles.styleMedium18,
          ),
          Text(
            favouriteDoctor.job,
            style: AppStyles.styleRegular14.copyWith(
              fontSize: 12,
              color: Color(0xff0EBE7E),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
