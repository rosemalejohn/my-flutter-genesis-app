import 'package:flutter/material.dart';

class PerformanceWaveAppBar extends StatelessWidget implements PreferredSizeWidget {

  final title;

  PerformanceWaveAppBar({this.title});

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight + 40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        )
      ],
      bottom: TabBar(
        indicatorWeight: 4.0,
        tabs: <Widget>[
          Tab(text: 'REVIEWS'),
          Tab(text: 'STATS'),
          Tab(text: 'RANKINGS')
        ],
      )
    );
  }
}