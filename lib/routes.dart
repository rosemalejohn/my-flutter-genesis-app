import 'package:performancewave/screens/dashboard/index.dart';
import 'package:performancewave/screens/doingreview/index.dart';
import 'package:performancewave/screens/doingreview/start.dart';
import 'package:performancewave/screens/login.dart';
import 'package:performancewave/screens/profile/index.dart';
import 'package:performancewave/screens/ranking.dart';
import 'package:performancewave/screens/setup_review.dart';

Object routes (context) {
  return {
    '/': (context) => Dashboard(title: 'Home'),
    '/login': (context) => Login(),
    '/do-review/start': (context) => StartReview(),
    '/do-review': (context) => DoingReview(),
    '/profile': (context) => Profile(),
    '/setup-review': (context) => SetupReview(),
    '/rankings': (context) => Rankings()
  };
}
