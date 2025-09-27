import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late AnimationController logoAnimationController;
  late Animation<Offset> textSlidingAnimation;
  late Animation<Offset> logoSlidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.assetsImagesSplashBg,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                    position: logoSlidingAnimation,
                    child: SvgPicture.asset(Assets.assetsImagesSplashLogo)),
                SizedBox(height: 12),
                SlideTransition(
                  position: textSlidingAnimation,
                  child: Text(
                    'Doctor Hunt',
                    style: AppStyles.styleBold25,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    logoAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    textSlidingAnimation = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset.zero,
    ).animate(textAnimationController);

    logoSlidingAnimation = Tween<Offset>(
      begin: Offset(0, -3),
      end: Offset.zero,
    ).animate(logoAnimationController);

    logoAnimationController.forward();
    textAnimationController.forward();
  }
}
