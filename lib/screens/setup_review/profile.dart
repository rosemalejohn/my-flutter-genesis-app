import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Before we start, here\'s your current Peoplewave profile ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '(this will be visible to your viewers)', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(),
              ),
              Text('Damien Cummings', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0)),
              SizedBox(height: 10.0,),
              Text('Chief Executive Officer', style: TextStyle(fontSize: 16.0),),
              SizedBox(height: 40.0),
              Text(
                'DATE JOINED',
                style: TextStyle(
                  color: Theme.of(context).primaryColor, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'January 2017',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              // Duration of work
              SizedBox(height: 20.0),
              Text(
                'DURATION OF WORK',
                style: TextStyle(
                  color: Theme.of(context).primaryColor, 
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                '1 year and 9 months',
                style: TextStyle(
                  fontWeight: FontWeight.w500, 
                  fontSize: 16.0
                ),
              ),
              // Status
              SizedBox(height: 20.0),
              Text(
                'STATUS',
                style: TextStyle(
                  color: Theme.of(context).primaryColor, 
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
          )
        )
      ],
    );
  }
}