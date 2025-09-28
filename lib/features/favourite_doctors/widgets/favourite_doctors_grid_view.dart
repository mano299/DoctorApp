import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../data/models/favourite_doctor_model.dart';
import 'favourite_doctor_item.dart';

class FavouriteDoctorsGridView extends StatelessWidget {
  const FavouriteDoctorsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.73,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => FavouriteDoctorItem(
        favouriteDoctor: FavouriteDoctorModel(
          image: Assets.assetsImagesPopularDoctor1,
          name: 'Dr. Shouey',
          job: 'Specalist Cardiology',
        ),
      ),
    );
  }
}
