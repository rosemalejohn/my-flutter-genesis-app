import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class User {

  final int id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String email;
  final String personalEmail;
  final String employmentStatus;
  final DateTime dateJoined;
  final List hardSkillIds;
  final bool isExecutive;
  final String linkedin;
  final String photoUrl;
  final String title;
  final String rolePurpose;
  final String aboutMe;
  final String interests;
  final String phone;

  User({
    this.id = 0,
    this.firstName = '',
    this.lastName = '',
    this.fullName = '',
    this.email = '',
    this.personalEmail = '',
    this.employmentStatus = '',
    this.dateJoined,
    this.hardSkillIds,
    this.isExecutive = false,
    this.linkedin = '',
    this.photoUrl = '',
    this.title = '',
    this.rolePurpose = '',
    this.aboutMe = '',
    this.interests = '',
    this.phone = ''
  });

  String get formattedDateJoined {
    if (dateJoined != null) {
      return DateFormat('MMMM yyyy').format(dateJoined);
    }
    return '';
  }

  String get durationOfWork {
    if (dateJoined != null) {
      Duration duration = DateTime.now().difference(dateJoined);

      return duration.inDays.toString() + ' days';
    }

    return '';
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      fullName: json['fullName'],
      email: json['email'],
      personalEmail: json['personal_email'],
      employmentStatus: json['employment_status'],
      dateJoined: DateTime.parse(json['date_joined']),
      hardSkillIds: json['hard_skills'],
      isExecutive: json['is_executive'],
      linkedin: json['linkedin'],
      photoUrl: json['photo_url'],
      title: json['title'],
      rolePurpose: json['role_purpose'],
      aboutMe: json['about_me'],
      interests: json['interests'],
      phone: json['phone']
    );
  }
}