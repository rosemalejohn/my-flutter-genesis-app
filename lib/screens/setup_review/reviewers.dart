import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';

class Reviewers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'For the period, your reviewers are:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0)
              ),
              SizedBox(height: 30.0,),
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
              SizedBox(height: 30.0,),
              Text(
                'We recommend that you ad at least 4 reviewers.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0)
              )
            ],
          ),
        )
      ],
    );
  }
}