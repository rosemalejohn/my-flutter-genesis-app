import 'package:flutter/material.dart';

class WaveRolePurpose extends StatelessWidget {

  final String purpose;

  WaveRolePurpose({ this.purpose });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(20.0),
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
          SizedBox(height: 10.0,),
          Text(
            '"To grow Peoplewave by setting strategy for people, marketing, sales and international expansion, while securing investment funds & commercial sales."',
            style: TextStyle(
              fontSize: 16.0
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}