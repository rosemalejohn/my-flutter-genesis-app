import 'package:flutter/material.dart';

class WaveButton extends StatelessWidget {

  final String text;

  final VoidCallback onPressed;

  final Color color;

  WaveButton({ this.text, this.onPressed, this.color });

  @override
  Widget build(BuildContext context) {
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
