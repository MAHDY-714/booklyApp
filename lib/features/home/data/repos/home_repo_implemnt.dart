import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failures, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:Fantasy&projection=full',
      );
      //  List<BooksModel> books = [];
      // books.add(BooksModel.fromJson(data));

      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:Fantasy&projection=full&orderBy=newest',
      );
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchSimilarBooks(
      {required String category}) async {
    var data = await apiService.get(
      endPoint: 'volumes?sorting=relevance&q=subject:Fantasy&projection=full',
    );
    try {
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
