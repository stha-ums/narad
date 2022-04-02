import 'package:auto_route/auto_route.dart';
import 'package:narad/features/dashboard/presentation/screens/app_entry.dart';
import 'package:narad/features/dashboard/presentation/screens/article_view.dart';
import 'package:narad/features/dashboard/presentation/screens/favorite_news.dart';

import '../../../features/dashboard/presentation/screens/dashboard.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(
      page: AppEntry,
      initial: true,
      children: [
        MaterialRoute(page: DashBoard, initial: true),
        MaterialRoute(page: FavoriteNews),
      ],
    ),
    MaterialRoute(page: ArticleScreen),
  ],
)
class $AppRouter {}
