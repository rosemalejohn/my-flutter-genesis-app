import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';

class WaveProfileScore extends StatelessWidget {

  final String name;
  final String avatar;
  final String title;
  final String score;

  WaveProfileScore({this.name, this.avatar, this.title, this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: WaveAvatar(height: 50.0, width: 50.0, url: avatar),
          title: Text(name),
          subtitle: Text(title),
          trailing: Text(
            score,
            style: TextStyle(
              fontSize: 24.0,
              color: Theme.of(context).primaryColor
            )
          ),
        ),
        Divider()
      ]
    );
  }
}