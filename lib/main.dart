import 'package:flutter/material.dart';
import 'package:performancewave/screens/doingreview/start.dart';
import 'package:performancewave/screens/index.dart';
import 'package:performancewave/screens/doingreview/index.dart';
import 'package:performancewave/screens/profile.dart';
import 'package:performancewave/screens/setup_review.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Performance Wave',
      theme: ThemeData(
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
        accentColor: Color(0xffffffff)
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(title: 'Home'),
        '/do-review/start': (context) => StartReview(),
        '/do-review': (context) => DoingReview(),
        '/profile': (context) => Profile(),
        '/setup-review': (context) => SetupReview()
      }
    );
  }
}