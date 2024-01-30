import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.imagesLogoText,
            height: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              Assets.imagesSearchBook,
              height: 20,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
