import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/home/presentation/widgets/feature_doctor_item.dart';
import 'package:flutter/material.dart';

class FeatureDoctorListView extends StatelessWidget {
  const FeatureDoctorListView({super.key});
  final List<FeatureDoctorItem> items = const [
    FeatureDoctorItem(
      image: Assets.assetsImagesFeatureDoctor1,
      name: 'Dr. Crick',
      rating: '3.7',
      price: '25',
    ),
    FeatureDoctorItem(
      image: Assets.assetsImagesFeatureDoctor2,
      name: 'Dr. Strain',
      rating: '3.0',
      price: '22',
    ),
    FeatureDoctorItem(
      image: Assets.assetsImagesFeatureDoctor3,
      name: 'Dr. Lachinet',
      rating: '2.9',
      price: '29',
    ),
    FeatureDoctorItem(
      image: Assets.assetsImagesFeatureDoctor2,
      name: 'Dr. Strain',
      rating: '3.0',
      price: '22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: items[index],
      ),
    );
  }
}
