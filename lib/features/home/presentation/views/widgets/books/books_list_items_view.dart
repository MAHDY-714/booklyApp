import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/widget/error_text_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:bookly_app/features/home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookListViewItemsBuilder extends StatelessWidget {
  const BookListViewItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksState>(builder: (context, state) {
      if (state is BooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
            padding: EdgeInsetsDirectional.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: BookItemBuilder(
                    thumbnailUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            Assets.imagesTestImage,
                  ),
                ),
              );
            },
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
          ),
        );
      } else if (state is BooksFailure) {
        return ErrorTextWidget(
          errorMessage: state.errorMessage,
        );
      } else {
        return const LoadingIndecatorWidget();
      }
    });
  }
}
