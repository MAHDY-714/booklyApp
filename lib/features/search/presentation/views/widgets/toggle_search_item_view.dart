import 'package:bookly_app/core/utils/widget/custom_button.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleSearchItemBuilder extends StatelessWidget {
  const ToggleSearchItemBuilder({
    super.key,
    required this.onPressed,
    required this.index,
  });
  final int index;

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    var searchCubit = BlocProvider.of<SearchBooksCubit>(context);
    List<String> categories = ['Author', 'Book Name', 'Subject'];
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      // selector: (state) {
      //   if (state is SearchCategoriesColorBooksState) {
      //     return true;
      //   } else {
      //     return false;
      //   }
      // },
      builder: (context, state) {
        return CustomButton(
          textColor: Colors.white,
          text: categories[index],
          backgroundColor: searchCubit.searchCategoreColorChange(
            index,
            searchCubit.searchCategorie,
          ),
          borderRadius: BorderRadiusDirectional.circular(16),
          textSize: 16,
          fontWeight: FontWeight.normal,
          borderColor: searchCubit.categoreColor,
          onPressed: onPressed,
        );
      },
    );
  }
}

/* 

searchCubit.searchCategoriesList[index] ==
                searchCubit.searchCategorie
            ? kRedColor
            : Colors.white24;

*/