import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksListItemsBuilder extends StatelessWidget {
  const SimilarBooksListItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * .14,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
            child: BookItemBuilder(
              thumbnailUrl: Assets.imagesTestImage,
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
