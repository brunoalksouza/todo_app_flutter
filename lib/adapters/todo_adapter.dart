import 'package:task_list_flutter/models/todo.dart';

class TodosAdapter extends Todo {
  TodosAdapter({
    required super.title,
    required super.dateTime,
    required super.isDone,
  });

  static Todo fromMap(Map<String, dynamic> source) {
    return Todo(
      title: source["title"],
      dateTime: DateTime.parse(source["dateTime"]),
      isDone: false,
    );
  }
}
