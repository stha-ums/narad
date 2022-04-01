// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../features/dashboard/domain/entities/articles.dart' as _i7;
import '../../../features/dashboard/presentation/screens/app_entry.dart' as _i1;
import '../../../features/dashboard/presentation/screens/article_view.dart'
    as _i2;
import '../../../features/dashboard/presentation/screens/dashboard.dart' as _i3;
import '../../../features/dashboard/presentation/screens/favorite_news.dart'
    as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppEntryRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppEntry());
    },
    ArticleScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleScreenRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ArticleScreen(key: args.key, article: args.article));
    },
    DashBoardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DashBoard());
    },
    FavoriteNewsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FavoriteNews());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AppEntryRoute.name, path: '/', children: [
          _i5.RouteConfig(DashBoardRoute.name,
              path: '', parent: AppEntryRoute.name),
          _i5.RouteConfig(FavoriteNewsRoute.name,
              path: 'favorite-news', parent: AppEntryRoute.name)
        ]),
        _i5.RouteConfig(ArticleScreenRoute.name, path: '/article-screen')
      ];
}

/// generated route for
/// [_i1.AppEntry]
class AppEntryRoute extends _i5.PageRouteInfo<void> {
  const AppEntryRoute({List<_i5.PageRouteInfo>? children})
      : super(AppEntryRoute.name, path: '/', initialChildren: children);

  static const String name = 'AppEntryRoute';
}

/// generated route for
/// [_i2.ArticleScreen]
class ArticleScreenRoute extends _i5.PageRouteInfo<ArticleScreenRouteArgs> {
  ArticleScreenRoute({_i6.Key? key, required _i7.Article article})
      : super(ArticleScreenRoute.name,
            path: '/article-screen',
            args: ArticleScreenRouteArgs(key: key, article: article));

  static const String name = 'ArticleScreenRoute';
}

class ArticleScreenRouteArgs {
  const ArticleScreenRouteArgs({this.key, required this.article});

  final _i6.Key? key;

  final _i7.Article article;

  @override
  String toString() {
    return 'ArticleScreenRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [_i3.DashBoard]
class DashBoardRoute extends _i5.PageRouteInfo<void> {
  const DashBoardRoute() : super(DashBoardRoute.name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i4.FavoriteNews]
class FavoriteNewsRoute extends _i5.PageRouteInfo<void> {
  const FavoriteNewsRoute()
      : super(FavoriteNewsRoute.name, path: 'favorite-news');

  static const String name = 'FavoriteNewsRoute';
}
