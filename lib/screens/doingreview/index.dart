import 'package:flutter/material.dart';
import 'package:performancewave/screens/doingreview/fit.dart';
import 'package:performancewave/screens/doingreview/relationship.dart';
import 'package:performancewave/screens/doingreview/purpose.dart';
import 'package:performancewave/screens/doingreview/skills.dart';
import 'package:performancewave/screens/doingreview/submit.dart';

class DoingReview extends StatefulWidget {

  const DoingReview({Key key}) : super(key: key);

  @override
  _DoingReviewState createState() => _DoingReviewState();
}


class _DoingReviewState extends State<DoingReview> with SingleTickerProviderStateMixin {

  TabController _tabController;

  int _tabInitialIndex;

  final List<Widget> _tabs = <Widget>[
    Tab(text: 'RELATIONSHIP', icon: Icon(Icons.album)),
    Tab(text: 'SKILLS', icon: Icon(Icons.fiber_manual_record)),
    Tab(text: 'PURPOSE', icon: Icon(Icons.fiber_manual_record)),
    Tab(text: 'FIT', icon: Icon(Icons.fiber_manual_record)),
    Tab(text: 'SUBMIT', icon: Icon(Icons.fiber_manual_record))
  ];

  @override
  void initState() {
    super.initState();
    _tabInitialIndex = 0;
    _tabController = TabController(initialIndex: _tabInitialIndex, length: _tabs.length, vsync: this);
  }

  @override dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('You are reviewing: Phil Aldridge'),
          bottom: TabBar(
            controller: _tabController,
            tabs: _tabs,
          )
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            relationshipTabContent,
            skillsTabContent,
            purposeTabContent,
            fitTabContent,
            submitTabContent
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(style: BorderStyle.solid, color: Color(0xffe4e4e4)))
          ),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle
              ),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  _tabController.animateTo(_tabController.index - 1);
                },
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle
              ),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  _tabController.animateTo(_tabController.index + 1);
                },
              ),
            ),
          ),
          height: 60.0
        ),
      )
    );
  }
}