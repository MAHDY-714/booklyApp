import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/widget/customButton.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(12),
            bottomStart: Radius.circular(12),
          ),
          textColor: kRedLightColor,
          text: '19.99€',
        )),
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(12),
              bottomEnd: Radius.circular(12),
            ),
            backgroundColor: kRedColor,
            textColor: Colors.white,
            text: 'Free preview',
            textSize: 16,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
