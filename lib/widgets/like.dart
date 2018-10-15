import 'package:flutter/material.dart';

class WaveLike extends StatelessWidget {
  
  WaveLike();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Column(
                children: <Widget>[
                  Text(
                    'YES',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                print('Tapped!');
              },
              child: Column(
                children: <Widget>[
                  Text(
                    'NO',
                    style: 
                    TextStyle(
                      fontSize: 22.0, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.red
                    )
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
