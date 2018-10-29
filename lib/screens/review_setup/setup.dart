import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:performancewave/widgets/role_purpose.dart';

class ReviewSetupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                leading: WaveAvatar(
                  url: 'https://process.filestackapi.com/resize=width:96/W3LcbAJ9QWe4MRupGNLe',
                  height: 60.0,
                  width: 60.0
                ),
                title: Text(
                  'Damien Cummings',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  )
                ),
                subtitle: Text(
                  'Chief Executive Officer',
                  style: TextStyle(
                    fontSize: 16.0
                  )
                )
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Review Period',
                            style: TextStyle(fontSize: 16.0)
                          )
                        ),
                        Expanded(
                          child: Text(
                            'October 2018',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Status',
                            style: TextStyle(fontSize: 16.0)
                          )
                        ),
                        Expanded(
                          child: Text(
                            'review ongoing',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xff417505))
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Deadline',
                            style: TextStyle(fontSize: 16.0)
                          )
                        ),
                        Expanded(
                          child: Text(
                            '10/31/2018',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Manager',
                            style: TextStyle(fontSize: 16.0)
                          )
                        ),
                        Expanded(
                          child: Text(
                            'Bill Gates',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 10.0,),
              Text('REVIEW SETUP', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
              SizedBox(height: 10.0,),
              Text('Last updated 3 weeks ago', style: TextStyle(fontSize: 16.0, color: Color(0xffaaaaaa))),
              Divider(),
              SizedBox(height: 10.0,),
              WaveRolePurpose(),
              Divider(),
              SizedBox(height: 10.0,),
              Text('HARD SKILLS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: WaveAvatar(height: 70.0, width: 70.0, url: '')
                  ),
                  Expanded(
                    child: Text('Marketing', style: TextStyle(fontSize: 16.0))
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: WaveAvatar(height: 70.0, width: 70.0, url: '')
                  ),
                  Expanded(
                    child: Text('Strategy Development', style: TextStyle(fontSize: 16.0))
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: WaveAvatar(height: 70.0, width: 70.0, url: '')
                  ),
                  Expanded(
                    child: Text('Capital Raising', style: TextStyle(fontSize: 16.0))
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 10.0,),
              Text('YOUR REVIEWERS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
              SizedBox(height: 10.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        WaveAvatar(height: 70.0, width: 70.0, url: 'https://process.filestackapi.com/resize=width:96/yo7945dPTJGuOSeqXgl4'),
                        SizedBox(height: 10.0,),
                        Text('Aimee B.', style: TextStyle(fontSize: 16.0))
                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        WaveAvatar(height: 70.0, width: 70.0, url: 'https://process.filestackapi.com/resize=width:96/yo7945dPTJGuOSeqXgl4'),
                        SizedBox(height: 10.0,),
                        Text('Ariunna E.', style: TextStyle(fontSize: 16.0))
                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        WaveAvatar(height: 70.0, width: 70.0, url: 'https://process.filestackapi.com/resize=width:96/CQ45xMlUSEuGdfzTyfvw'),
                        SizedBox(height: 10.0,),
                        Text('Phil A.', style: TextStyle(fontSize: 16.0))
                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        WaveAvatar(height: 70.0, width: 70.0, url: 'https://process.filestackapi.com/resize=width:96/X94WAg2TG2jWtWpdkZar'),
                        SizedBox(height: 10.0,),
                        Text('Rosemale-John II V.', style: TextStyle(fontSize: 16.0))
                      ],
                    )
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: WaveButton(
                      text: 'Approve',
                      onPressed: () {
                        
                      }
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: WaveButton(
                      text: 'Reject',
                      color: Theme.of(context).errorColor,
                      onPressed: () {
                        
                      }
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}