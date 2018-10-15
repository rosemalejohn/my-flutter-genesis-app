import 'package:flutter/material.dart';
import 'package:performancewave/widgets/comment_box.dart';
import 'package:performancewave/widgets/like.dart';

final PageView relationshipTabContent = PageView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    likable,
    trustworthy
  ],
);

final ListView likable = ListView(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Do you find Phil likable?',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff262626)
            ),
          ),
          SizedBox(height: 40.0,),
          WaveLike(),
          SizedBox(height: 40.0,),
          WaveCommentBox()
        ],
      )
    )
  ],
);

final ListView trustworthy = ListView(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'If I needed to entrust my most critical project/client to a colleague, will I choose Phil?',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff262626)
            ),
          ),
          SizedBox(height: 20.0,),
          Slider(
            inactiveColor: Color(0xffCCCCCC),
            divisions: 10,
            onChanged: (double value) {
              print(value);
            },
            value: 5.0,
            min: 1.0,
            max: 10.0
          ),
          SizedBox(height: 20.0,),
          Text(
            'I am confident that I can trust Phil with my most critical project/client.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0xff262626),
            ),
          ),
          SizedBox(height: 40.0,),
          WaveCommentBox()
        ],
      )  
    )
  ],
);