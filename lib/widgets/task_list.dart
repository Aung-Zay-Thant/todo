import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_title.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            final task = taskData.tasks[index];
        return TaskTitle(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallBack: (checkboxState){
            taskData.updateTask(task);
          },
           longPressCallBack: (){
             taskData.deleteTask(task);
           },
          );
      },
      itemCount: taskData.taskCount,
      );
      }
    );
  }
}