import 'package:bookly_app/features/home/presentation/views/widgets/bestSeller/best_seller_item_view.dart';
import 'package:flutter/material.dart';

class best_seller_list_view_items_builder extends StatelessWidget {
  const best_seller_list_view_items_builder({super.key});

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
