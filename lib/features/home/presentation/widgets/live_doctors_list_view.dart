import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/home/presentation/widgets/live_item.dart';
import 'package:flutter/material.dart';

class LiveDoctorsListView extends StatelessWidget {
  const LiveDoctorsListView({super.key});
  final List<LiveItem> items = const [
    LiveItem(image: Assets.assetsImagesLiveDoctor),
    LiveItem(image: Assets.assetsImagesLiveDoctor2),
    LiveItem(image: Assets.assetsImagesLiveDoctor3),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: items[index],
        ),
      ),
    );
  }
}
