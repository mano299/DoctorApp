import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../book_session/presentation/views/select_time_view.dart';
import 'doctor_percentage.dart';

class FindDoctorItem extends StatelessWidget {
  const FindDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(Assets.assetsImagesDoctorCard1),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Dr. Shruti Kedia',
                          style: AppStyles.styleMedium18,
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.favorite_border_outlined),
                      ],
                    ),
                    Text(
                      'Tooths Dentist',
                      style: AppStyles.styleRegular14
                          .copyWith(color: Color(0xff0EBE7F)),
                    ),
                    Text(
                      '7 Years experience',
                      style: AppStyles.styleLight12,
                    ),
                    Row(
                      children: [
                        DoctorPercentage(text: '87%'),
                        SizedBox(width: 17),
                        DoctorPercentage(text: '69 Patient Stories'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Available',
                      style: AppStyles.styleMedium12
                          .copyWith(color: Color(0xff0EBE7F), fontSize: 13),
                    ),
                    Text(
                      '10:00 AM tomorrow',
                      style: AppStyles.styleMedium12
                          .copyWith(color: Color(0xff677294)),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0EBE7F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectTimeView(),
                        ));
                  },
                  child: Text(
                    'Book Now',
                    style:
                        AppStyles.styleMedium12.copyWith(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
