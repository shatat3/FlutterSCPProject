import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/on_boarding_controller.dart';
import 'package:s_c_p/colors.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        textColor: TColor.Green,
        padding: EdgeInsets.symmetric(
            horizontal: media.width * 0.1, vertical: media.height * 0.014),
        child: Text("Continue"),
        color: TColor.Gold,
      ),
    );
  }
}
