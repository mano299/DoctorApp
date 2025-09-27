import 'package:doctor_app/features/find_doctors/presentation/widgets/find_doctors_view_body.dart';
import 'package:flutter/material.dart';

class FindDoctorsView extends StatelessWidget {
  const FindDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FindDoctorsViewBody(),
    );
  }
}
