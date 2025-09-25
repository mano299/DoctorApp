import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xff0EBE7E),
            Color(0xff07D9AD),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          ListTile(
            title: Text(
              'Hi Handwerker!',
              style: AppStyles.styleLight20,
            ),
            subtitle: Text(
              'Find Your Doctor',
              style: AppStyles.styleBold20,
            ),
            trailing: Image.asset(Assets.assetsImagesAppBarPhoto),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
