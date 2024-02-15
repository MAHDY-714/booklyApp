import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemnt.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      ApiService(
        Dio(),
      ),
    ),
  );

  getIt.registerSingleton<SearchRepoImlement>(
    SearchRepoImlement(
      ApiService(
        Dio(),
      ),
    ),
  );
}
