import 'package:flutter/material.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({Key? key, required this.onComplete}) : super(key: key);

  final Function(String) onComplete;

  @override
  Widget build(BuildContext context) {
    String task = '';

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
            onChanged: (value) => task = value,
          ),
          const SizedBox(height: 16),
          MaterialButton(
            color: Colors.lightBlueAccent,
            height: 48,
            onPressed: () {
              onComplete(task);
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
