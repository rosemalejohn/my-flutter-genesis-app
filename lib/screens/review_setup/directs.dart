import 'package:flutter/material.dart';
import 'package:performancewave/screens/review_setup/direct_setup.dart';
import 'package:performancewave/store/review_setup.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:scoped_model/scoped_model.dart';

class DirectsTab extends StatelessWidget {

  SnackBar _reviewNotFoundSnackBar(context) => SnackBar(
    content: Text('Review not yet setup.'),
    action: SnackBarAction(
      label: 'Close',
      onPressed: () {
        Scaffold.of(context).hideCurrentSnackBar();
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    final model = ReviewSetupModel();
    model.getDirects();

    return ScopedModel<ReviewSetupModel>(
      model: model,
      child: ScopedModelDescendant<ReviewSetupModel>(
        builder: (BuildContext context, child, model) {
          if (model.directs == null) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            return ListView(
              children: model.directs.map((direct) {
                return Column(
                  children: <Widget>[
                    SizedBox(height: 10.0,),
                    GestureDetector(
                      onTap: () {
                        if (direct.reviewId != null) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) => DirectSetup(userId: direct.userId,)
                          ));
                        } else {
                          Scaffold.of(context).showSnackBar(_reviewNotFoundSnackBar(context));
                        }
                      },
                      child: WaveDirectTile(
                        name: direct.reviewee,
                        title: direct.title,
                        reviewType: direct.status,
                        avatar: direct.photoKey.isEmpty ? '' : 'https://process.filestackapi.com/resize=width:96/${direct.photoKey}'
                      ),
                    ),
                  ],
                );
              }).toList(),
            );
          }
        }
      ),
    );
  }
}

class WaveDirectTile extends StatelessWidget {

  final String name;
  final String title;
  final String avatar;
  final String reviewType;

  WaveDirectTile({ this.name, this.title, this.avatar, this.reviewType });

  TextStyle _handleReviewTypeStyle(String type) {
    TextStyle _textStyle;

    switch (type.toLowerCase()) {
      case 'review ongoing':
        _textStyle = TextStyle(
          color: Color(0xff417505), 
          fontWeight: FontWeight.w500, 
          fontSize: 16.0
        );
        break;
      case 'pending setup':
        _textStyle = TextStyle(
          color: Color(0xffef601a), 
          fontWeight: FontWeight.w500, 
          fontSize: 16.0
        );
        break;
    }

    return _textStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: ListTile(
        leading: WaveAvatar(
          height: 70.0,
          width: 70.0,
          url: avatar
        ),
        title: Text(name, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        subtitle: Text(title, style: TextStyle(fontSize: 16.0)),
        trailing: Text(reviewType, style: _handleReviewTypeStyle(reviewType)),
      ),
    );
  }
}