import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';

class StartReviewSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Set-up'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hi, Damien', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0)),
                SizedBox(height: 20.0),
                Text('You will now set-up your review for the period:', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                      right: Radius.circular(20.0)
                    )
                  ),
                  child: Text('October 2018'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(),
                ),
                Text(
                  'This is what you set-up last month:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0
                  )
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(0.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Damien Cummings', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0)),
                              SizedBox(height: 10.0,),
                              Text('Chief Executive Officer', style: TextStyle(fontSize: 16.0),),
                              SizedBox(height: 20.0,),
                              Text('REVIEW SETUP', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              SizedBox(height: 20.0),
                              Text(
                                '"To grow Peoplewave by setting strategy for people, marketing, sales and international expansion, while securing investment funds & commercial sales."',
                                style: TextStyle(fontSize: 16.0)
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Divider(),
                              ),
                              Text('HARD SKILLS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              SizedBox(height: 20.0),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Divider(),
                              ),
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
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Divider(),
                              ),
                              Text(
                                'Do you wish to make changes for the current month?',
                                style: TextStyle(fontSize: 16.0)
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: WaveButton(
                                      outlined: true,
                                      text: 'No, confirm this',
                                      color: Colors.white,
                                      textColor: Colors.black,
                                      onPressed: () {
                                        
                                      }
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Expanded(
                                    child: WaveButton(
                                      text: 'Yes, make changes',
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/setup-review');
                                      }
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}