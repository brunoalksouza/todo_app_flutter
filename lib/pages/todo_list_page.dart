import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_list_flutter/components/add_new_task.dart';
import 'package:task_list_flutter/components/clear_task.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController todoController = TextEditingController();
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        String text = todoController.text;
                        setState(() {
                          todos.add(text);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding: EdgeInsets.all(14),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  for (String todo in todos)
                    ListTile(
                      title: Text(todo),
                    ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ClearTasks()
            ],
          ),
        ),
      ),
    );
  }
}
