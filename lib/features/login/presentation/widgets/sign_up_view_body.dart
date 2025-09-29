import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_login_header.dart';
import 'package:doctor_app/features/login/presentation/widgets/custom_platform_button.dart';
import 'package:doctor_app/features/login/presentation/widgets/i_agree_line.dart';
import 'package:doctor_app/features/login/presentation/widgets/register_text_fields_section.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.assetsImagesSplashBg,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomLoginHeader(
                              title: 'Join us to start searching',
                              subTitle:
                                  """ You can search course, apply course and find
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
                            RegisterTextFieldsSection(),
                            const SizedBox(height: 14),
                            IAgreeLine(),
                          ],
                        ),
                      ),
                      SizedBox(height: keyboardHeight > 0 ? 20 : 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: CustomButton(text: 'Sign up'),
                        ),
                      ),
                      const SizedBox(height: 17),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Have an account? Log in',
                          style: AppStyles.styleRegular14
                              .copyWith(color: Color(0xff0EBE7F)),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
