import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/verifiy_controller.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class VerifiyCode extends StatelessWidget {
  const VerifiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifiyControllerImp controller = Get.put(VerifiyControllerImp());
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: TColor.Green,
        body: Padding(
          padding: EdgeInsets.only(
              top: media.height * 0.2,
              left: media.width * 0.01,
              right: media.width * 0.01),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: media.height * 0.2,
                  width: media.height * 0.2,
                  child: Image(image: AssetImage("Images/6.png")),
                ),
                SizedBox(
                  height: media.height * 0.05,
                ),
                TextForm(
                    mycontroller: controller.verifiycode,
                    labeltext: "Verifiy Code",
                    keyboardtype: TextInputType.emailAddress,
                    secure: false,
                    icon: Icon(
                      Icons.password,
                      color: TColor.Gold,
                    )),
                SizedBox(
                  height: media.height * 0.03,
                ),
                CustomButton(
                  text: "Verifiy",
                  onpressed: () {
                    controller.verifiy();
                  },
                  buttoncolor: TColor.Gold,
                  bordercolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
