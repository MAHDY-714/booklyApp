import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/bookDetailsSection.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/booksActions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/similarBooks/similarBooksSection.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

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
                  const BookDetailsSection(),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: width(context) * .06),
                    child: const BooksActions(),
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
