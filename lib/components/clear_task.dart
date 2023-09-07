import 'package:flutter/material.dart';

class ClearTasks extends StatelessWidget {
  const ClearTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text('Você possui   tarefas pendentes'),
        ),
        SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding: EdgeInsets.all(14),
          ),
          child: Text('Limpar tarefas'),
        )
      ],
    );
  }
}
