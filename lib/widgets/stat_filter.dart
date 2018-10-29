import 'package:flutter/material.dart';

class WaveStatFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Stats for',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
        ),
        SizedBox(width: 30.0,),
        Expanded(
          child: DropdownButton(
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text('Yearly'),
              ),
              DropdownMenuItem(
                child: Text('Monthly'),
              ),
              DropdownMenuItem(
                child: Text('Quarterly'),
              )
            ],
            onChanged: (value) {
              
            }
          ),
        ),
        SizedBox(width: 10.0,),
        Expanded(
          child: DropdownButton(
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                child: Text('2018'),
              ),
              DropdownMenuItem(
                child: Text('2017'),
              ),
            ],
            onChanged: (value) {
              
            }
          ),
        )
      ],
    );
  }
}