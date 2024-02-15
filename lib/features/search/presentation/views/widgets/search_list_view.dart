import 'package:bookly_app/features/search/presentation/views/widgets/search_item_view.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
            child: SearchItemBuilder(),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
