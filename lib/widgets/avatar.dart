import 'package:flutter/material.dart';

class WaveAvatar extends StatelessWidget {

  final double width;

  final double height;

  final String url;

  WaveAvatar({@required this.width, @required this.height, @required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            url,
          ),
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle
        ),
      )
    );
  }
}