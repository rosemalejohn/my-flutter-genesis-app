import 'package:flutter/material.dart';
import 'package:performancewave/screens/review_setup/directs.dart';
import 'package:performancewave/screens/review_setup/self.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/notification_drawer.dart';

class ReviewSetup extends StatelessWidget {

  ReviewSetup();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Review Setup'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            )
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorWeight: 4.0,
            tabs: <Widget>[
              Tab(text: 'SELF'),
              Tab(text: 'DIRECTS'),
            ],
          )
        ),
        drawer: MainDrawer(),
        endDrawer: NotificationDrawer(),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            SelfTab(),
            DirectsTab(),
          ],
        ),        
      )
    );
  }
}
