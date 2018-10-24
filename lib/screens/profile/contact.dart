import 'package:flutter/material.dart';
import 'package:performancewave/screens/profile/information_row.dart';

class ProfileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              WaveProfileInfoRow(title: 'About me', description: ''),
              WaveProfileInfoRow(title: 'Interests', description: ''),
              Divider(),
              WaveProfileInfoRow(title: 'Email', description: 'damien@peoplewave.co'),
              WaveProfileInfoRow(title: 'Phone', description: '+639103234901'),
              WaveProfileInfoRow(title: 'Social', description: ''),
            ],
          ),
        )
      ],
    );
  }
}