import 'package:flutter/material.dart';
import 'package:performancewave/layouts/singlepage.dart';
import 'package:performancewave/models/review.dart';
import 'package:performancewave/store/ranking.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/stat_filter.dart';
import 'package:scoped_model/scoped_model.dart';

class Rankings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RankingModel model = RankingModel();
    model.getReviewRankings();

    return ScopedModel<RankingModel>(
      model: model,
      child: SinglePage(
        title: Text('Rankings'),
        body: ScopedModelDescendant<RankingModel>(
          builder: (BuildContext context, child, model) {
            if (model.rankings == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              final List _topRank = model.rankings.take(3).toList();
              final List _bottomRank = model.rankings.sublist(3).toList();
              int _currentTopRank = 0;
              int _currentBottomRank = 2;

              return ListView(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        WaveStatFilter(),
                        Center(
                          child: Text(model.average.toStringAsFixed(1) + '%', style: TextStyle(fontSize: 70.0))
                        ),
                        Divider(),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _topRank.map((review) => WaveTopRank(review: review, rank: ++_currentTopRank,)).toList(),
                        ),
                        SizedBox(height: 10.0),
                        Divider(),
                        Column(
                          children: _bottomRank.map((review) => WaveRank(review: review, rank: ++_currentBottomRank)).toList(),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
          }
        ),
      ),
    );
  }
}

class WaveTopRank extends StatelessWidget {

  final Review review;
  final int rank;

  WaveTopRank({
    this.review,
    this.rank = 1
  });

  String _getCrownImage(int rank) {
    String _crownImage;

    switch (rank) {
      case 1:
        _crownImage = 'assets/images/gold-rank.png';
        break;
      case 2:
        _crownImage = 'assets/images/silver-rank.png';
        break;
      case 3:
        _crownImage = 'assets/images/bronze-rank.png';
        break;
    }

    return _crownImage;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_getCrownImage(rank)),
                )
              ),
            ),
            SizedBox(height: 5.0),
            WaveAvatar(height: 90.0, width: 90.0, url: review.reviewee.photoUrl,),
            SizedBox(height: 30.0,),
            Text(
              review.reviewee.fullName, 
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0,),
            Text(
              review.average.toString() + '%',
              style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.person, color: Color(0xffA9A9A9),),
                      Text(review.totalReviewers.toString(), style: TextStyle(color: Color(0xffA9A9A9), fontSize: 16.0))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.grade, color: Theme.of(context).primaryColor),
                      Text(review.awardCount.toString(), style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

class WaveRank extends StatelessWidget {

  final Review review;
  final int rank;

  WaveRank({
    this.review,
    this.rank = 1
  });

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(width: 30.0, child: Text(rank.toString(), style: TextStyle(fontSize: 16.0))),
            WaveAvatar(height: 70.0, width: 70.0, url: review.reviewee.photoUrl),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  review.reviewee.fullName,
                  style: TextStyle(fontSize: 16.0)
                ),
              ),
            ),
            Expanded(
              child: Text(
                review.average.toString() + '%',
                style: TextStyle(fontSize: 16.0, color: Theme.of(context).primaryColor)
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Icon(Icons.person, color: Color(0xffA9A9A9),),
                  Text(review.totalReviewers.toString(), style: TextStyle(color: Color(0xffA9A9A9), fontSize: 16.0))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Icon(Icons.grade, color: Theme.of(context).primaryColor),
                  Text(review.awardCount.toString(), style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16.0))
                ],
              ),
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}