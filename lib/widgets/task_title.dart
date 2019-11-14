import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  TaskTitle({this.isChecked,this.taskTitle,this.checkboxCallBack,this.longPressCallBack});
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function longPressCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
      value: isChecked,
      onChanged: checkboxCallBack,
      ),
    );
  }
}
