import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/widgets/pop_button.dart';
import 'package:flutter/material.dart';

class LiveChatHeader extends StatelessWidget {
  const LiveChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          PopButton(),
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
