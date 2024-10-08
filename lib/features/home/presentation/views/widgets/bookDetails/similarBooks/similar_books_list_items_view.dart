import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/widget/error_text_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:bookly_app/features/home/presentation/manager/fetchSimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListItemsBuilder extends StatelessWidget {
  const SimilarBooksListItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: kHeight(context) * .14,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
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
            shrinkWrap: true,
          ),
        );
      } else if (state is SimilarBooksFailure) {
        return ErrorTextWidget(errorMessage: state.errorMessage);
      } else {
        return const LoadingIndecatorWidget();
      }
    });
  }
}
