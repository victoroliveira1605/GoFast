import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:go_fast/app/app_controller.dart';
import 'package:go_fast/app/core/internacionalization/app_translate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('DarkMode'),
              onPressed: () {
                Modular.get<AppController>().setThemeData(ThemeMode.dark);
              },
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              child: Text('LightMode'),
              onPressed: () {
                Modular.get<AppController>().setThemeData(ThemeMode.light);
              },
            ),
          ],
        ),
      ),
    );
  }
}
