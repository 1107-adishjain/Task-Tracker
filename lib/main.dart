import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_Data.dart';
import 'package:todoey/screen/taskscreen.dart';

void main() {
  runApp(const Todoey());
}

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TaskData();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Taskscreen(),
      ),
    );
  }
}
