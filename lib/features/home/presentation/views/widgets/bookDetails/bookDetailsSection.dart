import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestSeller/customAppBarBookDetails.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookRatingView.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/bookItemView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: width(context) * .26),
          child: const BookItemBuilder(),
        ),
        const SizedBox(height: 40),
        const Text(
          'Harry Potter and the Goblet of Fire',
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
            'J.K. Rowling',
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
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
