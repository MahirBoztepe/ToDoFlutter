library flutter_application_learn.lib_dart;

import 'package:flutter_application_learn/ViewModel/task_view_model.dart';

int testGlobal = 10;

void getChangeNotifierData() {
  TaskViewModel mdl = TaskViewModel();
  // ignore: avoid_print
  print(mdl.tasks.length);
}
