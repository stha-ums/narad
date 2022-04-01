import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:narad/core/database_handler/db_driver_implementation/hive_db_driver.dart';
import 'package:narad/core/database_handler/db_handler.dart';
import 'package:narad/core/http_client/http_client.dart';
import 'package:narad/core/localization_manager/bloc/localization_manager_bloc.dart';
import 'package:narad/core/theme/bloc/theme_manager_bloc.dart';
import 'package:narad/features/dashboard/data/data_sources/news_local_cache_data.dart';
import 'package:narad/features/dashboard/data/data_sources/news_remote_data_source.dart';
import 'package:narad/features/dashboard/data/repositories/news_repository_implementation.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';
import 'package:narad/features/dashboard/domain/usecases/get_news.dart';
import 'package:narad/features/dashboard/presentation/news_bloc/news_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  await _registerExternal();
  _registerCore();
  _registerBloc();
  _registerUsecase();
  _registerRepository();
  _localDataSource();
  _remoteDataSource();
}

void _registerBloc() {
  sl.registerFactory(() => NewsBloc(getNews: sl()));
}

void _registerUsecase() {
  sl.registerFactory(() => GetNews(newsRepository: sl()));
}

void _registerRepository() {
  sl.registerLazySingleton<NewsRepository>(() => NewsRepositoryImplementation(
      newsRemoteDataSource: sl(), newsCacheDataSource: sl()));
}

void _localDataSource() {
  sl.registerLazySingleton<NewsCacheDataSource>(
      () => NewsCacheDataSourceImpl(sl()));
}

void _remoteDataSource() {
  sl.registerLazySingleton<NewsRemoteDataSource>(
      () => NewRemoteDataSourceImpl(dataBaseHandler: sl(), httpCalls: sl()));
}

void _registerCore() {
  sl.registerFactory(() => ThemeManagerBloc(sharedPreferences: sl()));
  sl.registerFactory(() => LocalizationManagerBloc(sharedPreferences: sl()));
}

Future<void> _registerExternal() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerFactory<SharedPreferences>(() => sharedPreferences);

  sl.registerFactory(
      () => HttpCalls(sharedPreferences: sl(), flutterSecureStorage: sl()));

  DataBaseHandler dataBaseHandler =
      await DataBaseHandler.getAnInstance(driver: HiveDbDriver());
  sl.registerLazySingleton<DataBaseHandler>(() => dataBaseHandler);

  sl.registerLazySingleton(() => const FlutterSecureStorage());
}
