import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:performancewave/widgets/avatar.dart';

class Review {
  final String approved;

  Review({ this.approved });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      approved: json['approved'] as String
    );
  }
}

final Container reviewTabContent = Container(
  padding: const EdgeInsets.all(10.0),
  child: ListView(
    children: <Widget>[
      ReviewCard()
    ],
  ),
);

class ReviewCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: WaveAvatar(height: 50.0, width: 50.0, url: 'https://avatars2.githubusercontent.com/u/1782201?s=400&v=4'),
            title: Text('John Delaney'),
            subtitle: Text('Marketing Director'),
            trailing: FlatButton(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text('Review'),
              color: Colors.red,
              onPressed: () {

              }
            )
          ),
          Divider(),
          ListTile(
            leading: WaveAvatar(
              height: 50.0,
              width: 50.0,
              url: 'https://avatars2.githubusercontent.com/u/483853?s=460&v=4'
            ),
            title: Text('Steve Jobs'),
            subtitle: Text('Chief Operating Officer'),
            trailing: FlatButton(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text('Review'),
              color: Colors.amber,
              onPressed: () {

              }
            )
          )
        ],
      )
    );
  }
}