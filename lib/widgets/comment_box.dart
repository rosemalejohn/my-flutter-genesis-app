import 'package:flutter/material.dart';

class WaveCommentBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.edit),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: TextField(
            autocorrect: true,
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                  width: 3.0
                )
              )
            ),
            onChanged: (comment) {
              print(comment);
            },
          ),
        )
      ],
    );
  }
}