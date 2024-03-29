import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/signup_controller.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/socialmedia.dart';
import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: TColor.Green,
        body: Padding(
          padding: EdgeInsets.only(
              left: media.width * 0.01, right: media.width * 0.01),
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
                  height: media.height * 0.03,
                ),
                Text(
                  "Create Your Account",
                  style: TextStyle(
                      color: TColor.White,
                      fontSize: media.height * 0.04,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: media.height * 0.05,
                ),
                TextForm(
                  mycontroller: controller.name,
                  labeltext: "Full Name",
                  keyboardtype: TextInputType.text,
                  secure: false,
                  icon: Icon(
                    Icons.person_outline,
                    color: TColor.Gold,
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextForm(
                  mycontroller: controller.email,
                  labeltext: "Email",
                  keyboardtype: TextInputType.emailAddress,
                  secure: false,
                  icon: Icon(
                    Icons.email_outlined,
                    color: TColor.Gold,
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextForm(
                    mycontroller: controller.password,
                    labeltext: "Password",
                    keyboardtype: TextInputType.text,
                    secure: true,
                    icon: Icon(
                      Icons.lock,
                      color: TColor.Gold,
                    )),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextForm(
                    mycontroller: controller.confirmpassword,
                    labeltext: "Confirm Password",
                    keyboardtype: TextInputType.text,
                    secure: true,
                    icon: Icon(
                      Icons.password_outlined,
                      color: TColor.Gold,
                    )),
                SizedBox(
                  height: media.height * 0.05,
                ),
                CustomButton(
                  text: "Sign up",
                  onpressed: () {
                    controller.signup();
                  },
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.03,
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                Text(
                  "Or Continue With",
                  style: TextStyle(
                    color: TColor.White,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMedia(
                      image: "Images/x.jpg",
                      ontap: () {},
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    SocialMedia(
                      image: "Images/google.jpg",
                      ontap: () {},
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    SocialMedia(
                      image: "Images/facebook.jpg",
                      ontap: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
