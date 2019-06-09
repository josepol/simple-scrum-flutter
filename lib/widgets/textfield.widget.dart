import 'package:flutter/material.dart';
import 'package:simplescrumflutter/colors.dart';

class Textfield extends StatefulWidget {
  final bool isPassword;
  final String hint;

  Textfield({this.hint, this.isPassword});

  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: TextFormField(
            obscureText: widget.isPassword,
            decoration: InputDecoration(hintText: widget.hint),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontSize: 18, color: greyColor)));
  }
}
