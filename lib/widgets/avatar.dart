import 'package:flutter/material.dart';

class WaveAvatar extends StatelessWidget {

  final double width;
  final double height;
  final String url;
  final Color borderColor;
  final Color backgroundColor;

  WaveAvatar({
    @required this.width, 
    @required this.height, 
    @required this.url,
    this.borderColor,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        backgroundImage: NetworkImage(
          url == null ? '' : url,
        ),
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: borderColor == null ? Theme.of(context).primaryColor : borderColor,
        shape: BoxShape.circle,
      ),
    );
  }
}