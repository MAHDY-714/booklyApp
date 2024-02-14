import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImlement implements SearchRepo {
  final ApiService apiService;
  late final String q;
  late final String qValue;

  SearchRepoImlement(this.apiService);
  @override
  Future<Either<Failures, List<BooksModel>>> fetchSearchBooks(
      {required String searchItem, required String searchCategories}) async {
    q = searchCategories;
    qValue = searchItem;
    var data = await apiService.get(
      endPoint:
          'https://www.googleapis.com/books/v1/volumes?sorting=relevance&q=$q:$qValue&projection=full&',
    );
    try {
      List<BooksModel> searchBooks = [];
      for (var item in data['items']) {
        searchBooks.add(BooksModel.fromJson(item));
      }
      return right(searchBooks);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.formDioExceptions(e),
        );
      } else {
        return left(
          ServerFailure(e.toString()),
        );
      }
    }
  }
}
