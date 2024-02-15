import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/text_field_search_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/toggle_search_row_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
            child: TextFieldSearchView(),
          ),
          ToggleSearchRowView(),
          SearchResultListView(),
        ],
      ),
    );
  }
}
