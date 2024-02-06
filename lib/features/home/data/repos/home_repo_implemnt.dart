// ignore_for_file: dead_code

import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final endPoint =
      'volumes?q=supject: programing&projection=full&orderBy=newest';
  final ApiService apiService;

  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failures, List<BooksModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(endPoint: endPoint);
      //  List<BooksModel> books = [];
      // books.add(BooksModel.fromJson(data));

      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.formDioException(e),
        );
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BooksModel>>> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }
}
