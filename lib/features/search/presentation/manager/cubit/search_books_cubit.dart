import 'dart:developer';

import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;
  String? searchValue;
  String? searchFailure;
  String searchCategorie = 'inauthor';
  int searchCategorieIndex = 0;
  Color categoreColor = Colors.white24;
  List<String> searchCategoriesList = ['inauthor', 'intitle', 'subject'];
  List<BooksModel>? searchBooksList;
  Future<void> fetchSearchBooks({
    required String searchItem,
    required String searchCategories,
  }) async {
    emit(SearchBooksLoading());
    var resultSearch = await searchRepo.fetchSearchBooks(
      q: searchCategories,
      qValue: searchItem,
    );

    resultSearch.fold((failure) {
      searchFailure = failure.errorMessage;
      return emit(SearchBooksFailure(failure.errorMessage));
    }, (searchBooks) {
      if (searchItem != '') {
        searchBooksList = searchBooks;
      }
      log(searchItem);
      log(searchCategorie);
      searchValue = searchItem;
      return emit(SearchBooksSuccess());
    });
  }

  void searchCategoriesBooks(index, searchItem) {
    log(index.toString());
    searchCategorie = searchCategoriesList[index];
    log('the categore in searchCategoriesListBooks: ${searchCategoriesList[index]}');
    log('the categore in searchCategoriesBooks: $searchCategorie');
    if (searchItem != null) {
      fetchSearchBooks(
          searchItem: searchItem, searchCategories: searchCategorie);
    }
    emit(SearchCategoriesBooksState());
  }

  Color searchCategoreColorChange(index, categore) {
    categoreColor = searchCategorie == searchCategoriesList[index]
        ? kRedColor
        : Colors.white24;
    emit(SearchCategoriesColorBooksState());
    return categoreColor;
  }
}
