import 'package:flutter/material.dart';
import 'package:simplescrumflutter/routes.dart';
import 'package:simplescrumflutter/splash.page.dart';
import 'package:simplescrumflutter/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      routes: routes,
      home: SplashPage(),
    );
  }
}
