import 'package:flutter/material.dart';
import 'package:performancewave/screens/profile/information_row.dart';
import 'package:performancewave/widgets/role_purpose.dart';

class ProfileWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  WaveProfileInfoRow(title: 'Company', description: 'Peoplewave Pty. Ltd.'),
                  WaveProfileInfoRow(title: 'Job Title', description: 'Chief Executive Officer'),
                ],
              ),
              SizedBox(height: 20.0),
              WaveRolePurpose(),
              SizedBox(height: 20.0),
              Column(
                children: <Widget>[
                  WaveProfileInfoRow(title: 'Location', description: 'Singapore'),
                  WaveProfileInfoRow(title: 'Start Date', description: 'January 2017'),
                  WaveProfileInfoRow(title: 'Status', description: 'Full-time'),
                ],
              ),
            ],
          ),
        )
      ],
    );
              
  }
}