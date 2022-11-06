import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';//add
import 'package:flutter/material.dart';


class CounterController extends GetxController {
  var valuecontroller = TextEditingController();
  var tasks = [

    'going to work',
  'search and read about Flutter and Dart',
  'start the project',
  ].obs;//add

  void add(value) {
    tasks.add(value.toString());
    valuecontroller.clear();
  }

  void delete(index) {
    tasks.removeAt(index);
  }
}