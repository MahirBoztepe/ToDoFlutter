import 'package:flutter/material.dart';
import 'package:flutter_application_learn/View/task_list.dart';
import 'package:flutter_application_learn/ViewModel/task_view_model.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Görev Yöneticisi'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: TaskList(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Görev adini girin',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final taskViewModel =
                        Provider.of<TaskViewModel>(context, listen: false);
                    taskViewModel.addTask(_controller.text);
                    _controller.clear();
                  },
                  child: const Text('Ekle'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
