import 'package:flutter/material.dart';
import 'package:performancewave/layouts/singlepage.dart';
import 'package:performancewave/screens/team_stats/directs.dart';
import 'package:performancewave/screens/team_stats/team.dart';
import 'package:performancewave/widgets/stat_filter.dart';

class TeamStats extends StatefulWidget {
  @override
  TeamStatsState createState() {
    return new TeamStatsState();
  }
}

class TeamStatsState extends State<TeamStats> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return SinglePage(
      title: Text('Team Stats'),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                WaveStatFilter(),
                Text('89.3%', style: TextStyle(fontSize: 70.0)),
                Divider(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text('Your score', style: TextStyle(color: Color(0xffaaaaaa))),
                          SizedBox(height: 10.0,),
                          Text('89.3%', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text('Company average', style: TextStyle(color: Color(0xffaaaaaa))),
                          SizedBox(height: 10.0,),
                          Text('88.0%', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0
                )
              )
            ),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Theme.of(context).primaryColor,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'TEAM'),
                Tab(text: 'DIRECTS'),
              ],
            ),
          ),
          Container(
            height: 500.0,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                TeamTab(),
                DirectsTab(),
              ],
            ),
          )
        ],
      )
    );
  }
}