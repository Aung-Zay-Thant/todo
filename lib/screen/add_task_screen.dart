import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallBack);
  final addTaskCallBack;
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)),
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Add Task",style: TextStyle(fontSize: 40.0,color: Colors.indigo),textAlign: TextAlign.center,),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged:(newText){
                   newTaskTitle = newText;
                   }
            ),
            FlatButton(
              child: Text("Add"),
              color: Colors.indigo,
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}