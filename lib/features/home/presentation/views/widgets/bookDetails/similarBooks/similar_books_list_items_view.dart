import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/widget/error_text_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:bookly_app/features/home/presentation/manager/fetchSimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListItemsBuilder extends StatelessWidget {
  const SimilarBooksListItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: height(context) * .14,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
                child: BookItemBuilder(
                  thumbnailUrl: Assets.imagesTestImage,
                ),
              );
            },
            itemCount: 6,
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
