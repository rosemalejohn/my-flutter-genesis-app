import 'package:flutter/material.dart';

class WaveProfileInfoRow extends StatelessWidget {

  final String title;
  final String description;

  WaveProfileInfoRow({ this.title, this.description });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 120.0,
          child: Text(
            title,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description == null ? '' : description,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16.0,
            )
          ),
        )
      ],
    );
  }
}