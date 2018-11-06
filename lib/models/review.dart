import 'package:performancewave/models/user.dart';

class Review {

  final int id;
  final bool approved;
  final double average;
  final int awardCount;
  final bool completed;
  final String due;
  final bool isOverdue;
  final String month;
  final String rolePurpose;
  final String setupStatus;
  final int totalReviewers;
  final int totalReviewsSubmitted;
  final String year;
  final String lastUpdated;
  final User reviewee;
  final List<HardSkill> hardSkills;
  final List<User> internalReviewers;
  final String deadline;
  final String updatedAt;
  final User teamLeader;
  final bool hasUpdate;

  Review({
    this.id = 0,
    this.approved = true,
    this.average = 0.0,
    this.awardCount = 0,
    this.completed = false,
    this.due = '',
    this.isOverdue = false,
    this.month = '',
    this.rolePurpose = '',
    this.setupStatus = '',
    this.totalReviewers = 0,
    this.totalReviewsSubmitted = 0,
    this.year = '',
    this.lastUpdated = '',
    this.reviewee,
    this.hardSkills,
    this.internalReviewers,
    this.deadline,
    this.updatedAt,
    this.teamLeader,
    this.hasUpdate
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> getTeamLeaderData () {
      if (json.containsKey('teamLeader') && json['teamLeader']['data'].runtimeType == 'List<Dynamic>') {
        return json['teamLeader']['data'];
      }
      return null;
    }

    double _parseAverage(dynamic average) {
      return double.parse(average.toString());
    }

    final Map<String, dynamic> _reviewee = json['reviewee']['data'];
    final Map<String, dynamic> _manager = getTeamLeaderData();
    final List<dynamic> _internalReviewers = json.containsKey('internalReviewers') ? json['internalReviewers']['data'] : [];
    final List<dynamic> _hardSkills = json.containsKey('hardSkills') ? json['hardSkills']['data'] : [];

    _reviewee['employment_status'] = _reviewee['status'];
    _reviewee['fullName'] = _reviewee['full_name'];
    if (_manager != null) {
      _manager['fullName'] = _manager['full_name'];
    }

    return Review(
      id: json['id'],
      approved: json['approved'],
      average: _parseAverage(json['average']),
      awardCount: json['award_count'],
      completed: json['completed'],
      due: json['due'],
      isOverdue: json['is_overdue'],
      month: json['month'],
      rolePurpose: json['role_purpose'],
      setupStatus: json['setup_status'],
      totalReviewers: json['total_reviewers'],
      totalReviewsSubmitted: json['total_reviews_submitted'],
      year: json['year'],
      lastUpdated: json['last_updated_at'],
      reviewee: User.fromJson(_reviewee),
      internalReviewers: _internalReviewers.cast().map((reviewer) {
        return User.fromJson(reviewer);
      }).toList(),
      hardSkills: _hardSkills.cast().map((skill) {
        return HardSkill.fromJson(skill);
      }).toList(),
      deadline: json['deadline'],
      updatedAt: json['updated_at'],
      teamLeader: _manager == null ? null : User.fromJson(_manager),
      hasUpdate: json['hasUpdate'] == 1
    );
  }
}

class HardSkill {

  final int id;
  final String imageUrl;
  final String title;

  HardSkill({
    this.id,
    this.imageUrl,
    this.title
  });

  factory HardSkill.fromJson(Map<String, dynamic> json) {
    return HardSkill(
      id: json['id'],
      imageUrl: json['image_url'],
      title: json['title']
    );
  }
}