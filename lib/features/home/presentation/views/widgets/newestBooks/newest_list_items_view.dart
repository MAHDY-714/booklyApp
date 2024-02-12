import 'package:bookly_app/core/utils/widget/error_text_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newestBooks/newset_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/newest_books_cubit/newest_books_cubit.dart';

class NewestListViewItemsBuilder extends StatelessWidget {
  const NewestListViewItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.all(10),
                child: NewestItemBuilder(
                  booksModel: state.books[index],
                ),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return ErrorTextWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const LoadingIndecatorWidget();
        }
      },
    );
  }
}
