import 'package:buttonchangecolor/controller/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: ColorChangePage()));
}

class ColorChangePage extends StatelessWidget {
  final ButtonChangeColor buttonController = Get.put(ButtonChangeColor());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Button Color Change")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonController.currentColor.value,
                  ),
                  onPressed: buttonController.changeButtonColor,
                  child: Text("Change Color"),
                )),
          ],
        ),
      ),
    );
  }
}
