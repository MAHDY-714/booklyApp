import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/text_field_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
            child: TextFieldSearchView(),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 10.0,
              end: 10.0,
              top: 0,
              bottom: 10,
            ),
            child: Text(
              'Search Result',
              style: TextStyles.textStyle24.copyWith(
                color: Colors.white60,
                fontFamily: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, color: Colors.white38)
                    .fontFamily,
              ),
            ),
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
