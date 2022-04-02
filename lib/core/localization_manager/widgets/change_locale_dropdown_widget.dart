import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/localization/app_localization.dart';
import 'package:narad/core/localization_manager/bloc/localization_manager_bloc.dart';

class ChangeLocaleDropDownWidget extends StatelessWidget {
  const ChangeLocaleDropDownWidget({Key? key}) : super(key: key);

  getLocalizedSrting(BuildContext context, Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return AppLocalizations.of(context)?.english ?? 'English';

      case 'ne':
        return AppLocalizations.of(context)?.nepali ?? 'Nepali';

      default:
        return AppLocalizations.of(context)?.english ?? 'English';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(AppLocalizations.of(context)!.changeLanguage),
      trailing: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: BlocProvider.of<LocalizationManagerBloc>(context).state.locale,
          onChanged: (Locale? locale) {
            BlocProvider.of<LocalizationManagerBloc>(context).add(
              ChangeLocale(locale: locale!),
            );
          },
          items: AppLocalizations.supportedLocales
              .map(
                (e) => DropdownMenuItem<Locale>(
                  child: Text(getLocalizedSrting(context, e)),
                  value: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
