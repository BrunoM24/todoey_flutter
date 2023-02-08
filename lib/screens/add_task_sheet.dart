import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String taskName = '';

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 32),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) => taskName = value,
          ),
          const SizedBox(height: 16),
          MaterialButton(
            color: Colors.lightBlueAccent,
            height: 48,
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskName);
              Navigator.pop(context);
            },
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
