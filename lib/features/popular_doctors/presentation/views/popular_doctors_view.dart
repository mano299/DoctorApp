import 'package:doctor_app/features/popular_doctors/presentation/widgets/popular_doctors_view_body.dart';
import 'package:flutter/material.dart';

class PopularDoctorsView extends StatelessWidget {
  const PopularDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopularDoctorsViewBody(),
    );
  }
}
