import 'package:flutter/material.dart';

class WaveCommentBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.edit, color: Color(0xff9b9b9b),),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: TextField(
            autocorrect: true,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Add comment (optional)',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
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