import 'dart:developer';

import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldSearchView extends StatelessWidget {
  const TextFieldSearchView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var fromKey = GlobalKey<FormState>();
    var searchCubit = BlocProvider.of<SearchBooksCubit>(context);
    return Form(
      key: fromKey,
      child: TextFormField(
        controller: SearchController(),
        textDirection: TextDirection.ltr,
        style: TextStyles.searchTextStyle,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white38,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.white60,
              width: 1.5,
            ),
          ),
          filled: true,
          fillColor: kSearchColor,
          hintText: 'Search Books',
          hintStyle: TextStyles.hintTextStyle,
          suffixIcon: IconButton(
            onPressed: () {
              fromKey.currentState!.reset();
              searchCubit.searchBooksList!.clear();
            },
            icon: Image.asset(
              Assets.imagesSearchBook,
              height: 20,
              color: Colors.white60,
            ),
          ),
        ),
        onChanged: (qValue) async {
          searchCubit.fetchSearchBooks(
            // searchCubit.searchCategorieIndex,
            searchItem: qValue,
            searchCategories: searchCubit.searchCategorie,
          );
          log(qValue);
          log(searchCubit.searchCategorie.toString());
        },
        onFieldSubmitted: (qValue) async {
          if (qValue.isEmpty) {
            fromKey.currentState!.reset();
            searchCubit.searchBooksList!.clear();
          }
        },
      ),
    );
  }
}
