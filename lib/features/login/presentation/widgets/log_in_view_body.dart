import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/features/Navigation/presentation/views/navigation_view.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_login_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/transparent_text_field.dart';
import 'custom_platform_button.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.assetsImagesSplashBg,
            fit: BoxFit.cover,
          ),
          CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLoginHeader(
                        title: 'Welcome back',
                        subTitle:
                            """You can search course, apply course and find
                  scholarship for abroad studies""",
                      ),
                      const SizedBox(height: 67),
                      Row(
                        children: [
                          CustomPlatformButton(
                            text: 'Google',
                            image: Assets.assetsImagesGoogleIcon,
                          ),
                          const SizedBox(width: 15),
                          CustomPlatformButton(
                            text: 'FaceBook',
                            image: Assets.assetsImagesFacebookIcon,
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      TransparentTextField(
                        hint: 'Email',
                      ),
                      SizedBox(height: 18),
                      TransparentTextField(
                        hint: 'Password',
                        password: true,
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: CustomButton(
                            text: 'Login',
                            ontap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationView(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigationView(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot password',
                          style: AppStyles.styleRegular14
                              .copyWith(color: Color(0xff0EBE7F)),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
