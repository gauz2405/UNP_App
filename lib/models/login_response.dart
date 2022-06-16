// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

//import 'dart:convert';

//LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

//String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.id,
    required this.token,
    required this.isAdmin,
  });

  String id;
  String token;
  bool isAdmin;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        id: json["id"],
        token: json["token"],
        isAdmin: json["isAdmin"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
        "isAdmin": isAdmin,
      };
}
