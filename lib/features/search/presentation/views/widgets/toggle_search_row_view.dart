import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/toggle_search_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleSearchRowView extends StatelessWidget {
  const ToggleSearchRowView({super.key});

  @override
  Widget build(BuildContext context) {
    var searchCubit = BlocProvider.of<SearchBooksCubit>(context);
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ToggleSearchItemBuilder(
            index: index,
            onPressed: () {
              searchCubit.searchCategoriesBooks(
                index,
                searchCubit.searchValue,
              );
            },
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: searchCubit.searchCategoriesList.length,
      ),
    );
  }
}
