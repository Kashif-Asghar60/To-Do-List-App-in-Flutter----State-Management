import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:state_management/models/task.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class TaskList extends StatefulWidget {
  /*final List<Task> tasks;
  TaskList(this.tasks);*/
  @override
  State<TaskList> createState() => _TaskListState();
}
class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskdata , child ){
        return ListView.builder(itemBuilder: (context , index){
          final task = taskdata.tasks[index];
          return TaskTile(
            taskTitle:taskdata.tasks[index].name,
            isChecked: task.isDone ,
            toggleCheckboxState:(checkboxState){
              taskdata.updateTask(task);
              /*  setState(() {
               Provider.of(context).tasks[index].toggleDone();
             });*/

            },
            LongPressCheck: (){
              taskdata.deleteTask(task);
            },

          );

        },
          itemCount:taskdata.taskCount ,
        );
      },

    );

  }
}


