import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class StoreController extends GetxController{
  final output = TextEditingController();

  int _result = 0;
  int get result => _result;
  increment(){
    _result = int.parse(output.text);
    _result += _result;
    update();
  }
}