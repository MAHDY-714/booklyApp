import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BooksModel>>> fetchBooks();
  Future<Either<Failures, List<BooksModel>>> fetchBestSellerBooks();
}
