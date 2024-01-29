import 'package:bookly_app/features/home/presentation/views/widgets/bestSeller/bestSellerItemView.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemsBuilder extends StatelessWidget {
  const BestSellerListViewItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsDirectional.all(10),
          child: BestSellerItemBuilder(),
        );
      },
      itemCount: 7,
    );
  }
}
