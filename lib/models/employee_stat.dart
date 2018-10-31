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
  final Map<String, dynamic> details;

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
    this.userPrevAverage,
    this.details
  });

  factory EmployeeStat.fromJson(Map<String, dynamic> json) {
    final user = json['user'];
    final List<dynamic> awards = json['awards'];
    final List<dynamic> comments = json['comments'];
    final details = json['details'];

    return EmployeeStat(
      awards: awards.cast().map((award) {
        return Award.fromJson(award);
      }).toList(),
      comments: comments.cast().map((comment) {
        return Comment.fromJson(comment);
      }).toList(),
      companyAverage: double.parse(json['companyAverage']),
      teamAverage: double.parse(json['teamAverage']),
      totalReviewers: json['totalReviewers'],
      totalReviewersDone: json['totalReviewsDone'],
      totalReviewsSubmitted: json['totalReviewsSubmitted'],
      userAverage: double.parse(json['userAverage']),
      // user: User(
      //   id: user['id'],
      //   firstName: user['first_name'],
      //   lastName: user['last_name'],
      //   fullName: user['full_name'],
      //   photoUrl: user['photo_url'],
      //   title: user['title'],
      //   employmentStatus: user['status'],
      //   dateJoined: DateTime.parse(user['date_joined'])
      // ),
      userPrevAverage: double.parse(json['userPrevAverage']),
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
      // awardedBy: json['user'],
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
      // commentedBy: json['user']
    );
  }

}

class EmployeeStatDetail {

  final double average;
  final int commentCount;
  final double prevAverage;
  final int awardCount;

  EmployeeStatDetail({
    this.average,
    this.commentCount,
    this.prevAverage,
    this.awardCount
  });

}