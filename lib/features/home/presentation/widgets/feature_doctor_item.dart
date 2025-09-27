import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureDoctorItem extends StatefulWidget {
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
  State<FeatureDoctorItem> createState() => _FeatureDoctorItemState();
}

class _FeatureDoctorItemState extends State<FeatureDoctorItem> {
  Color iconColor = Colors.grey;
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
                  onPressed: () {
                    if (iconColor != Colors.red) {
                      iconColor = Colors.red;
                    } else {
                      iconColor = Colors.grey;
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    iconColor == Colors.red
                        ? Icons.favorite
                        : Icons.favorite_border_rounded,
                    size: 20,
                    color: iconColor,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(width: 6),
                Text(
                  widget.rating,
                  style: AppStyles.styleMedium10,
                ),
              ],
            ),
          ),
          Image.asset(
            widget.image,
          ),
          SizedBox(height: 10),
          Text(
            widget.name,
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
                '${widget.price}.00/ hours',
                style: AppStyles.styleLight12,
              )
            ],
          )
        ],
      ),
    );
  }
}
