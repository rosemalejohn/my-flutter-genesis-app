class Team {
  
  final int id;
  final String name;
  final String city;

  Team({
    this.id = 0,
    this.name = '',
    this.city = '',
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      city: json['billing_city']
    );
  }
}