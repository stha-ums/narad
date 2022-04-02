import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/localization/app_localization.dart';
import 'package:narad/core/utils/string_extenstions.dart';

import '../bloc/theme_manager_bloc.dart';

class ChangeThemeTristateSwitch extends StatelessWidget {
  const ChangeThemeTristateSwitch({
    Key? key,
  }) : super(key: key);

  String getLocalizedTheme(BuildContext context, ThemeMode theme) {
    switch (theme) {
      case ThemeMode.dark:
        return AppLocalizations.of(context)?.dark ?? 'Dark';

      case ThemeMode.light:
        return AppLocalizations.of(context)?.light ?? 'Light';
      case ThemeMode.system:
        return AppLocalizations.of(context)?.system ?? 'System';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(AppLocalizations.of(context)?.changeTheme ?? "Change Theme",
          style: Theme.of(context).textTheme.bodyText1),
      trailing: BlocBuilder<ThemeManagerBloc, ThemeMode?>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...ThemeMode.values.map(
                    (e) => InkWell(
                      onTap: () => BlocProvider.of<ThemeManagerBloc>(context)
                          .add(ChangeThemeMode(themeMode: e)),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: state == e
                            ? Theme.of(context).primaryColor
                            : Colors.transparent,
                        child: Text(
                          getLocalizedTheme(context, e).capitalize(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
