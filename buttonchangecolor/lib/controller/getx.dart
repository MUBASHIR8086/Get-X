import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonChangeColor extends GetxController {
  var changeColor = <Color>[
    Colors.black,
    Colors.amber,
    Colors.deepOrangeAccent,
    Colors.orange,
    Colors.green
  ].obs;

  var index = 0.obs;
  var currentColor = Colors.black.obs;

  void changeButtonColor() {
    index.value = (index.value + 1) % changeColor.length;
    currentColor.value = changeColor[index.value];
  }
}
