import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/login_controller.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/socialmedia.dart';
import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
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
                  "Welcome!",
                  style: TextStyle(
                      color: TColor.White,
                      fontSize: media.height * 0.04,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: media.height * 0.06,
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
                  height: media.height * 0.04,
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
                Padding(
                  padding: EdgeInsets.only(right: media.width * 0.05),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed("/forgot");
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.08,
                ),
                CustomButton(
                  text: "Login",
                  onpressed: () {
                    controller.login();
                  },
                  buttoncolor: TColor.Gold,
                  bordercolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.03,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you don't have an account:",
                      style: TextStyle(
                        color: TColor.White,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToSignUp();
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.05,
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
