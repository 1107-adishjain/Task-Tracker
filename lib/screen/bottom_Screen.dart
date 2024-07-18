// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:todoey/model/task_Data.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String entertask = "";
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (String? value) {
                  entertask = value!;
                },
              ),
              const SizedBox(
                height: 24.0,
              ),
              MaterialButton(
                height: 60.0,
                onPressed: () {
                  if (entertask == "") {
                    Alert(
                      context: context,
                      title: "No Task Entered",
                      desc: "Add Task",
                    ).show();
                  } else {
                    Provider.of<TaskData>(context, listen: false)
                        .addtask(entertask);
                    Navigator.pop(context);
                  }
                },
                color: Colors.lightBlueAccent,
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
