class Direct {
  
  final String photoKey;
  final int reviewId;
  final String reviewee;
  final String status;
  final String title;
  final int userId;

  Direct({
    this.photoKey,
    this.reviewId,
    this.reviewee,
    this.status,
    this.title,
    this.userId
  });

  factory Direct.fromJson(Map<String, dynamic> json) {
    return Direct(
      photoKey: json['photo_key'],
      reviewId: json['review_id'],
      reviewee: json['reviewee'],
      status: json['status'],
      title: json['title'] != null ? json['title'] : '',
      userId: json['user_id']
    );
  }

}