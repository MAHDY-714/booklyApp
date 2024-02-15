import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    required this.textColor,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.onPressed,
  });

  final BorderRadiusDirectional? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final String text;
  final double? textSize;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
            side: BorderSide(
              color: borderColor != null ? Colors.white : Colors.transparent,
              width: .01,
            ),
          ),
        ),
        onPressed: onPressed,
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
