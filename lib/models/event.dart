import 'dart:convert';
import 'package:meta/meta.dart';

Event EventFromJson(String str) => Event.fromJson(json.decode(str));

String EventToJson(Event data) => json.encode(data.toJson());

class Event {
  Event({
    this.host,
    this.pk,
    this.title,
    this.description,
    this.eventImg,
    this.eventDate,
    this.eventLocation,
    this.openSlot,
    this.categories,
    this.username,
  });

  @required
  int host;
  @required
  int pk;
  @required
  String title;
  @required
  String description;
  @required
  String eventImg;
  @required
  DateTime eventDate;
  @required
  String eventLocation;
  @required
  int openSlot;
  @required
  int categories;
  Username username;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        host: json["host"],
        pk: json["pk"],
        title: json["title"],
        description: json["description"],
        eventImg: json["event_img"],
        eventDate: DateTime.parse(json["event_date"]),
        eventLocation: json["event_location"],
        openSlot: json["open_slot"],
        categories: json["categories"],
        username: Username.fromJson(json["username"]),
      );

  Map<String, dynamic> toJson() => {
        "host": host,
        "pk": pk,
        "title": title,
        "description": description,
        "event_img": eventImg,
        "event_date": eventDate.toIso8601String(),
        "event_location": eventLocation,
        "open_slot": openSlot,
        "categories": categories,
        "username": username.toJson(),
      };
}

class Username {
  Username({
    this.username,
  });

  String username;

  factory Username.fromJson(Map<String, dynamic> json) => Username(
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
      };
}
