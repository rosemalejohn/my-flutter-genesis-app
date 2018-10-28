import 'package:timeago/timeago.dart' as timeago;

class NotificationInfo {

  final String actionText;
  final String actionUrl;
  final String body;
  final bool read;
  final int userId;
  final DateTime createdAt;

  NotificationInfo({
    this.actionText = '',
    this.actionUrl = '',
    this.body = '',
    this.read = false,
    this.userId = 0,
    this.createdAt
  });

  String get createdAgo {
    if (createdAt != null) {
      Duration duration = DateTime.now().difference(createdAt);

      return timeago.format(DateTime.now().subtract(duration)).toString();
    }

    return '';
  }

  factory NotificationInfo.fromJson(Map<String, dynamic> json) {
    return NotificationInfo(
      actionText: json['action_text'],
      actionUrl: json['action_url'],
      body: json['body'],
      read: json['read'],
      userId: json['user_id'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

}