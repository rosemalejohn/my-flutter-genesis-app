import 'package:flutter/material.dart';
import 'package:performancewave/store/app.dart';

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
    AppModel.of(context).initApp()
      .then((res) {
        Navigator.pushReplacementNamed(context, '/dashboard');
      });

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(child: Container(),),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo-rounded.png'),
                )
              ),
            ),
            Expanded(child: Container(),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 2.0,
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