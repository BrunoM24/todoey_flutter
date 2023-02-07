import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String text;

  const TaskTile({
    super.key,
    required this.text,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    super.key,
    required this.isChecked,
    required this.toggleCheckboxState,
  });

  final bool isChecked;
  final void Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
    );
  }
}
