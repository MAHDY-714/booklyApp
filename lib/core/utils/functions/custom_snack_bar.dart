import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kRedLightColor.withOpacity(.7),
      padding: const EdgeInsetsDirectional.all(5),
      content: Text(
        "Can't launch $text",
        textAlign: TextAlign.center,
        style: TextStyles.textStyle16.copyWith(
          color: Colors.blue[700],
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue[700],
        ),
      ),
    ),
  );
}
