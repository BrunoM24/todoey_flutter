import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy cookies'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy cereals')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }
}
