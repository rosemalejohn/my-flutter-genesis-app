import 'package:flutter/material.dart';
import 'package:performancewave/screens/review_setup/setup.dart';
import 'package:performancewave/store/review_setup.dart';
import 'package:scoped_model/scoped_model.dart';

class DirectSetup extends StatelessWidget {

  final int userId;

  DirectSetup({ this.userId });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScopedModel<ReviewSetupModel>(
          model: ReviewSetupModel(),
          child: ScopedModelDescendant<ReviewSetupModel>(
            builder: (BuildContext context, child, model) {
              return Text('View Setup');
            },
          )
        ),
      ),
      body: ReviewSetupView(userId: userId,)
    );
  }
}