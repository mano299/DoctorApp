import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureDoctorItem extends StatelessWidget {
  const FeatureDoctorItem(
      {super.key,
      required this.image,
      required this.name,
      required this.rating,
      required this.price});
  final String image;
  final String name;
  final String rating;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 20,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(width: 6),
                Text(
                  rating,
                  style: AppStyles.styleMedium10,
                ),
              ],
            ),
          ),
          Image.asset(
            image,
          ),
          SizedBox(height: 10),
          Text(
            name,
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
                '$price.00/ hours',
                style: AppStyles.styleLight12,
              )
            ],
          )
        ],
      ),
    );
  }
}
