import 'package:flutter/material.dart';

class PerformanceWaveAppBar extends StatelessWidget implements PreferredSizeWidget {

  final title;

  PerformanceWaveAppBar({this.title});

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

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
      ]
    );
  }
}