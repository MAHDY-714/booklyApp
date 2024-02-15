import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';

class SearchItemBuilder extends StatelessWidget {
  const SearchItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSearchColor,
        border: Border.all(
          color: Colors.white30,
          width: .2,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: kWidth(context) * .32,
            child: const BookItemBuilder(
              thumbnailUrl: Assets.imagesTestImage,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(2.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ficciones. C Edited and with an Introduction by Anthony Kerrigan',
                    style: TextStyles.searchTitleBookTextStyle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Jorge Luis Borges',
                    style: TextStyles.searchAuthorBookTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Fiction',
                    style: TextStyles.searchSubjectBookTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
