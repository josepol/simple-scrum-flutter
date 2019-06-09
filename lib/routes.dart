import 'package:flutter/material.dart';
import 'package:simplescrumflutter/login/login.page.dart';
import 'package:simplescrumflutter/register/register.page.dart';

Map<String, WidgetBuilder> routes = {
  '/login': (BuildContext context) => LoginPage(),
  '/register': (BuildContext context) => RegisterPage()
};