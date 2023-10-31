import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:task_list_flutter/models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem(
      {Key? key,
      required this.todo,
      required this.onDelete,
      required this.onDone});

  final Todo todo;
  final Function(Todo) onDelete;
  final Function(Todo) onDone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const StretchMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              onPressed: (context) {
                onDone(todo);
              },
              icon: Icons.check,
              label: 'Concluir',
              backgroundColor: const Color.fromARGB(255, 60, 148, 63),
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (context) {
                onDelete(todo);
              },
              label: 'Deletar',
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:
                todo.color, // Defina a cor de fundo com base na cor do "todo"
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  DateFormat('dd/MM/yyyy - HH:mm').format(todo.dateTime),
                  style: const TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 4, bottom: 2),
                  child: Text(
                    todo.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
