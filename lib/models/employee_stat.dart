import 'package:performancewave/models/user.dart';
import 'package:performancewave/widgets/line_graph.dart';

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
  final List<User> internalReviewers;
  final Map<String, dynamic> graphData;

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
    this.details,
    this.internalReviewers,
    this.graphData
  });

  EmployeeStatDetail get suitability => details['suitability'];
  EmployeeStatDetail get promotion => details['promotion'];
  EmployeeStatDetail get likability => details['likability'];
  EmployeeStatDetail get trustworthy => details['trustworthy'];
  EmployeeStatDetail get purpose => details['purpose'];
  EmployeeStatDetail get adaptability => details['adaptability'];
  EmployeeStatDetail get communication => details['communication'];
  EmployeeStatDetail get resilience => details['resilience'];
  List<EmployeeStatDetail> get hardSkills => details['hardSkills'];
  
  SimpleLineChart get graph {
    List<LinearSales> dataList = [];

    graphData.forEach((data, key) {
      dataList.add(LinearSales(data.toString(), double.parse(key)));
    });

    return SimpleLineChart(
      SimpleLineChart.createLinearData(dataList),
      animate: true
    );
  }

  factory EmployeeStat.fromJson(Map<String, dynamic> json) {
    final user = json['userData'];
    final List<dynamic> awards = json['awards'];
    final List<dynamic> comments = json['comments'];
    final details = json['details'];
    final List<dynamic> reviewers = details['reviewers']['internalReviewers'];
    final Map skills = details['hard_skills'];
    final List<dynamic> hardSkillList = [];

    skills.forEach((skill, data) {
      data['title'] = skill;
      hardSkillList.add(data);
    });

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
      user: User(
        id: user['id'],
        firstName: user['first_name'],
        lastName: user['last_name'],
        fullName: user['full_name'],
        photoUrl: user['photo_url'],
        title: user['title'],
        employmentStatus: user['status'],
        dateJoined: DateTime.parse(user['date_joined'])
      ),
      details: {
        'suitability': EmployeeStatDetail.fromJson(details['fit']['suitability']),
        'promotion': EmployeeStatDetail.fromJson(details['fit']['promotion']),
        'likability': EmployeeStatDetail.fromJson(details['relationship']['likability']),
        'trustworthy': EmployeeStatDetail.fromJson(details['relationship']['trustworthy']),
        'purpose': EmployeeStatDetail.fromJson(details['role_purpose']['purpose']),
        'adaptability': EmployeeStatDetail.fromJson(details['soft_skills']['adaptability']),
        'communication': EmployeeStatDetail.fromJson(details['soft_skills']['communication']),
        'resilience': EmployeeStatDetail.fromJson(details['soft_skills']['resilience']),
        'hardSkills': hardSkillList.map((skill) {
          return EmployeeStatDetail.fromJson(skill);
        }).toList()
      },
      userPrevAverage: double.parse(json['userPrevAverage']),
      internalReviewers: reviewers.cast().map((reviewer) {
        return User.fromJson(reviewer);
      }).toList(),
      graphData: json['graph'],
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

  final String title;
  final double average;
  final int commentCount;
  final double prevAverage;
  final int awardCount;

  EmployeeStatDetail({
    this.title,
    this.average,
    this.commentCount,
    this.prevAverage,
    this.awardCount
  });

  double get gain {
    double diff = average - prevAverage;
    if (diff > 0) {
      return diff;
    }
    return 0.0;
  }

  double get loss {
    double diff = average - prevAverage;
    if (diff < 0) {
      return diff;
    }
    return 0.0;
  }

  factory EmployeeStatDetail.fromJson (Map<String, dynamic> json) {
    int _checkNull(dynamic digit) {
      return digit == null ? 0 : digit;
    }

    return EmployeeStatDetail(
      title: json['title'],
      average: double.parse(json['average']),
      commentCount: json['comment_count'],
      prevAverage: double.parse(json['prev_average']),
      awardCount: _checkNull(json['award_count'])
    );
  }

}