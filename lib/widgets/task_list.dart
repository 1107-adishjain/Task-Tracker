import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_Data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        //taskdata=Provider.of<TaskData>(context)
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              ischecked: taskdata.tasks[index].isDone,
              text: taskdata.tasks[index].name,
              onpress: (bool? value) {
                taskdata.updatetask(taskdata.tasks[
                    index]); //accesing each item of list which has Task type!
              },
              onlongpress: () {
                taskdata.deletetask(taskdata.tasks[index]);
              },
            );
          },
          // taskdata.deletetask(taskdata.tasks[index]);
          itemCount: taskdata.updatelength,
        );
      },
    );
  }
}
