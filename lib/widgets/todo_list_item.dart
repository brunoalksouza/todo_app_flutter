import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '20/20/20',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
