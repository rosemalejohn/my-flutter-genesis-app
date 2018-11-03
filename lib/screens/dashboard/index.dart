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
  bool _showFab;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      initialIndex: widget.tabIndex,
      vsync: this
    );
    _showFab = true;
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
          children: <Widget>[
            ReviewTabContent(),
            StatsTabContent(),
          ],
        ),
        floatingActionButton: _FloatingActionButton(show: _showFab),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      )
    );
  }
}

class _FloatingActionButton extends StatefulWidget {

  final bool show;

  _FloatingActionButton({ this.show });

  @override
  _FloatingActionButtonState createState() {
    return new _FloatingActionButtonState();
  }
}

class _FloatingActionButtonState extends State<_FloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 3000),
      child: Container(
        height: widget.show ? 50.0 : 0.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Theme.of(context).primaryColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0),
              blurRadius: 10.0,
            ),
          ]
        ),
        child: RawMaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text('Setup review', style: TextStyle(color: Colors.white, fontSize: 16.0))
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/setup-review/start');
          },
        ),
      ),
    );
  }
}