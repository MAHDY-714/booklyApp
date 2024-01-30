import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/splash_view_logo.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/splash_view_slogan.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    animationSplashView();
  }

  @override
  void dispose() {
    super.dispose();
    AnimationControllers._logoController.dispose();
    AnimationControllers._learnController.dispose();
    AnimationControllers._exploreController.dispose();
    AnimationControllers._inspiredController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SplashViewLogo(
                animationController: AnimationControllers._logoController),

            ///Slide Animation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SplashViewSlogan(
                  sLoagan: 'Learn',
                  animation: AnimationControllers._learnSlideAnimation,
                  paddingTop: 80,
                ),
                SplashViewSlogan(
                  sLoagan: 'Explore',
                  animation: AnimationControllers._exploreSlideAnimation,
                  paddingTop: 40,
                ),
                SplashViewSlogan(
                  sLoagan: 'Inspired',
                  animation: AnimationControllers._inspiredSlideAnimation,
                  paddingTop: 0.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void animationSplashView() {
    AnimationControllers._logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    AnimationControllers._learnController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    AnimationControllers._exploreController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    AnimationControllers._inspiredController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    AnimationControllers._learnSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(AnimationControllers._learnController);
    AnimationControllers._exploreSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(AnimationControllers._exploreController);
    AnimationControllers._inspiredSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(AnimationControllers._inspiredController);

    AnimationControllers._learnSlideAnimation.addListener(() {});
    AnimationControllers._exploreSlideAnimation.addListener(() {});
    AnimationControllers._inspiredSlideAnimation.addListener(() {});

    AnimationControllers._logoController.forward();
    AnimationControllers._learnController.forward().whenComplete(() {
      AnimationControllers._learnController.forward().whenComplete(() {
        AnimationControllers._exploreController.forward().whenComplete(() {
          AnimationControllers._inspiredController.forward().whenComplete(() {
            navigateToHome();
          });
        });
      });
    });
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      },
    );
  }
}

///AnimationControllers
class AnimationControllers {
  AnimationControllers._();

  ///for animate the Widget
  static late AnimationController _learnController;
  static late AnimationController _exploreController;
  static late AnimationController _inspiredController;
  static late AnimationController _logoController;

  ///for implement animationController
  static late Animation<Offset> _learnSlideAnimation;
  static late Animation<Offset> _exploreSlideAnimation;
  static late Animation<Offset> _inspiredSlideAnimation;
}
