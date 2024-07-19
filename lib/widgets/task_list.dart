// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todoey/model/task_Data.dart';
// import 'package:todoey/widgets/task_tile.dart';

// class TaskList extends StatelessWidget {
//   const TaskList({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<TaskData>(
//       builder: (context, taskdata, child) {
//         //taskdata=Provider.of<TaskData>(context)
//         return ListView.builder(
//           itemBuilder: (context, index) {
//             return TaskTile(
//               ischecked: taskdata.tasks[index].isDone,
//               text: taskdata.tasks[index].name,
//               onpress: (bool? value) {
//                 taskdata.updatetask(taskdata.tasks[
//                     index]); //accesing each item of list which has Task type!
//               },
//               onlongpress: () {
//                 // taskdata.deletetask(taskdata.tasks[index]);
//                 ElevatedButton(
//                     onPressed: () {
//                       taskdata.deletetask(taskdata.tasks[index]);
//                     },
//                     child: Icon(Icons.delete));
//               },
//             );
//           },
//           itemCount: taskdata.updatelength,
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_Data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.tasks.length,
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTile(
              ischecked: task.isDone,
              text: task.name,
              onpress: (bool? value) {
                taskdata.updatetask(task); // Update task status
              },
              onlongpress: () {
                // Show a dialog for confirmation
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Delete Task"),
                      content: const Text("Are you sure you want to delete this task?"),
                      actions: <Widget>[
                        TextButton(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text("Delete"),
                          onPressed: () {
                            taskdata.deletetask(task); // Delete the task
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

