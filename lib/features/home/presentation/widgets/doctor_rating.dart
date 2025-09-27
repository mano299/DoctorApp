import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class DoctorRating extends StatelessWidget {
  const DoctorRating({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return StarRating(
      size: 22.0,
      rating: rating,
      color: Color(0xffF6D060),
      borderColor: Colors.grey,
      allowHalfRating: false,
      starCount: 5,
      // onRatingChanged: (rating) => setState(() {
      //   this.rating = rating;
      // }),
    );
  }
}
