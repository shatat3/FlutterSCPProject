import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/on_boarding_controller.dart';
import 'package:s_c_p/View/Widgets/custombuttononboarding.dart';
import 'package:s_c_p/View/Widgets/customslider.dart';

import 'package:s_c_p/View/Widgets/dotcontroller.dart';
import 'package:s_c_p/colors.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: TColor.Green,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(media.height * 0.01),
            child: Column(
              children: [
                Container(
                  height: media.height * 0.15,
                  width: media.height * 0.15,
                  child: Image(image: AssetImage("Images/6.png")),
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Container(
                  height: media.height * 0.6,
                  child: CustomSliderOnBoarding(),
                ),
                CustomDotControllerOnBoarding(),
                SizedBox(
                  height: media.height * 0.04,
                ),
                CustomButtonOnBoarding()
              ],
            ),
          ))),
    );
  }
}
