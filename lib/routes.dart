import 'package:performancewave/screens/doingreview/index.dart';
import 'package:performancewave/screens/doingreview/start.dart';
import 'package:performancewave/screens/index.dart';
import 'package:performancewave/screens/profile.dart';
import 'package:performancewave/screens/ranking.dart';
import 'package:performancewave/screens/setup_review.dart';

Object routes (context) {
  return {
    '/': (context) => LandingPage(title: 'Home'),
    '/do-review/start': (context) => StartReview(),
    '/do-review': (context) => DoingReview(),
    '/profile': (context) => Profile(),
    '/setup-review': (context) => SetupReview(),
    '/rankings': (context) => Rankings()
  };
}
