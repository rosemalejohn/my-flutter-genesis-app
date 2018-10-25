import 'package:flutter/material.dart';

ThemeData waveTheme = ThemeData(
  // This is the theme of your application.
  //
  // Try running your application with "flutter run". You'll see the
  // application has a blue toolbar. Then, without quitting the app, try
  // changing the primarySwatch below to Colors.green and then invoke
  // "hot reload" (press "r" in the console where you ran "flutter run",
  // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
  // counter didn't reset back to zero; the application is not restarted.
  primarySwatch: Colors.amber,
  primaryColor: Color(0xffF2A727),
  primaryTextTheme: TextTheme(
    title: TextStyle(
      color: Colors.white
    )
  ),
  primaryIconTheme: IconThemeData(color: Colors.white),
  textTheme: TextTheme(
    button: TextStyle(color: Colors.white)
  ),
);
