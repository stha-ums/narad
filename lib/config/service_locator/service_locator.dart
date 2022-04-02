import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:narad/core/database_handler/db_driver_implementation/hive_db_driver.dart';
import 'package:narad/core/database_handler/db_handler.dart';
import 'package:narad/core/http_client/http_client.dart';
import 'package:narad/core/localization_manager/bloc/localization_manager_bloc.dart';
import 'package:narad/core/network/network.dart';
import 'package:narad/core/theme/bloc/theme_manager_bloc.dart';
import 'package:narad/features/dashboard/data/data_sources/news_local_cache_data.dart';
import 'package:narad/features/dashboard/data/data_sources/news_remote_data_source.dart';
import 'package:narad/features/dashboard/data/repositories/news_repository_implementation.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';
import 'package:narad/features/dashboard/domain/usecases/get_favorite_news.dart';
import 'package:narad/features/dashboard/domain/usecases/get_news.dart';
import 'package:narad/features/dashboard/domain/usecases/remove_all_favorite_news.dart';
import 'package:narad/features/dashboard/domain/usecases/remove_favorite_news.dart';
import 'package:narad/features/dashboard/presentation/favorite_articles/favorite_articles_bloc.dart';
import 'package:narad/features/dashboard/presentation/news_bloc/news_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/dashboard/data/data_sources/favorite_news_local_data.dart';
import '../../features/dashboard/domain/usecases/set_favorite_news.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  await _registerExternal();
  await _registerCore();
  _registerBloc();
  _registerUsecase();
  _registerRepository();
  _localDataSource();
  _remoteDataSource();
}

void _registerBloc() {
  sl.registerFactory(() => NewsBloc(getNews: sl()));
  sl.registerFactory(() => FavoriteArticlesBloc(
      getFavoriteNews: sl(),
      removeAllFavoriteNews: sl(),
      removeFromFavoriteNews: sl(),
      setFavoriteNews: sl()));
}

void _registerUsecase() {
  sl.registerFactory(() => GetNews(newsRepository: sl()));
  sl.registerFactory(() => GetFavoriteNews(newsRepository: sl()));
  sl.registerFactory(() => RemoveAllFavoriteNews(newsRepository: sl()));
  sl.registerFactory(() => RemoveFromFavoriteNews(newsRepository: sl()));
  sl.registerFactory(() => SetFavoriteNews(newsRepository: sl()));
}

void _registerRepository() {
  sl.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImplementation(
        network: sl(),
        newsRemoteDataSource: sl(),
        newsCacheDataSource: sl(),
        favoriteNewsLocalData: sl()),
  );
}

void _localDataSource() {
  sl.registerLazySingleton<NewsCacheDataSource>(
      () => NewsCacheDataSourceImpl(sl()));

  sl.registerFactory<FavoriteNewsLocalData>(() => FavoriteNewsLocalDataImple(
      sl.get<DataBaseHandler>(instanceName: 'favoriteNewsLocalData')));
}

void _remoteDataSource() {
  sl.registerLazySingleton<NewsRemoteDataSource>(
      () => NewRemoteDataSourceImpl(dataBaseHandler: sl(), httpCalls: sl()));
}

Future<void> _registerCore() async {
  sl.registerFactory(() => ThemeManagerBloc(sharedPreferences: sl()));
  sl.registerFactory(() => LocalizationManagerBloc(sharedPreferences: sl()));

  final network = await NetworkImpl.getAnInstance(connectivity: sl());
  sl.registerLazySingleton<Network>(() => network);
}

Future<void> _registerExternal() async {
  sl.registerLazySingleton(() => Connectivity());

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton(
      () => HttpCalls(sharedPreferences: sl(), flutterSecureStorage: sl()));

  DataBaseHandler dataBaseHandler =
      await DataBaseHandler.getAnInstance(driver: HiveDbDriver());
  sl.registerLazySingleton<DataBaseHandler>(() => dataBaseHandler);

  DataBaseHandler dataBaseHandlerFavorite = await DataBaseHandler.getAnInstance(
      driver: HiveDbDriver(
          initialTableName: 'favoriteNewsLocalData',
          databaseName: 'favoriteNewsLocalData'));
  sl.registerFactory<DataBaseHandler>(() => dataBaseHandlerFavorite,
      instanceName: 'favoriteNewsLocalData');

  sl.registerLazySingleton(() => const FlutterSecureStorage());
}
