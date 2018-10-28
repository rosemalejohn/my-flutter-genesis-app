import 'package:flutter/material.dart';
import 'package:performancewave/models/review.dart';
import 'package:performancewave/models/team.dart';
import 'package:performancewave/models/user.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {

  Api _http;

  User _authProfile;
  Team _company;
  List<Review> _reviews;

  AppModel() {
    _http = Api();
  }

  bool get isLoaded => _authProfile != null && _company != null;
  
  User get authProfile => _authProfile;

  Team get company => _company;

  List<Review> get reviews => _reviews;

  void setAuthProfile(User user) {
    _authProfile = user;
    notifyListeners();
  }

  void setCompany(Team team) {
    _company = team;
    notifyListeners();
  }

  void initApp() async {
    final response = await _http.get('/performancewave-meta');

    if (response.statusCode == 200) {
      Map<String, dynamic> _user = response.data['state']['user'];
      Map<String, dynamic> _team = response.data['state']['currentTeam'];

      setAuthProfile(User.fromJson(_user));

      setCompany(Team.fromJson(_team));
    }
  }

  void getReviewList() async {
    final response = await _http.get('/reviews');

    if (response.statusCode == 200) {
      final List<dynamic> responseData = response.data['data'];
      final parsed = responseData.cast();

      _reviews = parsed.map((review) => Review.fromJson(review)).toList();

      notifyListeners();
    }
  }

  static AppModel of(BuildContext context) => ScopedModel.of<AppModel>(context);

}
