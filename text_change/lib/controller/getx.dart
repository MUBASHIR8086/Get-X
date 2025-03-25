import 'package:get/get.dart';

class TextController extends GetxController {
  var text = 'Hello World'.obs; // Reactive Variable

  void changeText() {
    if (text.value == 'Hello World') {
      text.value = 'Change Text';
    } else {
      text.value = 'Hello World';
    }
  }
}
