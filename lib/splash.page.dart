import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simplescrumflutter/colors.dart';
import 'package:simplescrumflutter/constants.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    this._startTime();
    super.initState();
  }

  _startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, _navigate);
  }

  _navigate() {
    Navigator.pushNamedAndRemoveUntil(context, loginRoute, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
          decoration: BoxDecoration(color: backgroundWhiteColor),
          child: Center(
              child: SingleChildScrollView(
            child: SafeArea(child: Center(child: Text('SillyScrum!'),),
          ))),
    ));
  }

}