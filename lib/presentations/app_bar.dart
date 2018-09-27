import 'package:flutter/material.dart';

class PerformanceWaveAppBar extends AppBar {
  PerformanceWaveAppBar({Key key, Widget title}) : super(
      key: key,
      title: title,
      bottom: TabBar(
        tabs: <Widget>[
          Tab(icon: Icon(Icons.directions_car), text: 'Reviews'),
          Tab(icon: Icon(Icons.trending_up), text: 'Stats'),
          Tab(icon: Icon(Icons.format_list_numbered), text: 'Rankings')
        ]
      )
  );
}