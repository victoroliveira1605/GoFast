import 'package:flutter/material.dart';
import 'package:go_fast/app/core/internacionalization/app_translate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(AppTranslate(context).text('welcome')),
      ),
    );
  }
}
