import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureDoctorItem extends StatelessWidget {
  const FeatureDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 6),
              Text(
                '3.7',
                style: AppStyles.styleMedium10,
              ),
            ],
          ),
          Image.asset(
            Assets.assetsImagesFeatureDoctor1,
          ),
          SizedBox(height: 10),
          Text(
            'Dr. Crick',
            style: AppStyles.styleMedium18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$',
                style: AppStyles.styleMedium10.copyWith(color: Colors.green),
              ),
              Text(
                '25.00/ hours',
                style: AppStyles.styleLight12,
              )
            ],
          )
        ],
      ),
    );
  }
}
