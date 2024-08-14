// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_application_learn/Model/task_model.dart';
import 'package:flutter_application_learn/lib_dart.dart';

class TaskViewModel extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<TaskModel> _tasks = [
    TaskModel(title: 'Görev 1'),
    TaskModel(title: 'Görev 2'),
    TaskModel(title: 'Görev 3'),
  ];

  List<TaskModel> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(TaskModel(title: title));
    notifyListeners();
  }

  void toggleTaskCompletion(int indeks) {
    _tasks[indeks].isCompleted = !_tasks[indeks].isCompleted;
    notifyListeners();
  }
}
