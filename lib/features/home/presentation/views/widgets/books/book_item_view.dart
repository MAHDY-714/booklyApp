import 'package:flutter/material.dart';

class BookItemBuilder extends StatelessWidget {
  const BookItemBuilder({
    super.key,
    required this.thumbnailUrl,
  });
  final String thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //a1/a2
      //a1 : a2
      //a1 => width, a2=> height
      aspectRatio: 2.6 / 4,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            isAntiAlias: true,
            image: NetworkImage(
              thumbnailUrl,
            ),
          ),
        ),
      ),
    );
  }
}
