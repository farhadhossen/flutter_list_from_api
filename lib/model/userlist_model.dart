// To parse this JSON data, do
//
//     final userlistModel = userlistModelFromJson(jsonString);

import 'dart:convert';

List<UserlistModel> userlistModelFromJson(String str) => List<UserlistModel>.from(json.decode(str).map((x) => UserlistModel.fromJson(x)));

String userlistModelToJson(List<UserlistModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserlistModel {
  UserlistModel({
    this.id,
    this.name,
    this.dateOfBirth,
  });

  int? id;
  String? name;
  String? dateOfBirth;

  factory UserlistModel.fromJson(Map<String, dynamic> json) => UserlistModel(
    id: json["id"],
    name: json["name"],
    dateOfBirth: (json["date_of_birth"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "date_of_birth": dateOfBirth
  };
}
