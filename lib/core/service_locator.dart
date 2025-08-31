import 'package:book_app/core/api_service.dart';
import 'package:book_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );

// Alternatively you could write it if you don't like global variables
  //getIt.registerSingleton<HomeRepoImpl>(AppModel());
}
