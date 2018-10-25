import 'package:flutter/material.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/app_bar.dart';
import 'package:performancewave/widgets/notification_drawer.dart';

class SetupReview extends StatelessWidget {

  SetupReview();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      endDrawer: NotificationDrawer(),
      appBar: PerformanceWaveAppBar(
        title: Text('Setup Review')
      ),
      body: Center(
        child: Container(

        ),
      ),
    );
  }
}