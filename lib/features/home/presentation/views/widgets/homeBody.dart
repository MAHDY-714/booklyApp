import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/booksListItemsView.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bestSeller/bestSellerListItemsView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const BookListViewItemsBuilder(),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10.0,
                    end: 10.0,
                    top: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    'Best Seller',
                    style: TextStyles.textStyle24.copyWith(
                      fontFamily: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                      ).fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: BestSellerListViewItemsBuilder(),
          ),
        ],
      ),
    );
  }
}
