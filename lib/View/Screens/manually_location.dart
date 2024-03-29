import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/manually_location_controller.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class ManuallyLocation extends StatelessWidget {
  const ManuallyLocation({super.key});

  @override
  Widget build(BuildContext context) {
    ManuallyControllerImp controller = Get.put(ManuallyControllerImp());
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.Green,
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: media.height * 0.1,
            left: media.width * 0.01,
            right: media.width * 0.01),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Address Details",
                style: TextStyle(
                    color: TColor.White,
                    fontSize: media.height * 0.045,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: media.height * 0.08,
              ),
              TextForm(
                mycontroller: controller.country,
                labeltext: "Country",
                keyboardtype: TextInputType.text,
                secure: false,
                icon: Icon(
                  Icons.map_outlined,
                  color: TColor.Gold,
                ),
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              TextForm(
                mycontroller: controller.city,
                labeltext: "City/Town",
                keyboardtype: TextInputType.text,
                secure: false,
                icon: Icon(
                  Icons.location_city_rounded,
                  color: TColor.Gold,
                ),
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              TextForm(
                mycontroller: controller.street,
                labeltext: "Street Address",
                keyboardtype: TextInputType.text,
                secure: false,
                icon: Icon(
                  Icons.horizontal_distribute_sharp,
                  color: TColor.Gold,
                ),
              ),
              SizedBox(
                height: media.height * 0.08,
              ),
              CustomButton(
                text: "Save",
                bordercolor: TColor.Gold,
                buttoncolor: TColor.Gold,
                textcolor: TColor.Green,
                fontsize: media.height * 0.03,
                onpressed: () {
                  controller.save();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
