import 'package:doctor_app/features/favourite_doctors/widgets/favourite_doctors_view_body.dart';
import 'package:flutter/material.dart';

class FavouriteDoctorsView extends StatelessWidget {
  const FavouriteDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavouriteDoctorsViewBody(),
    );
  }
}