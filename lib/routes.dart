import 'package:flutter/material.dart';
import 'package:performancewave/screens/change_password.dart';
import 'package:performancewave/screens/dashboard/index.dart';
import 'package:performancewave/screens/doingreview/index.dart';
import 'package:performancewave/screens/login.dart';
import 'package:performancewave/screens/profile/index.dart';
import 'package:performancewave/screens/ranking.dart';
import 'package:performancewave/screens/review_setup/index.dart';
import 'package:performancewave/screens/setup_review/index.dart';
import 'package:performancewave/screens/setup_review/start.dart';
import 'package:performancewave/screens/team_stats/index.dart';

Map<String, WidgetBuilder> routes(BuildContext context) => {
  '/dashboard': (context) => Dashboard(),
  '/login': (context) => Login(),
  '/do-review': (context) => DoingReview(),
  '/profile': (context) => Profile(),
  '/setup-review/start': (context) => StartReviewSetup(),
  '/setup-review': (context) => SetupReview(),
  '/rankings': (context) => Rankings(),
  '/team-stats': (context) => TeamStats(),
  '/review-setup': (context) => ReviewSetup(),
  '/change-password': (context) => ChangePassword()
};
