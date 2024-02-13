import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/utils/widget/custom_button.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomButton(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(12),
            bottomStart: Radius.circular(12),
          ),
          textColor: kRedLightColor,
          text: 'Free',
        )),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              customLaunchUrl(context, 'booksModel.volumeInfo.previewLink!');
            },
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(12),
              bottomEnd: Radius.circular(12),
            ),
            backgroundColor: kRedColor,
            textColor: Colors.white,
            // text: 'Preview',
            text: textPreviewBook(booksModel),
            textSize: 16,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}

String textPreviewBook(BooksModel booksModel) {
  if (booksModel.volumeInfo.previewLink != null) {
    return 'Preview';
  } else {
    return 'no Available';
  }
}
