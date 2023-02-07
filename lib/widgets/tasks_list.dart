import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy cookies'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy cereals')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: tasks[index].name,
          completed: tasks[index].isDone,
          onChange: (value) {
            setState(() {
              tasks[index].toggle();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
