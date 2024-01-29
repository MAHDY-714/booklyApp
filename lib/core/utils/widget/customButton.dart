import 'dart:developer';

import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    required this.textColor,
    required this.text,
    this.textSize,
    this.fontWeight,
  });

  final BorderRadiusDirectional? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final double? textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          log(width(context).toString());
          log(height(context).toString());
        },
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.textStyle18.copyWith(
            fontSize: textSize,
            color: textColor,
            fontFamily: GoogleFonts.montserrat(
              fontWeight: fontWeight ?? FontWeight.w900,
            ).fontFamily,
          ),
        ),
      ),
    );
  }
}
