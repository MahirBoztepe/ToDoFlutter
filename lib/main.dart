import 'package:flutter/material.dart';
import 'package:flutter_application_learn/View/task_screen.dart';
import 'package:flutter_application_learn/ViewModel/task_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskViewModel(),
      child: MaterialApp(
        title: 'MVVM',
        home: TaskScreen(),
      ),
    );
  }
}
