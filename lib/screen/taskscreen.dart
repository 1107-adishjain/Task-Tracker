// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:todoey/model/task.dart';
import 'package:todoey/screen/bottom_Screen.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/model/task_Data.dart';

class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 12.0,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => BottomScreen());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.white,
                      shape: const CircleBorder(),
                      child: MaterialButton(
                        height: 60.0,
                        minWidth: 60.0,
                        onPressed: () {},
                        child: const Icon(
                          Icons.list,
                          color: Colors.lightBlueAccent,
                          size: 30.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      "Todoey",
                      style: TextStyle(
                        fontSize: 46.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    Text(
                      "${Provider.of<TaskData>(context).updatelength} Tasks",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                    color: Colors.white),
                child: const TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// another way of creating classof listile instead using listview function!!!




// // ignore: must_be_immutable
// class Lists extends StatefulWidget {
//   Lists({super.key, required this.text});
//   late String text;
//   @override
//   State<Lists> createState() => _ListsState();
// }

// class _ListsState extends State<Lists> {
//   bool done = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 36.0, right: 36.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             widget.text,
//             style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
//           ),
//           Checkbox(
//             value: done,
//             onChanged: (bool? value) {
//               setState(() {
//                 done = value!;
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }



// // Column(
// //                   children: [
// //                     Lists(text: "Buy Milk"),
//                     // Lists(text: "Buy Bananas"),
//                     // Lists(text: "Do excercise"),
// //                   ],
// //                 ),