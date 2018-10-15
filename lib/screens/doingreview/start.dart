import 'package:flutter/material.dart';
import 'package:performancewave/widgets/avatar.dart';
import 'package:performancewave/widgets/role_purpose.dart';

ListView profileView(context) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Thank you for agreeing to review Phil Aldridge for the period of October 2018. Before we start here is Phil profile.',
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
                WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
                SizedBox(width: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('PHIL ALDRIDGE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26.0)),
                    SizedBox(height: 5.0),
                    Text('Chief Technology Officer')
                  ],
                )
              ],
            ),
            SizedBox(height: 20.0,),
            WaveRolePurpose(),
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
                  'Full-time',
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

ListView anonymousView(context) {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      WaveAvatar(url: 'https://process.filestackapi.com/resize=width:85/CQ45xMlUSEuGdfzTyfvw', height: 100.0, width: 100.0),
                      SizedBox(height: 10.0),
                      Text('YES', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text('Review as anonymous person', style: TextStyle(fontSize: 16.0))
                    ],
                  ),
                ),
                Padding(
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
                      Text('Review as Damien Cummings', style: TextStyle(fontSize: 16.0))
                    ],
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

class StartReview extends StatefulWidget {

  StartReview({Key key}) : super(key: key);

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
    print(page);
    setState(() {
      this._defaultPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('You are reviewing: Phil Aldridge'),
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: onPageChanged,
          controller: _pageController,
          children: <Widget>[
            profileView(context),
            anonymousView(context)
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(style: BorderStyle.solid, color: Color(0xffe4e4e4)))
          ),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: Text("Got it. Let's start!", style: TextStyle(fontSize: 16.0),),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.easeIn
                );
              }
            )
          ),
          height: 60.0
        ),
      )
    );
  }
}