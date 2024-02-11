import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ErrorIconWidget extends StatelessWidget {
  const ErrorIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.error,
      color: kRedColor,
      size: 34,
    );
  }
}
