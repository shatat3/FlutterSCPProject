import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class DonationController extends GetxController {
  donation();
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}

class DonationControllerImp extends DonationController {
  late TextEditingController date;

  @override
  donation() {
    Get.toNamed("/donateto");
  }

  @override
  void onInit() {
    date = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    date.dispose();
  }
}
