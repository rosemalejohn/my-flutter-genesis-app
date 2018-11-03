import 'package:flutter/material.dart';
import 'package:performancewave/models/notification.dart';
import 'package:performancewave/services/api/http.dart';
import 'package:scoped_model/scoped_model.dart';

class NotificationModel extends Model {

  Api _http;

  List<dynamic> _others;
  List<dynamic> _today;
  List<dynamic> _yesterday;

  NotificationModel() {
    _http = Api();
  }

  List<dynamic> get others => _others;
  List<dynamic> get today => _today;
  List<dynamic> get yesterday => _yesterday; 

  Future<void> getNotification() async {
    final response = await _http.get('/notifications/recent');

    if (response.statusCode == 200) {
      final responseData = response.data['notifications'];
      final parsedOthers = responseData['others'];
      final parsedYesterday = responseData['yesterday'];
      final parsedToday = responseData['today'];

      if (parsedOthers != null) {
        _others = parsedOthers.cast().map((notification) => NotificationInfo.fromJson(notification)).toList();
      }
      if (parsedYesterday != null) {
        _yesterday = parsedYesterday.cast().map((notification) => NotificationInfo.fromJson(notification)).toList();
      }
      if (parsedToday != null) {
        _today = parsedToday.cast().map((notification) => NotificationInfo.fromJson(notification)).toList();
      }

      notifyListeners();
    }
  }

  static NotificationModel of(BuildContext context) => ScopedModel.of<NotificationModel>(context);

}
