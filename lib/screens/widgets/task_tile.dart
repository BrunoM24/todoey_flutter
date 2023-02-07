import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;

  const TaskTile({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Buy milk',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}
