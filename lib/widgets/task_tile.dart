import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;
  final Function() LongPressCheck;


  TaskTile({required this.isChecked,required this.taskTitle, required this.toggleCheckboxState,
  required this.LongPressCheck});
  void checkboxCallBack(bool? checkboxState) {
    /*setState(() {
      isChecked = checkboxState ?? true;
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressCheck,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
            isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: toggleCheckboxState),
    );
  }
}

/*
class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}*/
