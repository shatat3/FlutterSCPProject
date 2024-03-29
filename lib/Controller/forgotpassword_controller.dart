import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  goToVerifiy();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  late TextEditingController email;
  @override
  goToVerifiy() {
    Get.offNamed("/verifiy");
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
  }
}
