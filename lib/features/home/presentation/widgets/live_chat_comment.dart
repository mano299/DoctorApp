import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LiveChatComment extends StatelessWidget {
  const LiveChatComment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(Assets.assetsImagesLiveChatComment),
      ),
      title: Text(
        'Mohamed Magdy',
        style: AppStyles.styleMedium18.copyWith(color: Colors.white),
      ),
      subtitle: Text(
        'They treat immune system disorders',
        style:
            AppStyles.styleLight12.copyWith(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
