import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    
  ];

  UnmodifiableListView<Task> get tasks{   //getter which doesnt allows u to use tasks everywhere!
    return UnmodifiableListView(_tasks);
  }

  int  get updatelength{
    return _tasks.length;
  }
  void addtask(String title) {
    _tasks.add(Task(name: title));
    notifyListeners(); 
  }

  void updatetask(Task task)
  {
    task.toggledone();
    notifyListeners();
  }
  
  void deletetask(Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }

}
