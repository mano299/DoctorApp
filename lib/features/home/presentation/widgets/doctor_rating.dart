import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class DoctorRating extends StatefulWidget {
  const DoctorRating({super.key});

  @override
  State<DoctorRating> createState() => _DoctorRatingState();
}

class _DoctorRatingState extends State<DoctorRating> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return StarRating(
      size: 22.0,
      rating: rating,
      color: Color(0xffF6D060),
      borderColor: Colors.grey,
      allowHalfRating: true,
      starCount: 5,
      onRatingChanged: (rating) => setState(() {
        this.rating = rating;
      }),
    );
  }
}
