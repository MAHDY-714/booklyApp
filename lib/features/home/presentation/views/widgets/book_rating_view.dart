import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final num averageRating;
  final int ratingsCount;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.end,
    required this.ratingsCount,
    required this.averageRating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          averageRating.toString(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.textStyle16,
        ),
        const SizedBox(
          width: 4,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($ratingsCount)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.textStyle10,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
