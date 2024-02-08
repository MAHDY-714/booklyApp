import 'package:bookly_app/features/home/presentation/views/widgets/newestBooks/newset_item_view.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsDirectional.all(10),
          child: NewestItemBuilder(),
        );
      },
      itemCount: 7,
    );
  }
}
