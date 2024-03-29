import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:s_c_p/Controller/on_boarding_controller.dart';
import 'package:s_c_p/colors.dart';
import 'package:s_c_p/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(onBoardingList[i].image!,
                    width: media.width * 0.6,
                    height: media.height * 0.4,
                    fit: BoxFit.fill),
                Container(
                  width: double.infinity,
                  height: media.height * 0.2,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: media.height * 0.003, color: TColor.White),
                  ),
                )
              ],
            ));
  }
}
