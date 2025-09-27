import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class LiveChatHeader extends StatelessWidget {
  const LiveChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          ),
          Spacer(),
          CircleAvatar(
            maxRadius: 20,
            child: Image.asset(
              Assets.assetsImagesFeatureDoctor2,
            ),
          )
        ],
      ),
    );
  }
}
