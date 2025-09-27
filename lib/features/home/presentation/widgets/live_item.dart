import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveItem extends StatelessWidget {
  const LiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: SizedBox(
        width: 150,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image),
            Positioned(
              right: 30,
              top: 30,
              child: Image.asset(Assets.assetsImagesLiveRectangle),
            ),
            Positioned(
              top: 100,
              left: 60,
              child: Image.asset(
                Assets.assetsImagesPlayLiveIcon,
                width: 32,
                height: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
