import 'package:flutter/material.dart';
import 'package:performancewave/widgets/stat_filter.dart';

class StatsTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                        Text('Team rating', style: TextStyle(color: Color(0xffaaaaaa))),
                        SizedBox(height: 10.0,),
                        Text('87.2%', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))
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
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text('DETAILS', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            // Relationship
            WaveStatTitleRow(title: 'RELATIONSHIP'),
            WaveStatDetailRow(title: 'Likability'),
            WaveStatDetailRow(title: 'Trustworthy'),
            // Hard skills
            WaveStatTitleRow(title: 'HARD SKILLS'),
            WaveStatDetailRow(title: 'Business Development'),
            WaveStatDetailRow(title: 'Marketing'),
            WaveStatDetailRow(title: 'Strategy Development'),
            WaveStatDetailRow(title: 'Capital Raising'),
            // Soft Skills
            WaveStatTitleRow(title: 'SOFT SKILLS'),
            WaveStatDetailRow(title: 'Communication'),
            WaveStatDetailRow(title: 'Resilience'),
            WaveStatDetailRow(title: 'Adaptability'),
            // Purpose
            WaveStatTitleRow(title: 'PURPOSE'),
            WaveStatDetailRow(title: 'Role purpose'),
            // Fit
            WaveStatTitleRow(title: 'FIT'),
            WaveStatDetailRow(title: 'Suitability'),
            WaveStatDetailRow(title: 'Ready for promotion'),
            // Reviewers
            WaveStatTitleRow(title: 'REVIEWERS'),
            SizedBox(height: 20.0,)
          ],
        )
      ],
    );
  }
}

class WaveStatTitleRow extends StatelessWidget {

  final String title;

  WaveStatTitleRow({ this.title });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Color(0xffe3e3e3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            ),
          ),
        ),
      ],
    );
  }
}

class WaveStatDetailRow extends StatelessWidget {

  final String title;

  WaveStatDetailRow({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: Text(title, style: TextStyle(fontSize: 16.0))),
          Expanded(child: Text('100.0%', style: TextStyle(fontSize: 16.0))),
          Expanded(child: Text('')),
          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person, color: Color(0xffA9A9A9),),
                      Text('8', style: TextStyle(color: Color(0xffA9A9A9), fontSize: 16.0))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.grade, color: Theme.of(context).primaryColor),
                      Text('2', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0))
                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}