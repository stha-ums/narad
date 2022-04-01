import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:narad/config/localization/app_localization.dart';
import 'package:narad/config/service_locator/service_locator.dart';
import 'package:narad/core/theme/data/dark_theme_data.dart';
import 'package:narad/core/theme/data/light_theme_data.dart';

import '../config/routes/auto_routes/routes.gr.dart';
import '../core/localization_manager/bloc/localization_manager_bloc.dart';
import '../core/theme/bloc/theme_manager_bloc.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ThemeManagerBloc>()..add(Init())),
        BlocProvider(
            create: (context) =>
                sl<LocalizationManagerBloc>()..add(InitializeLocale())),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<ThemeManagerBloc, ThemeMode?>(
          builder: (context, themeState) {
            return BlocBuilder<LocalizationManagerBloc,
                LocalizationManagerState>(
              builder: (context, localeState) {
                return MaterialApp.router(
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en', 'US'), // English
                    Locale('ne', 'NP'), // nepali
                  ],
                  locale: localeState.locale,
                  themeMode: themeState,
                  darkTheme: DarkTheme()(),
                  theme: LightTheme()(),
                  title: "App",
                  routerDelegate: _appRouter.delegate(),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  debugShowCheckedModeBanner: false,
                );
              },
            );
          },
        );
      }),
    );
  }
}
