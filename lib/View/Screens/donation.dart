import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/donation_controller.dart';
import 'package:s_c_p/View/Screens/title_donation.dart';
import 'package:s_c_p/View/Widgets/counter_button.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';

import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    DonationControllerImp controller = Get.put(DonationControllerImp());
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.Green,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: TColor.Green,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Get.back();
          },
          color: TColor.White,
        ),
        title: Text(
          "Donation Details",
          style: TextStyle(color: TColor.White, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: media.height * 0.01,
            left: media.width * 0.02,
            right: media.width * 0.02),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: media.height * 0.01,
              ),
              TitleDonation(title: "Food Items Description"),
              SizedBox(
                height: media.height * 0.015,
              ),
              Container(
                height: media.height * 0.14,
                child: TextFormField(
                  cursorColor: TColor.Gold,
                  style: TextStyle(color: TColor.White),
                  decoration: InputDecoration(
                      hintText: "e.g. Rice, Chicken, Meat",
                      hintStyle: TextStyle(
                          color: TColor.White,
                          fontSize: media.height * 0.02,
                          fontWeight: FontWeight.w400),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: media.height * 0.14,
                          horizontal: media.width * 0.08),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(media.height * 0.02),
                          borderSide: BorderSide(
                              color: TColor.Gold,
                              width: media.height * 0.0015)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(media.height * 0.02),
                          borderSide: BorderSide(
                              color: TColor.Gold,
                              width: media.height * 0.004))),
                ),
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              TitleDonation(title: "Total Quantity"),
              SizedBox(
                height: media.width * 0.03,
              ),
              GetBuilder<DonationController>(
                init: DonationControllerImp(),
                builder: (controller) => Row(
                  children: [
                    CounterButton(
                      iconoperation: Icon(
                        Icons.minimize,
                        color: TColor.Gold,
                      ),
                      onpressed: () {
                        controller.decrement();
                      },
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Container(
                      height: media.height * 0.045,
                      width: media.width * 0.25,
                      decoration: BoxDecoration(
                          color: TColor.Gold,
                          borderRadius:
                              BorderRadius.circular(media.height * 0.02)),
                      child: Text(
                        "${controller.counter}",
                        style: TextStyle(
                            color: TColor.Green, fontSize: media.height * 0.03),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    CounterButton(
                        iconoperation: Icon(
                          Icons.add,
                          color: TColor.Gold,
                        ),
                        onpressed: () {
                          controller.increment();
                        })
                  ],
                ),
              ),
              SizedBox(
                height: media.height * 0.03,
              ),
              TextForm(
                  mycontroller: controller.date,
                  labeltext: "Prepared Date",
                  keyboardtype: TextInputType.datetime,
                  secure: false,
                  icon: Icon(
                    Icons.date_range_sharp,
                    color: TColor.Gold,
                  )),
              SizedBox(
                height: media.height * 0.05,
              ),
              CustomButton(
                  text: "Next",
                  onpressed: () {
                    controller.donation();
                  },
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.035),
              SizedBox(
                height: media.height * 0.03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
