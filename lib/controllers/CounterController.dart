import 'package:get/get.dart';

class CounterController extends GetxController {
  final counter = 0.obs;
  void incrementCounter() {
    counter.value++;
  }
}
