import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  TaskTile({super.key, required this.ischecked, required this.text, required this.onpress, required this.onlongpress});
  bool ischecked = false;
  final String text;
  final ValueChanged<bool?>onpress;
  final VoidCallback onlongpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null,
            fontWeight: FontWeight.w600,
            fontSize: 16.0),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: onpress,
      ),
      onLongPress: onlongpress,
    );
  }
}
