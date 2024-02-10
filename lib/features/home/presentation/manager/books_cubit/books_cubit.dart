import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeRepo) : super(BooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBooks() async {
    emit(BooksLoading());
    var result = await homeRepo.fetchBooks();
    result.fold(
      ///left = l
      (failure) => emit(BooksFailure(failure.errorMessage)),

      ///right = r
      (books) => emit(BooksSuccess(books)),
    );
  }
}
