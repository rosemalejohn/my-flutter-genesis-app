import 'package:flutter/material.dart';
import 'package:performancewave/widgets/role_purpose.dart';

class Purpose extends StatelessWidget {
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
                'Damien, your current Role Purpose is as follows:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0)
              ),
              SizedBox(height: 20.0),
              WaveRolePurpose(),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.edit, color: Theme.of(context).primaryColor,),
                  Text(
                    'edit my Role Purpose',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}