import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_change/controller/getx.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final TextController textcontroller = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx(() => Text(textcontroller.text.value))),
          ElevatedButton(
              onPressed: () {
                textcontroller.changeText();
              },
              child: Text("Click"))
        ],
      ),
    );
  }
}
