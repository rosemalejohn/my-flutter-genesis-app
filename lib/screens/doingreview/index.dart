import 'package:flutter/material.dart';
import 'package:performancewave/screens/doingreview/fit.dart';
import 'package:performancewave/screens/doingreview/profile.dart';
import 'package:performancewave/screens/doingreview/purpose.dart';
import 'package:performancewave/screens/doingreview/skills.dart';
import 'package:performancewave/screens/doingreview/submit.dart';

class DoingReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('You are reviewing: Phil Aldridge'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'RELATIONSHIP', icon: Icon(Icons.album)),
              Tab(text: 'SKILLS', icon: Icon(Icons.fiber_manual_record)),
              Tab(text: 'PURPOSE', icon: Icon(Icons.fiber_manual_record)),
              Tab(text: 'FIT', icon: Icon(Icons.fiber_manual_record)),
              Tab(text: 'SUBMIT', icon: Icon(Icons.fiber_manual_record))
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            profileTabContent,
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
                color: Colors.amber,
                shape: BoxShape.circle
              ),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {

                },
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle
              ),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {

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