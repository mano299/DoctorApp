import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/home/presentation/widgets/popular_doctor_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/popular_doctor_model.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key});
  final List<PopularDoctorItem> items = const [
    PopularDoctorItem(
      popularDoctorModel: PopularDoctorModel(
        image: Assets.assetsImagesPopularDoctor1,
        name: 'Dr. Fillerup Grab',
        descreption: 'Medicine Specialist',
        rating: 4,
      ),
    ),
    PopularDoctorItem(
      popularDoctorModel: PopularDoctorModel(
        image: Assets.assetsImagesPopularDoctor2,
        name: 'Dr. Blessing',
        descreption: 'Dentist Specialist',
        rating: 4,
      ),
    ),
    PopularDoctorItem(
      popularDoctorModel: PopularDoctorModel(
        image: Assets.assetsImagesPopularDoctor1,
        name: 'Dr. Medinew',
        descreption: 'Heart Specialist',
        rating: 4,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: items[index],
      ),
    );
  }
}
