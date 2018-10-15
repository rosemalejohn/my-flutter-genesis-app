import 'package:flutter/material.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/tabs_app_bar.dart';
import 'package:performancewave/widgets/notification_drawer.dart';
// Tab contents
import 'tabcontent/reviews.dart';
import 'tabcontent/stats.dart';
import 'tabcontent/rankings.dart';

class LandingPage extends StatelessWidget {

  LandingPage({Key key, this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PerformanceWaveAppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(title),
          ),
          drawer: MainDrawer(),
          endDrawer: NotificationDrawer(),
          body: TabBarView(
            children: <Widget>[
              reviewTabContent,
              statsTabContent,
              rankingTabContent
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setup-review');
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}
