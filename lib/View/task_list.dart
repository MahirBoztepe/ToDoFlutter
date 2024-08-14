import 'package:flutter/material.dart';
import 'package:flutter_application_learn/ViewModel/task_view_model.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskViewModel = Provider.of<TaskViewModel>(context);
    final tasks = taskViewModel.tasks;

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, indeks) {
        final task = tasks[indeks];
        return ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.isCompleted,
            onChanged: (_) {
              taskViewModel.toggleTaskCompletion(indeks);
            },
          ),
        );
      },
    );
  }
}
