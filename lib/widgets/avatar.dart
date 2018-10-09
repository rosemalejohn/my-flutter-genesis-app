import 'package:flutter/material.dart';

class _AvatarState extends State<WaveAvatar> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            widget.url,
          ),
        ),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle
        ),
      )
    );
  }
}

class WaveAvatar extends StatefulWidget {

  final double width;

  final double height;

  final String url;

  WaveAvatar({@required this.width, @required this.height, @required this.url});

  @override
  createState() => _AvatarState();
}