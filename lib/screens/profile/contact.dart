import 'package:flutter/material.dart';
import 'package:performancewave/screens/profile/information_row.dart';
import 'package:performancewave/store/app.dart';
import 'package:scoped_model/scoped_model.dart';

class ProfileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (BuildContext context, child, model) {
        print(model.authProfile.aboutMe);

        return ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  WaveProfileInfoRow(title: 'About me', description: model.authProfile.aboutMe),
                  WaveProfileInfoRow(title: 'Interests', description: model.authProfile.interests),
                  Divider(),
                  WaveProfileInfoRow(title: 'Email', description: model.authProfile.email),
                  WaveProfileInfoRow(title: 'Phone', description: model.authProfile.phone),
                  WaveProfileInfoRow(title: 'Social', description: ''),
                ],
              ),
            )
          ],
        );
      }
    );
  }
}