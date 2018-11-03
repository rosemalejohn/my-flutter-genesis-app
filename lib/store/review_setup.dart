import 'package:performancewave/models/direct.dart';
import 'package:performancewave/models/review.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class ReviewSetupModel extends Model {

  Api _http;
  Review setup;
  List<Direct> directs;

  ReviewSetupModel() {
    _http = Api();
  }

  Future<void> getReviewSetup([int userId]) async {
    final response = await _http.get('/setup/${userId == null ? '' : userId}');

    if (response.statusCode == 200) {
      final json = response.data['data'];

      setup = Review.fromJson(json);

      notifyListeners();
    }
  }

  Future<void> getDirects() async {
    final response = await _http.get('/directs');

    if (response.statusCode == 200) {
      final List<dynamic> json = response.data['data'];

      directs = json.cast().map((direct) {
        return Direct.fromJson(direct);
      }).toList();

      notifyListeners();
    }
  }

}