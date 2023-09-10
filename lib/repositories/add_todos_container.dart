
import 'package:flutter/material.dart';

class AddTodosContainer extends StatelessWidget {
  const AddTodosContainer({
    super.key,
    required this.todoController,
    required this.errorText,
  });

  final TextEditingController todoController;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: TextField(
        controller: todoController,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          border: const OutlineInputBorder(),
          labelText: 'Adicione uma tarefa',
          labelStyle: const TextStyle(color: Colors.deepPurple),
          errorText: errorText,
        ),
      ),
    );
  }
}
