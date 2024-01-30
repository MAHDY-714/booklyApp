import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewLogo extends StatelessWidget {
  const SplashViewLogo({super.key, required this.animationController});
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: animationController.value,
          child: Image.asset(
            Assets.imagesBooklyLogo,
          ),
        );
      },
    );
  }
}
