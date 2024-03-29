import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Screens/signup_screen.dart';

abstract class SignUpController extends GetxController {
  signup();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmpassword;
  @override
  signup() {
    Get.toNamed("/manual");
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    confirmpassword.dispose();
  }
}
