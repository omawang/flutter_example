import 'package:get/get.dart';

class GlobalController extends GetxController {
  var count = 0.obs;

  void reset() {
    count.call(0);
  }

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
