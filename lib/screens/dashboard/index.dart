import 'package:flutter/material.dart';
import 'package:performancewave/screens/dashboard/reviews.dart';
import 'package:performancewave/screens/dashboard/stats.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/tabs_app_bar.dart';
import 'package:performancewave/widgets/notification_drawer.dart';

class Dashboard extends StatefulWidget {

  Dashboard({
    Key key,
    this.title = 'Home',
    this.tabIndex = 0
  });

  final String title;
  final int tabIndex;

  @override
  DashboardState createState() {
    return new DashboardState();
  }
}

class DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      initialIndex: widget.tabIndex,
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PerformanceWaveAppBar(
          tabController: _tabController,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        drawer: MainDrawer(),
        endDrawer: NotificationDrawer(),
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            ReviewTabContent(),
            StatsTabContent(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/setup-review/start');
          },
          tooltip: 'Setup review',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
