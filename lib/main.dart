import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/screen/taskscreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          builder:  (context)=>TaskData(),
          child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}