import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';

class ToggleSearchRowView extends StatelessWidget {
  const ToggleSearchRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            textColor: Colors.white,
            text: 'Author',
            backgroundColor: kSearchColor,
            borderRadius: BorderRadiusDirectional.circular(16),
            textSize: 16,
            fontWeight: FontWeight.normal,
            borderColor: Colors.white24,
            onPressed: () {},
          ),
          CustomButton(
            textColor: Colors.white,
            text: 'Title',
            backgroundColor: kSearchColor,
            borderRadius: BorderRadiusDirectional.circular(16),
            textSize: 16,
            fontWeight: FontWeight.normal,
            borderColor: Colors.white24,
            onPressed: () {},
          ),
          CustomButton(
            textColor: Colors.white,
            text: 'Subject',
            backgroundColor: kSearchColor,
            borderRadius: BorderRadiusDirectional.circular(16),
            textSize: 16,
            fontWeight: FontWeight.normal,
            borderColor: Colors.white24,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
