import 'dart:ui';
import 'package:state_management/models/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {

 // late final  Task getAdd_BtnValue;
/*  final Function addCallback;
  AddTaskScreen(this.addCallback);*/
  late String newtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.only(top: 20,right: 30,left: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 28,
            ),),
            SizedBox(
              height: 10,
            ),
            TextField (
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newtext=value;
              },

            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            TextButton(
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              //padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 10)),

              ),
              onPressed: (){
                Provider.of<TaskData>(context ,listen: false).addTask(newtext);
                Navigator.pop(context);

               /* addCallback(newtext);
                print(addCallback(newtext));*/
                }, child: Text(
              'Add',
              style: TextStyle(

                color: Colors.white,
                fontSize: 16,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
