import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewstBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(
        NewestBooksFailure(failure.errorMessage),
      ),
      (books) => emit(
        NewestBooksSuccess(books),
      ),
    );
  }
}
