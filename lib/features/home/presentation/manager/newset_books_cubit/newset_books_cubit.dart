import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewstBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (failure) => emit(
        NewsetBooksFailure(failure.errorMessage),
      ),
      (books) => emit(
        NewsetBooksSuccess(books),
      ),
    );
  }
}
