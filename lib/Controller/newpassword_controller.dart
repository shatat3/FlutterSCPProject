import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class NewPassController extends GetxController {
  newPass();
}

class NewPassControllerImp extends NewPassController {
  late TextEditingController newpassword;
  @override
  newPass() {
    Get.offNamed("/main");
  }

  @override
  void onInit() {
    newpassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    newpassword.dispose();
  }
}
