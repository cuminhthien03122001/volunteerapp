import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  String username;
  String email;
  String password;

  Login({
    required this.username,
    required this.email,
    required this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        username: json["username"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
      };
}
