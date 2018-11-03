import 'package:flutter/material.dart';

class WaveGrowth extends StatelessWidget {
  
  final double previous;
  final double current;

  double get gain {
    double diff = current - previous;
    if (diff > 0) {
      return diff;
    }
    return 0.0;
  }

  double get loss {
    double diff = current - previous;
    if (diff < 0) {
      return diff.abs();
    }
    return 0.0;
  }

  WaveGrowth({this.previous, this.current});

  @override
  Widget build(BuildContext context) {
    if (gain > 0) {
      return Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_up, color: Color(0xff346407),),
          Text(gain.toStringAsFixed(1), style: TextStyle(fontSize: 16.0, color: Color(0xff346407))),
        ],
      );
    } else if (loss > 0) {
      return Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_down, color: Color(0xffd0011b),),
          Text(loss.toStringAsFixed(1), style: TextStyle(fontSize: 16.0, color: Color(0xffd0011b))),
        ],
      );
    } else {
      return Container();
    }
  }
}