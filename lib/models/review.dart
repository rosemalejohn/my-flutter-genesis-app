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
    this.reviewee
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    var _reviewee = json['reviewee']['data'];

    double _parseAverage(dynamic average) {
      return average.toDouble();
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
      reviewee: User(
        id: _reviewee['id'],
        firstName: _reviewee['first_name'],
        lastName: _reviewee['last_name'],
        fullName: _reviewee['full_name'],
        photoUrl: _reviewee['photo_url'],
        title: _reviewee['title'],
        employmentStatus: _reviewee['status'],
        dateJoined: DateTime.parse(_reviewee['date_joined'])
      )
    );
  }
}