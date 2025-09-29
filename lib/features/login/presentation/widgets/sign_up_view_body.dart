import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_dot.dart';
import 'package:doctor_app/core/widgets/transparent_text_field.dart';
import 'package:doctor_app/features/Navigation/presentation/views/navigation_view.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_login_header.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_platform_button.dart';
import 'package:doctor_app/features/login/presentation/widgets/i_agree_line.dart';
import 'package:doctor_app/features/login/presentation/widgets/register_text_fields_section.dart';
import 'package:flutter/material.dart';

import 'i_agree_dot.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomLoginHeader(
                      title: 'Join us to start searching',
                      subTitle: """ You can search course, apply course and find
                    scholarship for abroad studies""",
                    ),
                    SizedBox(height: 67),
                    Row(
                      children: [
                        CustomPlatformButton(
                          text: 'Google',
                          image: Assets.assetsImagesGoogleIcon,
                        ),
                        SizedBox(width: 15),
                        CustomPlatformButton(
                          text: 'FaceBook',
                          image: Assets.assetsImagesFacebookIcon,
                        ),
                      ],
                    ),
                    SizedBox(height: 34),
                    RegisterTextFieldsSection(),
                    SizedBox(height: 14),
                    IAgreeLine(),
                    CustomButton(text: 'Sign up'),
                    SizedBox(height: 46),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
