import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifiyController extends GetxController {
  verifiy();
}

class VerifiyControllerImp extends VerifiyController {
  late TextEditingController verifiycode;
  @override
  verifiy() {
    Get.offNamed("/newpass");
  }

  @override
  void onInit() {
    verifiycode = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    verifiycode.dispose();
  }
}
