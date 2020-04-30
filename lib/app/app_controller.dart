import 'package:flutter/material.dart';
import 'package:go_fast/app/core/theme/app_theme_dark.dart';
import 'package:go_fast/app/core/theme/app_theme_light.dart';
import 'package:mobx/mobx.dart';

import 'core/interfaces/theme_app_interface.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  IThemeAppInterface themeApp = AppThemeLight();

  @action
  setThemeData(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return themeApp = AppThemeDark();
      default:
        return themeApp = AppThemeLight();
    }
  }
}
