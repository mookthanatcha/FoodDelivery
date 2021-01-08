import 'package:flutter/material.dart';
import 'package:mookfood/models/list_task.dart';

class TaskListProvider extends ChangeNotifier {
  List<TaskList> taskList = [];

  setTaskTitle(String value) {
    var tempTask = TaskList(titleTask: value);
    taskList.add(tempTask);
    notifyListeners();
  }

  deleteTask(int index){
    taskList.removeAt(index);
    notifyListeners();
  }

  List<TaskList> getTaskList() => taskList;
}
