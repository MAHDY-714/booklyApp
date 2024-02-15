import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.booksModel,
  });
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: kWidth(context) * .26),
          child: BookItemBuilder(
            thumbnailUrl: booksModel.volumeInfo.imageLinks?.thumbnail ??
                Assets.imagesTestImage,
          ),
        ),
        const SizedBox(height: 40),
        Text(
          booksModel.volumeInfo.title!,
          // 'The Jungle Book',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            booksModel.volumeInfo.authors?[0] ?? 'unKnown',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyles.textStyle18.copyWith(
              fontFamily: GoogleFonts.montserrat(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ).fontFamily,
            ),
          ),
        ),
        const SizedBox(height: 15),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          ratingsCount: booksModel.volumeInfo.ratingsCount ?? 0,
          averageRating: booksModel.volumeInfo.averageRating ?? 0,
        ),
      ],
    );
  }
}
