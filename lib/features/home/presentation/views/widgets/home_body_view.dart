import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books/books_list_items_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newestBooks/newest_list_items_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
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
                    'Books',
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
            child: NewestListViewItemsBuilder(),
          ),
        ],
      ),
    );
  }
}
