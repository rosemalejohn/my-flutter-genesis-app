import 'package:flutter/material.dart';
import 'package:performancewave/screens/profile/information_row.dart';
import 'package:performancewave/store/app.dart';
import 'package:performancewave/widgets/role_purpose.dart';
import 'package:scoped_model/scoped_model.dart';

class ProfileWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (BuildContext context, child, model) {
        return ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      WaveProfileInfoRow(title: 'Company', description: model.company.name),
                      WaveProfileInfoRow(title: 'Job Title', description: model.authProfile.title),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  WaveRolePurpose(purpose: model.authProfile.rolePurpose),
                  SizedBox(height: 20.0),
                  Column(
                    children: <Widget>[
                      WaveProfileInfoRow(title: 'Location', description: model.company.city),
                      WaveProfileInfoRow(title: 'Start Date', description: 'January 2017'),
                      WaveProfileInfoRow(title: 'Status', description: model.authProfile.employmentStatus),
                    ],
                  ),
                ],
              ),
            )
          ],
        ); 
      }
    );
              
  }
}