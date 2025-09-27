import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveItem extends StatelessWidget {
  const LiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Image.asset(Assets.assetsImagesDoctorPhoto),
          Positioned(
            right: 30,
            top: 30,
            child: Image.asset(Assets.assetsImagesLiveRectangle),
          ),
          Positioned(
            top: 100,
            left: 60,
            child: SvgPicture.asset(Assets.assetsImagesPlayLiveIcon),
          ),
        ],
      ),
    );
  }
}
