import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: widget.tasks[index].name,
          completed: widget.tasks[index].isDone,
          onChange: (value) {
            setState(() {
              widget.tasks[index].toggle();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
