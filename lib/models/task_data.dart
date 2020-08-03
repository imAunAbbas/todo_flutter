import 'package:flutter/material.dart';
import 'dart:collection';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  UnmodifiableListView<Task> get completedTasks {
    return UnmodifiableListView(_tasks.where((i) => i.isDone));
  }

  UnmodifiableListView<Task> get pendingTasks {
    return UnmodifiableListView(_tasks.where((i) => !i.isDone));
  }

  int get taskCount {
    return _tasks.length;
  }

  int get completeCount {
    return (_tasks.where((i) => i.isDone)).length;
  }

  int get pendingCount {
    return (_tasks.where((i) => !i.isDone)).length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
