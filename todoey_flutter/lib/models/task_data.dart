import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

    List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'sd'),
    Task(name: 'hi'),
  ];

  int get taskCount{
    return tasks.length;
  }

}