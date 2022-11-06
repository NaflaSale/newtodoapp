import 'package:flutter/material.dart';
import 'package:newtodo/C/task_data.dart';
import 'package:get/get.dart';//add


class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var controller = Get.put(CounterController());//add
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDayDo',),
      ),
      body: Column(

        children: [
          Text("ADD TASK" ,
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 20,

              color: Colors.black ,
              fontWeight: FontWeight.bold,

            ),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

            child:
            TextFormField(
              controller: controller.valuecontroller,//add
              decoration: InputDecoration(
                border: OutlineInputBorder(),


              ),
              onFieldSubmitted: (value){
                controller.add(value);//add
              },
            ),
          ),
          Obx(() => //add
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
                itemCount: controller.tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('${controller.tasks[index]}'),
                      leading: Icon(Icons.check_box_outline_blank),
                      trailing: IconButton(
                        onPressed: () {
                          controller.delete(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}