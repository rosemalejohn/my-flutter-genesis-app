import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';

class Review {
  final String name;
  final String position;
  final String avatar;
  final String due;

  Review({this.name, this.position, this.avatar, this.due});
}

List<Review> _reviews = <Review>[
  Review(
    name: 'John Delaney',
    position: 'Marketing Director',
    avatar: 'https://avatars2.githubusercontent.com/u/1782201?s=400&v=4',
    due: 'November 2018'
  ),
];

class ReviewTabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _reviews.length,
      itemBuilder: (context, index) {
        return ReviewCard(review: _reviews[index]);
      },
    );
  }
}

class ReviewCard extends StatelessWidget {
  final Review review;

  ReviewCard({this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(20.0),
          leading: WaveAvatar(height: 70.0, width: 70.0, url: review.avatar),
          title: Text('DUE ${review.due}'.toUpperCase(), style: TextStyle(color: Theme.of(context).primaryColor)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              Text(review.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Color(0xff262626))),
              SizedBox(height: 5.0,),
              Text(review.position)
            ],
          ),
          trailing: WaveButton(
            text: "Review",
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, '/do-review/start');
            },
          )
        ),
        Divider(),
      ],
    );
  }
}