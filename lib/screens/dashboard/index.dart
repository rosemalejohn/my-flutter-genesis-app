import 'package:flutter/material.dart';
import 'package:performancewave/screens/dashboard/reviews.dart';
import 'package:performancewave/screens/dashboard/stats.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/tabs_app_bar.dart';
import 'package:performancewave/widgets/notification_drawer.dart';

class Dashboard extends StatelessWidget {

  Dashboard({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PerformanceWaveAppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(title),
        ),
        drawer: MainDrawer(),
        endDrawer: NotificationDrawer(),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            ReviewTabContent(),
            StatsTabContent(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/setup-review');
          },
          tooltip: 'Setup review',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
