import 'package:doctor_app/features/popular_doctors/presentation/widgets/category_doctor_item.dart';
import 'package:flutter/material.dart';

class CategoryDoctorListView extends StatelessWidget {
  const CategoryDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 8,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 14.0),
          child: CategoryDoctorItem(),
        ),
      ),
    );
  }
}
