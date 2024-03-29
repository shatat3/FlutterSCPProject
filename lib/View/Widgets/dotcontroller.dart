import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:s_c_p/Controller/on_boarding_controller.dart';
import 'package:s_c_p/colors.dart';
import 'package:s_c_p/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GetBuilder<OnBoardingControllerImp>(
        builder: ((controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: EdgeInsets.only(right: media.width * 0.02),
                          width: controller.currentPage == index
                              ? media.width * 0.05
                              : media.width * 0.0125,
                          height: media.height * 0.007,
                          decoration: BoxDecoration(
                              color: TColor.Gold,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            )));
  }
}
