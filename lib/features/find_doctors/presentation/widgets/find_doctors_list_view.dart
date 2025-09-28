import 'package:doctor_app/features/find_doctors/presentation/widgets/find_doctor_item.dart';
import 'package:flutter/material.dart';

class FindDoctorsListView extends StatelessWidget {
  const FindDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: FindDoctorItem(),
        ),
      ),
    );
  }
}
