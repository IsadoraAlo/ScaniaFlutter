import 'package:flutter/material.dart';
import 'package:scannia/src/theme/app_theme.dart';
import 'package:scannia/src/app/module/initialPage/initial_page.dart';

class MyScaniaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: InitialPage(),
    );
  }
}
