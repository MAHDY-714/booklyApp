import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class LoadingIndecatorWidget extends StatelessWidget {
  const LoadingIndecatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Opacity(
      opacity: .2,
      child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsetsDirectional.all(8),
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.5),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white.withOpacity(.8),
                width: 1,
              )),
          child: const CircularProgressIndicator(
            color: kRedLightColor,
          )),
    ));
  }
}
