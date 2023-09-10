import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Minhas Tarefas',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
