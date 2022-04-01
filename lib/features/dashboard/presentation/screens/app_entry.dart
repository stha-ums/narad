import 'package:auto_route/auto_route.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/service_locator/service_locator.dart';
import 'package:narad/core/theme/widgets/change_theme.dart';

import '../../../../config/routes/auto_routes/routes.gr.dart';
import '../news_bloc/news_bloc.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsBloc>()..add(const NewsEvent.fetch()),
      child: Builder(builder: (context) {
        return AutoTabsScaffold(
          appBarBuilder: (context, index) => AppBar(
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('NARAD'),
            actions: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    BlocProvider.of<NewsBloc>(context)
                        .add(const NewsEvent.fetch());
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
              title: const Text('Settings'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: const [ChangeThemeTristateSwitch()],
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
                    label: 'News'),
                BottomNavigationBarItem(
                    icon: Icon(
                      tabsRouter.activeIndex == 1
                          ? FluentIcons.heart_20_filled
                          : FluentIcons.heart_20_regular,
                    ),
                    label: 'Favorites'),
              ],
            );
          },
        );
      }),
    );
  }
}
