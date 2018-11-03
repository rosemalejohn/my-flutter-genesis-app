class DashboardStat {

  final double user;
  final double userLast;
  final double team;
  final double teamLast;

  DashboardStat({
    this.user = 0.0,
    this.userLast = 0.0,
    this.team = 0.0,
    this.teamLast = 0.0
  });

  factory DashboardStat.fromJson(Map<String, dynamic> json) {
    double _checkNull(dynamic digit) {
      return digit == null ? 0.0 : double.parse(digit.toString());
    }

    return DashboardStat(
      user: _checkNull(json['user']),
      userLast: _checkNull(json['userLast']),
      team: _checkNull(json['team']),
      teamLast: _checkNull(json['teamLast'])
    );
  }

}