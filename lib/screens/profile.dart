import 'package:flutter/material.dart';
import 'package:performancewave/layouts/singlepage.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/role_purpose.dart';

class Profile extends StatelessWidget {

  Profile();

  @override
  Widget build(BuildContext context) {
    return SinglePage(
      title: Text('Profile'),
      body: Center(
        child: (
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                WaveAvatar(width: 100.0, height: 100.0, url: 'https://avatars0.githubusercontent.com/u/7259036?s=460&v=4'),
                SizedBox(height: 10.0),
                Text('Matthew Carrol', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500)),
                Text('Coder @ Github Inc.', style: TextStyle(fontSize: 18.0)),
                SizedBox(height: 20.0),
                Column(
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
                ),
                SizedBox(height: 20.0),
                WaveRolePurpose(),
                SizedBox(height: 20.0),
                Column(
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
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}