import 'package:auto_route/auto_route.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/localization/app_localization.dart';
import 'package:narad/config/routes/routes.gr.dart';
import 'package:narad/config/service_locator/service_locator.dart';
import 'package:narad/core/database_handler/db_handler.dart';
import 'package:narad/core/localization_manager/widgets/change_locale_dropdown_widget.dart';
import 'package:narad/core/theme/widgets/change_theme.dart';
import 'package:narad/features/dashboard/presentation/favorite_articles/favorite_articles_bloc.dart';

import '../news_bloc/news_bloc.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => sl<NewsBloc>()..add(const NewsEvent.fetch())),
        BlocProvider(
          create: (context) => sl<FavoriteArticlesBloc>()
            ..add(const FavoriteArticlesEvent.getAllFavorites()),
        ),
      ],
      child: Builder(builder: (context) {
        return AutoTabsScaffold(
          appBarBuilder: (context, index) => AppBar(
            titleTextStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            title: Text(AppLocalizations.of(context)?.narad ?? 'Narad'),
            actions: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    BlocProvider.of<NewsBloc>(context)
                        .add(const NewsEvent.fetch());

                    BlocProvider.of<FavoriteArticlesBloc>(context)
                        .add(const FavoriteArticlesEvent.getAllFavorites());
                  },
                  icon: const Icon(Icons.refresh_outlined))
            ],
          ),
          routes: const [
            DashBoardRoute(),
            FavoriteNewsRoute(),
          ],
          animationCurve: Curves.easeInCirc,
          drawer: Scaffold(
            appBar: AppBar(
                title:
                    Text(AppLocalizations.of(context)?.settings ?? 'Settings')),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const ChangeThemeTristateSwitch(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(AppLocalizations.of(context)?.clearCache ??
                      "Clear Cache"),
                  trailing: TextButton(
                      onPressed: () {
                        sl<DataBaseHandler>().clearAll();
                      },
                      child:
                          Text(AppLocalizations.of(context)?.clear ?? "Clear")),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                      AppLocalizations.of(context)?.clearFavoriteArticles ??
                          "Clear Favorite Articles"),
                  trailing: TextButton(
                      onPressed: () {
                        BlocProvider.of<FavoriteArticlesBloc>(context)
                            .add(const FavoriteArticlesEvent.removeAll());
                      },
                      child:
                          Text(AppLocalizations.of(context)?.clear ?? "Clear")),
                ),
                const ChangeLocaleDropDownWidget()
              ],
            ),
          ),
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      tabsRouter.activeIndex == 0
                          ? FluentIcons.news_20_filled
                          : FluentIcons.news_20_filled,
                    ),
                    label: AppLocalizations.of(context)?.news ?? 'News'),
                BottomNavigationBarItem(
                    icon: Icon(
                      tabsRouter.activeIndex == 1
                          ? FluentIcons.heart_20_filled
                          : FluentIcons.heart_20_regular,
                    ),
                    label:
                        AppLocalizations.of(context)?.favorite ?? 'Favorites'),
              ],
            );
          },
        );
      }),
    );
  }
}
