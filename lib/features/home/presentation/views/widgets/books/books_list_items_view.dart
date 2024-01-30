import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';

class BookListViewItemsBuilder extends StatelessWidget {
  const BookListViewItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        itemBuilder: (index, context) {
          return const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: BookItemBuilder(),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
