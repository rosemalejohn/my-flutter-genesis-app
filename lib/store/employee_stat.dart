import 'package:performancewave/models/employee_stat.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class EmployeeStatModel extends Model {

  Api _http;
  EmployeeStat _employeeStat;

  EmployeeStatModel() {
    _http = Api();
  }

  void getStats() async {
    final response = await _http.get('/stats?type=Monthly&period=2018_8');

    if (response.statusCode == 200) {
      // List<dynamic> awardResponse = response.data['data']['awards'];
      print(response.data);
    }
  }

}