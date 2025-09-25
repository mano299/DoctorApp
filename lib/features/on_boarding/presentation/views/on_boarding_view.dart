import 'package:doctor_app/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
    PageView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Placeholder(),
    );
  }
}
