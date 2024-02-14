import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({
    required String searchItem,
    required String searchCategories,
  }) async {
    emit(SearchBooksLoading());
    var resultSearch = await searchRepo.fetchSearchBooks(
        searchItem: searchItem, searchCategories: searchCategories);
    resultSearch.fold(
      (failure) => emit(SearchBooksFailure(failure.errorMessage)),
      (searchBooks) => emit(SearchBooksSuccess(searchBooks)),
    );
  }
}
