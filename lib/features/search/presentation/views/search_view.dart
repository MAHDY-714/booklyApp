import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        return const Scaffold(
          body: SafeArea(
            child: SearchViewBody(),
          ),
        );
      },
    );
  }
}
