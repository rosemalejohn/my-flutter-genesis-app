import 'package:flutter/material.dart';
import 'package:performancewave/widgets/app_bar.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/notification_drawer.dart';

class SinglePage extends StatelessWidget {

  final Widget body;
  final Widget title;
  
  SinglePage({ this.body, this.title });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      endDrawer: NotificationDrawer(),
      appBar: PerformanceWaveAppBar(
        title: title
      ),
      body: body,
    );
  }
}