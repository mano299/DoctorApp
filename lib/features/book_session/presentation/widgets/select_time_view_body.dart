import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/features/book_session/presentation/widgets/book_days_item.dart';
import 'package:doctor_app/features/book_session/presentation/widgets/books_days_item_list_view.dart';
import 'package:doctor_app/features/book_session/presentation/widgets/doctor_book_card.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              PagesHeader(text: 'Select Time'),
              SizedBox(height: 34),
              DoctorBookCard(),
              SizedBox(height: 24),
              SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  child: BooksDaysItemListView())
            ],
          ),
        )
      ],
    );
  }
}
