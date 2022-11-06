import 'package:newtodo/V/tasks_screen.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';


void main() {
  runApp(App());
}


class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App> {
  @override
  Widget build(context) {
    return GetMaterialApp(//add
      debugShowCheckedModeBanner: false,
      //create a text
      home: MainPage(),
    );
  }

}
