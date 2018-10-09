import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';

final ListView profileTabContent = ListView(
  children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Thank you for agreeing to review Phil Aldridge for the period of October 2018. Before we start here is Phil profile.',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff262626)
            ),
          ),
        ),
        Divider(),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('PHIL ALDRIDGE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26.0)),
                Divider(),
                Text('Chief Technology Officer')
              ],
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'DATE JOINED',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Text(
                'May 2017',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.transparent,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'DURATION OF WORK',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Text(
                '1 year and 5 months',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.transparent,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'STATUS',
                style: TextStyle(
                  color: Colors.amber, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Text(
                'Full-time',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
            ),
          ],
        ),
      ],
    ),  
  ],
);