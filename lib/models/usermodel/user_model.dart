class UserModel {
  String email;
  String password;

  String? id;

  UserModel({
    required this.email,
    this.id,
    required this.password,
  });

  Map<String, dynamic> tojson(uid) => {
        "email": email,
        "password": password,
        "id": uid,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json["email"],
      id: json["id"],
      password: json["password"],
    );
  }
}
