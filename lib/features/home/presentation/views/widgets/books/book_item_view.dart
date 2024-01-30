import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookItemBuilder extends StatelessWidget {
  const BookItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //a1/a2
      //a1 : a2
      //a1 => width, a2=> height
      aspectRatio: 2.6 / 4,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            isAntiAlias: true,
            image: AssetImage(Assets.imagesTestImage),
          ),
        ),
      ),
    );
  }
}
