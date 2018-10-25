import 'package:flutter/material.dart';
import 'package:performancewave/routes.dart';
import 'package:performancewave/styles/theme.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: MainModel(),
      child: MaterialApp(
        title: 'Performance Wave',
        theme: waveTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: routes(context)
      )
    );
  }
}

class MainModel extends Model {

}
