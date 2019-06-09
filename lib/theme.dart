import 'package:flutter/material.dart';
import 'package:simplescrumflutter/colors.dart';

ThemeData appTheme = ThemeData(
    primaryColor: primaryColor,
    backgroundColor: backgroundWhiteColor,
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greyColor, style: BorderStyle.solid, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2))),
        fillColor: softGreyColor,
        hintStyle: TextStyle(color: greyColor),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: greyColor, style: BorderStyle.solid, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(2)))),
    textTheme: TextTheme(
        display1: TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 21,
            fontWeight: FontWeight.w600),
        button: TextStyle(
            fontFamily: 'Gilroy',
            color: whiteColor,
            decoration: TextDecoration.none,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        body1: TextStyle(
            fontFamily: 'Gilroy',
            color: whiteColor,
            decoration: TextDecoration.none,
            fontSize: 18,
            fontWeight: FontWeight.w600)));
