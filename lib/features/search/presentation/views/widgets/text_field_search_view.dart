import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextFieldSearchView extends StatelessWidget {
  const TextFieldSearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      style: TextStyles.searchTextStyle,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white38,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.white60,
            width: 1.5,
          ),
        ),
        filled: true,
        fillColor: Colors.redAccent.withOpacity(.015),
        hintText: 'Search Books',
        hintStyle: TextStyles.hintTextStyle,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Image.asset(
            Assets.imagesSearchBook,
            height: 20,
            color: Colors.white60,
          ),
        ),
      ),
    );
  }
}
