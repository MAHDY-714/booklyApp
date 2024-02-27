import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widget/error_text_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    var searchCubit = BlocProvider.of<SearchBooksCubit>(context);
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksLoading) {
          return const LoadingIndecatorWidget();
        } else if (searchCubit.searchBooksList != null) {
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: searchCubit.searchBooksList?[index],
                      );
                    },
                    child: SearchItemBuilder(
                      booksModel: searchCubit.searchBooksList![index],
                    ),
                  ),
                );
              },
              itemCount: searchCubit.searchBooksList!.length,
            ),
          );
        } else if (searchCubit.searchBooksList == null) {
          return const ErrorTextWidget(
              errorMessage: 'search your favorite Books, Author, or Subject');
        } else if (state is SearchBooksFailure) {
          return ErrorTextWidget(errorMessage: state.errorMessage);
        } else if (searchCubit.searchBooksList!.isEmpty) {
          return const ErrorTextWidget(
              errorMessage: 'Search your favorite Books, Author, or Subject');
        } else {
          return const ErrorTextWidget(errorMessage: 'no Search Yet');
        }
      },
    );
  }
}
