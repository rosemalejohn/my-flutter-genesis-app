import 'package:flutter/material.dart';
import 'package:performancewave/screens/review_setup/setup.dart';
import 'package:performancewave/store/review_setup.dart';
import 'package:performancewave/widgets/button.dart';
import 'package:scoped_model/scoped_model.dart';

class SelfTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ReviewSetupModel>(
      builder: (BuildContext context, child, model) {
        if (model.setup == null) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                WaveButton(
                  text: 'Setup your review',
                  onPressed: () {
                    Navigator.pushNamed(context, '/setup-review/start');
                  },
                ),
              ],
            ),
          );
        } else {
          return Container(
            child: ReviewSetupView()
          );
        }
      }
    );
  }
}