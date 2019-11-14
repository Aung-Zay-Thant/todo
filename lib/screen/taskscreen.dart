import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context,builder: (context)=>
          AddTaskScreen((newTaskTitle){
            // setState(() {
            //   Provider.of<TaskData>(context).tasks.add(Task(name: newTaskTitle));
            // });
            Navigator.pop(context);
          }));
        },
      ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Icon(Icons.list,size: 30.0,color: Colors.indigo),
                radius:30.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Let Do!',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w700,color:Colors.white),),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks',style: TextStyle(fontSize: 18.0,color: Colors.white),),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: TaskList(),
          ),
        )
      ],
    ),
    );
  }
}



