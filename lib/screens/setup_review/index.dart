import 'package:flutter/material.dart';
import 'package:performancewave/screens/setup_review/profile.dart';
import 'package:performancewave/screens/setup_review/purpose.dart';
import 'package:performancewave/screens/setup_review/reviewers.dart';
import 'package:performancewave/screens/setup_review/skills.dart';
import 'package:performancewave/screens/setup_review/submit.dart';
import 'package:performancewave/widgets/button.dart';

class SetupReview extends StatefulWidget {
  @override
  _SetupReviewState createState() => _SetupReviewState();
}

class _SetupReviewState extends State<SetupReview> with SingleTickerProviderStateMixin {

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

  void _handleTabListener() {
    setState(() {
      _tabInitialIndex = _tabController.index;
    });
  }

  Widget _buildBottomNavigationBar() {
    if (_tabInitialIndex == 0) {
      return Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(style: BorderStyle.solid, color: Color(0xffe4e4e4)))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: WaveButton(
            text: 'ALL SET',
            onPressed: () {
              _tabController.animateTo(1);
            },
          ),
        )
      );
    } else {
      return  Container(
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
                if (_tabInitialIndex > 0) {
                  _tabController.animateTo(--_tabInitialIndex);
                }
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
                if (_tabInitialIndex < 5) {
                  _tabController.animateTo(++_tabInitialIndex);
                }
              },
            ),
          )
        ),
        height: 60.0
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Setup Review'),
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            indicatorWeight: 4.0,
            tabs: <Widget>[
              Tab(text: 'PROFILE'),
              Tab(text: 'PURPOSE'),
              Tab(text: 'SKILLS'),
              Tab(text: 'REVIEWERS'),
              Tab(text: 'SUBMIT')
            ],
          )
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: <Widget>[
            Profile(),
            Purpose(),
            Skills(),
            Reviewers(),
            Submit()
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar()
      )
    );
  }
}