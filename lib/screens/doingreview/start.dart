import 'package:flutter/material.dart';
import 'package:performancewave/store/doingreview.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:performancewave/widgets/role_purpose.dart';
import 'package:scoped_model/scoped_model.dart';

class ProfileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<DoingReviewModel>(
      builder: (BuildContext context, child, model) {
        return ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Thank you for agreeing to review ${model.review.reviewee.fullName} for the period of October 2018. Before we start here is Phil profile.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff262626)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Divider(),
                  ),
                  Row(
                    children: <Widget>[
                      WaveAvatar(url: model.review.reviewee.photoUrl, height: 100.0, width: 100.0),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(model.review.reviewee.fullName, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26.0)),
                          SizedBox(height: 5.0),
                          Text(model.review.reviewee.title)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  WaveRolePurpose(purpose: model.review.rolePurpose,),
                  SizedBox(height: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DATE JOINED',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor, 
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'May 2017',
                        style: TextStyle(
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DURATION OF WORK',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor, 
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        '1 year and 5 months',
                        style: TextStyle(
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'STATUS',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor, 
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        model.review.reviewee.employmentStatus,
                        style: TextStyle(
                          fontWeight: FontWeight.w500, 
                          fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),  
          ],
        );
      }
    );
  }
}

class AnonymousView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Do you want to review anonymously?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff262626)
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
                          SizedBox(height: 10.0),
                          Text('YES', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10.0),
                          Text('Review as anonymous person', style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/do-review');
                            },
                            child: WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
                          ),
                          SizedBox(height: 10.0),
                          Text('NO', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10.0),
                          Text(
                            'Review as Damien Cummings',
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        )
      ],
    );
  }
}

class StartReview extends StatefulWidget {

  final int reviewId;

  StartReview({
    this.reviewId
  });

  @override
  _StartReviewState createState() => new _StartReviewState();
}

class _StartReviewState extends State<StartReview> {

  int _defaultPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _defaultPage);
  }

  void onPageChanged(int page) {
    setState(() {
      this._defaultPage = page;
    });
  }

  Widget _buildBottomNavigationBar() {
    if (_defaultPage == 0) {
      return Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(style: BorderStyle.solid, color: Color(0xffe4e4e4)))
        ),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: WaveButton(
            text: "Got it. Let's start!",
            onPressed: () {
              _pageController.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeIn
              );
            }
          )
        )
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DoingReviewModel model = DoingReviewModel();
    model.getReview(widget.reviewId);

    return ScopedModel<DoingReviewModel>(
      model: model,
      child: DefaultTabController(
        length: 5,
        child: ScopedModelDescendant<DoingReviewModel>(
          builder: (BuildContext context, child, model) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: model.review == null ? Text('') : Text('You are reviewing: ${model.review.reviewee.fullName}'),
              ),
              body: model.review == null ? Center(child: CircularProgressIndicator()) : PageView(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: onPageChanged,
                controller: _pageController,
                children: <Widget>[
                  ProfileView(),
                  AnonymousView()
                ],
              ),
              bottomNavigationBar: _buildBottomNavigationBar(),
            );
          },
        )
      ),
    );
  }
}
