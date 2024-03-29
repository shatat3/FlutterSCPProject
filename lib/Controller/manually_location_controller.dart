import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ManuallyController extends GetxController {
  save();
}

class ManuallyControllerImp extends ManuallyController {
  late TextEditingController country;
  late TextEditingController city;
  late TextEditingController street;
  @override
  save() {
    Get.offNamed("/main");
  }

  @override
  void onInit() {
    country = TextEditingController();
    city = TextEditingController();
    street = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    country.dispose();
    city.dispose();
    street.dispose();
  }
}
