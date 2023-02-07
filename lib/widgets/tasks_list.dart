import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(text: 'Buy Milk'),
        TaskTile(text: 'Buy eggs'),
        TaskTile(text: 'Buy Cereals')
      ],
    );
  }
}
