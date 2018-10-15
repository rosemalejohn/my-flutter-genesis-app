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

  @override
  void initState() {
    super.initState();
    _tabInitialIndex = 0;
    _tabController = TabController(
      initialIndex: _tabInitialIndex, 
      length: 5, 
      vsync: this
    );
    _tabController.addListener(_handleTabListener);
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
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 4.0,
            tabs: <Widget>[
              Tab(text: 'RELATIONSHIP', icon: _handleTabIcon(0)),
              Tab(text: 'SKILLS', icon: _handleTabIcon(1)),
              Tab(text: 'PURPOSE', icon: _handleTabIcon(2)),
              Tab(text: 'FIT', icon: _handleTabIcon(3)),
              Tab(text: 'SUBMIT', icon: _handleTabIcon(4))
            ],
          )
        ),
        body: TabBarView(
          controller: _tabController,
          // physics: const NeverScrollableScrollPhysics(),
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
                  if (_tabInitialIndex >= 0) {
                    _tabController.animateTo(_tabInitialIndex - 1);
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            trailing: _handleSubmitButton()
          ),
          height: 60.0
        ),
      )
    );
  }

  void _handleTabListener() {
    setState(() {
      _tabInitialIndex = _tabController.index;
    });
  }

  Icon _handleTabIcon(pageIndex) {
    return (_tabInitialIndex == pageIndex) ? Icon(Icons.album, color: Colors.white,) : Icon(Icons.fiber_manual_record);
  }

  Widget _handleSubmitButton() {
    if (_tabInitialIndex == 4) {
      return FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        child: Text("CONFIRM AND SUBMIT", style: TextStyle(fontSize: 16.0),),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          
        }
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle
        ),
        child: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            if (_tabInitialIndex < 5) {
              _tabController.animateTo(_tabInitialIndex + 1);
            }
          },
        ),
      );
    }
  }
}