import 'package:counter/controller/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Count: ${counterController.count}",
                  style: TextStyle(fontSize: 24),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text("Increment"),
            ),
            ElevatedButton(
                onPressed: () {
                  counterController.decrement();
                },
                child: Text(' decrement'))
          ],
        ),
      ),
    );
  }
}
