import 'package:performancewave/models/user.dart';

class EmployeeStat {

  final List<Award> awards;
  final List<Comment> comments;
  final double companyAverage;
  final double teamAverage;
  final int totalReviewers;
  final int totalReviewersDone;
  final int totalReviewsSubmitted;
  final double userAverage;
  final User user;
  final double userPrevAverage;

  EmployeeStat({
    this.awards,
    this.comments,
    this.companyAverage,
    this.teamAverage,
    this.totalReviewers,
    this.totalReviewersDone,
    this.totalReviewsSubmitted,
    this.userAverage,
    this.user,
    this.userPrevAverage
  });

  factory EmployeeStat.fromJson(Map<String, dynamic> json) {
    return EmployeeStat(
      awards: json['awards'],
      comments: json['comments'],
      companyAverage: json['company_average'],
      teamAverage: json['team_average'],
      totalReviewers: json['total_reviewers'],
      totalReviewersDone: json['total_reviewers_done'],
      totalReviewsSubmitted: json['total_reviews_submitted'],
      userAverage: json['user_average'],
      user: json['user'],
      userPrevAverage: json['user_prev_average']
    );
  }

}

class Award {

  final int id;
  final User awardedBy;
  final String title;

  Award({
    this.id,
    this.awardedBy,
    this.title
  });

  factory Award.fromJson(Map<String, dynamic> json) {
    return Award(
      id: json['id'],
      awardedBy: json['user'],
      title: json['title']
    );
  }

}

class Comment {
  
  final int id;
  final String comment;
  final User commentedBy;
  final String title;

  Comment({
    this.id,
    this.comment,
    this.commentedBy,
    this.title
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      comment: json['comment'],
      title: json['title'],
      commentedBy: json['user']
    );
  }

}