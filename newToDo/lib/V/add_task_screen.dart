import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtodo/C/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  var controller = Get.put(CounterController());//add
  var valuecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    String? newTextTitle;
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("ADD TASK" ,
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 40,
              color: Colors.indigo ,
              fontWeight: FontWeight.bold,
            ),),
          TextField(
            controller: valuecontroller,//add

            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
             newTextTitle= newText;
            },
          ),



        ],
      ),


    );
  }

}
