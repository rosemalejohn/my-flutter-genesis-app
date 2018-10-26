import 'package:flutter/material.dart';

class WaveButton extends StatelessWidget {

  final String text;

  final VoidCallback onPressed;

  final Color color;

  bool outlined;

  WaveButton({
    this.text,
    this.onPressed,
    this.color,
    this.outlined = false
  });

  @override
  Widget build(BuildContext context) {
    if (outlined) {
      return OutlineButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 16.0),),
        borderSide: BorderSide(
          color: Colors.amber,
        ),
      );
    } else {
      return FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        child: Text(text, style: TextStyle(fontSize: 16.0),),
        color: color != null ? color : Theme.of(context).primaryColor,
        onPressed: onPressed
      );
    }
  }

}
