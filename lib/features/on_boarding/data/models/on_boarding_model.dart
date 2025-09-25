import 'package:doctor_app/core/utils/app_images.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String descreption;

  const OnBoardingModel({
    required this.image,
    required this.title,
    required this.descreption,
  });

}

List<OnBoardingModel> models  = [
    OnBoardingModel(image: Assets.assetsImagesOnBoardingPhoto1, title: 'Find Trusted Doctors', descreption: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnBoardingModel(image: Assets.assetsImagesOnBoardingPhoto2, title: 'Choose Best Doctors', descreption: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnBoardingModel(image: Assets.assetsImagesOnBoardingPhoto3, title: 'Easy Appointments', descreption: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
  ];
