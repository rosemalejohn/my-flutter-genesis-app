import 'package:flutter/material.dart';
import 'package:performancewave/widgets/app_drawer.dart';
import 'package:performancewave/widgets/app_bar.dart';
import 'package:performancewave/widgets/avatar.dart';

class Profile extends StatelessWidget {

  Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      endDrawer: Drawer(),
      appBar: PerformanceWaveAppBar(
        title: Text('Profile')
      ),
      body: Center(
        child: (
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: WaveAvatar(width: 100.0, height: 100.0, url: 'https://avatars0.githubusercontent.com/u/7259036?s=460&v=4'),
              ),
              Text('Matthew Carrol', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500)),
              Text('Coder @ Github Inc.', style: TextStyle(fontSize: 18.0)),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            'Company',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Github Inc.',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                            )
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            'Job Title',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Full stack marketering',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                            )
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'ROLE PURPOSE',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          '"To grow Peoplewave by setting strategy for people, marketing, sales and international expansion, while securing investment funds & commercial sales."',
                          style: TextStyle(
                            fontSize: 16.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            'Location',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Singapore',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                            )
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            'Start Date',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'January 2017',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                            )
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            'Status',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Full-time',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 16.0,
                            )
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}