import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class LiveItem extends StatelessWidget {
  const LiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 10,
                top: 10,
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
      ),
    );
  }
}
