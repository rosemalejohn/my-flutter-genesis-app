import 'package:flutter/material.dart';
import 'package:performancewave/models/review.dart';
import 'package:performancewave/screens/doingreview/start.dart';
import 'package:performancewave/store/app.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:scoped_model/scoped_model.dart';

class ReviewTabContent extends StatelessWidget {

  Future<dynamic> _getReviewList(BuildContext context) async {
    return AppModel.of(context).getReviewList();
  }

  Widget _buildContent(AppModel model) {
    if (model.reviews == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return ListView.builder(
        itemCount: model.reviews.length,
        itemBuilder: (context, index) {
          return ReviewCard(review: model.reviews[index]);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _getReviewList(context);

    return ScopedModelDescendant<AppModel>(
      builder: (BuildContext context, child, model) {
        return RefreshIndicator(
          onRefresh: () {
            return _getReviewList(context);
          },
          child: _buildContent(model),
        ); 
      }
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
          leading: WaveAvatar(
            height: 70.0,
            width: 70.0,
            url: review.reviewee.photoUrl,
            borderColor: review.isOverdue ? Colors.red : null,
          ),
          title: Text(
            review.isOverdue ? 'OVERDUE' : 'DUE ${review.due}'.toUpperCase(),
            style: TextStyle(color: Theme.of(context).primaryColor)
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              Text(review.reviewee.fullName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Color(0xff262626))),
              SizedBox(height: 5.0,),
              Text(review.reviewee.title)
            ],
          ),
          trailing: WaveButton(
            text: "Review",
            color: review.isOverdue ? Colors.red : Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => StartReview(reviewId: review.id,)
              ));
            },
          )
        ),
        Divider(),
      ],
    );
  }
}