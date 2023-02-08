import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.onChange,
    required this.name,
    required this.completed,
    required this.onLongPress,
  }) : super(key: key);

  final String name;
  final bool completed;
  final Function(bool?) onChange;
  final Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          decoration: completed ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: onLongPress,
      trailing: Checkbox(
        value: completed,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChange,
      ),
    );
  }
}
