import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/book_session.dart/presentation/widgets/doctor_book_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/PagesHeader.dart';

class SelectTimeViewBody extends StatelessWidget {
  const SelectTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: PagesHeader(text: 'Select Time'),
            ),
            SizedBox(height: 34),
            DoctorBookCard()
          ],
        )
      ],
    );
  }
}
