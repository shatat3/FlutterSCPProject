import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class EditProfile extends GetxController {
  edit();
}

class EditProfileControllerImp extends EditProfile {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmpassword;
  @override
  edit() {
    Get.back();
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
