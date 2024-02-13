import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/books_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/similarBooks/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key, required this.booksModel});
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  BookDetailsSection(
                    booksModel: booksModel,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: width(context) * .06),
                    child: BooksActions(
                      booksModel: booksModel,
                    ),
                  ),
                ],
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// the embedded browser failed to load Error : JCEF is not supported in this env or failed to initialize
