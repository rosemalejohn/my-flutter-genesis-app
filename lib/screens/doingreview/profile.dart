import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/role_purpose.dart';

final ListView profileTabContent = ListView(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Thank you for agreeing to review Phil Aldridge for the period of October 2018. Before we start here is Phil profile.',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff262626)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Divider(),
          ),
          Row(
            children: <Widget>[
              WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('PHIL ALDRIDGE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26.0)),
                  SizedBox(height: 5.0),
                  Text('Chief Technology Officer')
                ],
              )
            ],
          ),
          SizedBox(height: 20.0,),
          WaveRolePurpose(),
          SizedBox(height: 20.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'DATE JOINED',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'May 2017',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'DURATION OF WORK',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                '1 year and 5 months',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'STATUS',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Full-time',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ],
          ),
        ],
      ),
    ),  
  ],
);