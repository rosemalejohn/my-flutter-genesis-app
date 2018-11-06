import 'package:flutter/material.dart';
import 'package:performancewave/store/app.dart';
import 'package:performancewave/store/notification.dart';
import 'package:performancewave/store/review_setup.dart';

class Startup extends StatelessWidget {
  final List<String> _loadingMessages = [
    'Loading your performance wave data',
    'Fetching reviews',
    'Preparing your profile',
    'Loading your stats',
    'Please wait'
  ];

  String _getLoadingMessage() {
    _loadingMessages.shuffle();

    final String message = _loadingMessages.elementAt(0);

    _loadingMessages.removeAt(0);

    return message == null ? 'Loading' : message;
  }

  @override
  Widget build(BuildContext context) {
    Future.wait([
      AppModel.of(context).initApp(),
      AppModel.of(context).getDashboardStat(),
      NotificationModel.of(context).getNotification(),
      ReviewSetupModel.of(context).getReviewSetup()
    ]).then((res) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    });

    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(child: Container(),),
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/light-logo.png'),
                )
              ),
            ),
            Expanded(child: Container(),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 20.0,
                width: 20.0,
                child: Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.white),
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                _getLoadingMessage(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}