import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.end,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.textStyle16,
        ),
        SizedBox(
          width: 4,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.textStyle10,
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
