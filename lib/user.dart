class Users {
  int id;
  String name;
  String username;
  String email;

  Users({this.id, this.name, this.username, this.email});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json["id"] as int,
      name: json["name"] as String,
      username: json["username"] as String,
      email: json["email"] as String,
    );
  }
}