import 'package:flutter/material.dart';
import 'package:performancewave/models/employee_stat.dart';
import 'package:performancewave/store/employee_stat.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/growth.dart';
import 'package:performancewave/widgets/stat_filter.dart';
import 'package:scoped_model/scoped_model.dart';

class StatsTabContent extends StatefulWidget {
  @override
  StatsTabContentState createState() {
    return new StatsTabContentState();
  }
}

class StatsTabContentState extends State<StatsTabContent> {

  final _model = EmployeeStatModel();

  @override
  initState() {
    super.initState();
    _model.getStats();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<EmployeeStatModel>(
      model: _model,
      child: Builder(
        builder: (BuildContext context) {
          return ScopedModelDescendant<EmployeeStatModel>(
            builder: (BuildContext context, child, model) {
              EmployeeStat _employeeStat = model.employeeStat;
              if (_employeeStat == null) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        WaveStatFilter(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              _employeeStat.userAverage.toStringAsFixed(1) + '%',
                              style: TextStyle(fontSize: 70.0)
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.person, size: 16.0, color: Colors.grey),
                                    Text(_employeeStat.totalReviewersDone.toString(), style: TextStyle(color: Colors.grey, fontSize: 16.0))
                                  ],
                                ),
                                WaveGrowth(current: _employeeStat.userAverage, previous: _employeeStat.userPrevAverage),
                              ]
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text('Team rating', style: TextStyle(color: Color(0xffaaaaaa))),
                                  SizedBox(height: 10.0,),
                                  Text(_employeeStat.teamAverage.toStringAsFixed(1) + '%', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text('Company average', style: TextStyle(color: Color(0xffaaaaaa))),
                                  SizedBox(height: 10.0,),
                                  Text(_employeeStat.companyAverage.toStringAsFixed(1) + '%', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Divider(),
                        ),
                        // chart goes here
                        Text('TREND', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                        Container(
                          height: 200.0,
                          child: _employeeStat.graph
                        )
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
                              child: Text('DETAILS', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                      // Relationship
                      WaveStatTitleRow(title: 'RELATIONSHIP'),
                      WaveStatDetailRow(title: 'Likability', details: _employeeStat.likability),
                      WaveStatDetailRow(title: 'Trustworthy', details: _employeeStat.trustworthy),
                      // Hard skills
                      WaveStatTitleRow(title: 'HARD SKILLS'),
                      Column(
                        children: _employeeStat.hardSkills.map((skillStat) {
                          return WaveStatDetailRow(title: skillStat.title, details: skillStat,);
                        }).toList()
                      ),
                      // Soft Skills
                      WaveStatTitleRow(title: 'SOFT SKILLS'),
                      WaveStatDetailRow(title: 'Communication', details: _employeeStat.communication),
                      WaveStatDetailRow(title: 'Resilience', details: _employeeStat.resilience),
                      WaveStatDetailRow(title: 'Adaptability', details: _employeeStat.adaptability),
                      // Purpose
                      WaveStatTitleRow(title: 'PURPOSE'),
                      WaveStatDetailRow(title: 'Role purpose', details: _employeeStat.purpose),
                      // Fit
                      WaveStatTitleRow(title: 'FIT'),
                      WaveStatDetailRow(title: 'Suitability', details: _employeeStat.suitability),
                      WaveStatDetailRow(title: 'Ready for promotion', details: _employeeStat.promotion),
                      // Reviewers
                      WaveStatTitleRow(title: 'REVIEWERS (${_employeeStat.totalReviewers})'),
                      // Internal reviewers
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: _employeeStat.internalReviewers.map((reviewer) {
                                return WaveAvatar(height: 70.0, width: 70.0, url: reviewer.photoUrl);
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Theme.of(context).primaryColor),
                      SizedBox(height: 10.0,)
                    ],
                  )
                ],
              );
            }
          );
        },
      ),
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
              child: Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}

class WaveStatDetailRow extends StatelessWidget {

  final String title;
  final EmployeeStatDetail details;

  WaveStatDetailRow({this.title, @required this.details});

  Color _getDetailColor (BuildContext context, int count) {
    return count > 0 ? Theme.of(context).primaryColor : Color(0xffA9A9A9);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: Text(title, style: TextStyle(fontSize: 16.0))),
          Expanded(child: Text('${details.average.toStringAsFixed(1)}%', style: TextStyle(fontSize: 16.0))),
          Expanded(
            child: WaveGrowth(current: details.average, previous: details.prevAverage,)
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.chat_bubble, color: _getDetailColor(context, details.commentCount), size: 18.0),
                      Text(details.commentCount.toString(), style: TextStyle(color: _getDetailColor(context, details.commentCount), fontSize: 16.0))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.grade, color: _getDetailColor(context, details.awardCount), size: 18.0),
                      Text(details.awardCount.toString(), style: TextStyle(color: _getDetailColor(context, details.awardCount), fontSize: 16.0))
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