import 'package:performancewave/models/review.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class DoingReviewModel extends Model {

  Api _http;

  Review _review;

  DoingReviewModel() {
    _http = Api();
  }

  Review get review => _review;

  void getReview(int reviewId) async {
    final response = await _http.get('/reviews/' + reviewId.toString());

    if (response.statusCode == 200) {
      Map<String, dynamic> reviewData = response.data['data'];
      _review = Review.fromJson(reviewData);

      notifyListeners();
    }
  }

}