import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/find_doctors/presentation/views/find_doctors_view.dart';
import 'package:doctor_app/features/home/presentation/widgets/illness_item.dart';
import 'package:flutter/material.dart';

class IllnessItemListView extends StatelessWidget {
  const IllnessItemListView({super.key});
  final List<IllnessItem> items = const [
    IllnessItem(
      backgroundColors: [
        Color(0xff2753F3),
        Color(0xff765AFC),
      ],
      icon: Assets.assetsImagesToothIcon,
    ),
    IllnessItem(
      backgroundColors: [
        Color(0xff0EBE7E),
        Color(0xff07D9AD),
      ],
      icon: Assets.assetsImagesHeartIcon,
    ),
    IllnessItem(
      backgroundColors: [
        Color(0xffFE7F44),
        Color(0xffFFCF68),
      ],
      icon: Assets.assetsImagesEyeIcon,
    ),
    IllnessItem(
      backgroundColors: [
        Color(0xffFF484C),
        Color(0xffFF6C60),
      ],
      icon: Assets.assetsImagesBodyIcon,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 16.0, bottom: 4),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FindDoctorsView(),
                ),
              );
            },
            child: items[index]),
      ),
    );
  }
}
