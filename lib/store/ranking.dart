import 'package:performancewave/models/review.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class RankingModel extends Model {

  Api _http;

  List<Review> _rankings;
  double _average;

  RankingModel() {
    _http = Api();
  }

  List<Review> get rankings => _rankings;
  double get average => _average;

  void getReviewRankings() async {
    final response = await _http.get('/pwave/review-rankings?type=yearly&period=2018&date_from=2018-01-01&date_to=2018-12-31&limit=30&desc=true');

    if (response.statusCode == 200) {
      final List<dynamic> rankingData = response.data['data'];
      _average = response.data['average'];
      final parsed = rankingData.cast();

      _rankings = parsed.map((review) => Review.fromJson(review)).toList();
      
      notifyListeners();
    }
  }

}