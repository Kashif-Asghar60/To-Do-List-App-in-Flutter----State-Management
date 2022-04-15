import 'package:flutter/material.dart';
import 'package:state_management/widgets/task_list.dart';
import 'package:state_management/widgets/task_tile.dart';
import 'package:state_management/Screens/add_task_screen.dart';
import 'package:state_management/models/task_data.dart';
import 'package:provider/provider.dart';
// ignore_for_file: prefer_const_constructors

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
/*  List<Task> tasks=[
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>
              AddTaskScreen(
                 /* (newTexttile){
                 *//*   setState(() {
                      tasks.add(Task(name: newTexttile));
                    });*//*
                    Navigator.pop(context);

                  }*/
              )
          );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30.0, top: 60.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context, listen: false).taskCount}Tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}

