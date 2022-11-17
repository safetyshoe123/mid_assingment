import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class StoreController extends GetxController{
  final output = TextEditingController();

  int result = 0, total = 0;
  increment(){
    total = int.parse(output.text);
    result += int.parse(total.toString());
    update();
  }
}