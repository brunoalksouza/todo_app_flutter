import 'package:flutter/material.dart';

class Todo {
  Todo(
      {required this.title,
      required this.dateTime,
      required this.isDone,
      this.color = Colors.white,
      Color originalColor = Colors.white});

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        dateTime = DateTime.parse(json['datetime']),
        isDone = false;
  Color color = Colors.white;
  Color originalColor = Colors.white;

  String title;
  DateTime dateTime;
  bool isDone;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'datetime': dateTime.toIso8601String(),
      'isDone': isDone,
    };
  }
}
