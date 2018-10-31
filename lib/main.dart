import 'package:flutter/material.dart';
import 'package:performancewave/routes.dart';
import 'package:performancewave/screens/dashboard/index.dart';
import 'package:performancewave/screens/startup.dart';
import 'package:performancewave/store/app.dart';
import 'package:performancewave/styles/theme.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppModel model = AppModel();

    return ScopedModel<AppModel>(
      model: model,
      child: MaterialApp(
        title: 'Performance Wave',
        theme: waveTheme,
        debugShowCheckedModeBanner: false,
        home: Startup(),
        routes: routes(context)
      )
    );
  }
}
