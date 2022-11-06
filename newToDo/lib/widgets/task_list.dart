import 'package:flutter/material.dart';


class TaskTite extends StatelessWidget {


  final bool isChecked  ;
  final String taskTitle;
  final void Function(bool?) checkboxChange;

  final void Function() listTileDelete; //ddd

  TaskTite({required this.isChecked ,
    required this.taskTitle ,
    required this.checkboxChange ,
    required this.listTileDelete //ddd
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle ,
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough :null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkboxChange,

      ),

      //
      onLongPress:listTileDelete ,
      //
    );
  }
}
