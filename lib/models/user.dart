// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);

import 'dart:convert';
import 'package:wtm/models/profile.dart';

List<User> UserFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

class User {
  User({
    this.id,
    this.username,
    this.profile,
  });

  int id;
  String username;
  Profile profile;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        profile: Profile.fromJson(json["Profile"]),
      );
}
