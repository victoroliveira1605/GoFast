import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_fast/app/app_controller.dart';
import 'core/internacionalization/app_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return MaterialApp(
        title: 'Flutter GoFast',
        theme: Modular.get<AppController>().themeApp.getTheme(),
        initialRoute: '/',
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
        supportedLocales: [
          Locale('en', 'US'),
          Locale('pt', 'BR'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocales in supportedLocales) {
            if (supportedLocales.languageCode == locale.languageCode &&
                supportedLocales.countryCode == locale.countryCode) {
              return supportedLocales;
            }
          }
          return supportedLocales.first;
        },
      );
    });
  }
}
