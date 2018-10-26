import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';

class DirectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 10.0,),
        WaveDirectTile(
          name: 'Ariunaa Enkhamgalan',
          title: 'Digital Marketing Executive',
          reviewType: 'review ongoing',
          avatar: 'https://process.filestackapi.com/resize=width:96/cBMzAkmdQXCiZiyztDjW'
        ),
      ],
    );
  }
}

class WaveDirectTile extends StatelessWidget {

  final String name;
  final String title;
  final String avatar;
  final String reviewType;

  WaveDirectTile({ this.name, this.title, this.avatar, this.reviewType });

  TextStyle _handleReviewTypeStyle(String type) {
    TextStyle _textStyle;

    switch (type.toLowerCase()) {
      case 'review ongoing':
        _textStyle = TextStyle(
          color: Color(0xff417505), 
          fontWeight: FontWeight.w500, 
          fontSize: 16.0
        );
        break;
      case 'pending setup':
        _textStyle = TextStyle(
          color: Color(0xffef601a), 
          fontWeight: FontWeight.w500, 
          fontSize: 16.0
        );
        break;
    }

    return _textStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: ListTile(
        leading: WaveAvatar(
          height: 70.0,
          width: 70.0,
          url: avatar
        ),
        title: Text(name, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        subtitle: Text(title, style: TextStyle(fontSize: 16.0)),
        trailing: Text(reviewType, style: _handleReviewTypeStyle(reviewType)),
      ),
    );
  }
}