import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashViewSlogan extends StatelessWidget {
  const SplashViewSlogan(
      {super.key,
      required this.sLoagan,
      required this.animation,
      required this.paddingTop});
  final String sLoagan;
  final Animation<Offset> animation;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: Container(
            padding: EdgeInsetsDirectional.only(bottom: 5, top: paddingTop),
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: Colors.white60,
                  width: 2.5,
                ),
              ),
            ),
            child: Text(
              sLoagan,
              // 'Icon',
              textAlign: TextAlign.center,
              style: TextStyles.textStyle20.copyWith(
                color: Colors.white60,
              ),
            ),
          ),
        );
      },
    );
  }
}
