import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestItemBuilder extends StatelessWidget {
  const NewestItemBuilder({
    super.key,
    required this.booksModel,
  });

  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(booksModel.volumeInfo.averageRating);
        print(booksModel.volumeInfo.ratingsCount);
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            BookItemBuilder(
              thumbnailUrl: booksModel.volumeInfo!.imageLinks.thumbnail,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Text(
                      booksModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textStyle20,
                    ),
                  ),
                  Text(
                    booksModel.volumeInfo!.authors![0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.textStyle14.copyWith(
                      color: const Color(0xffc1c1c1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.textStyle20.copyWith(
                          fontFamily: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                          ).fontFamily,
                        ),
                      ),
                      BookRating(
                        ratingsCount: booksModel.volumeInfo.ratingsCount ?? 0,
                        averageRating: booksModel.volumeInfo.averageRating ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
