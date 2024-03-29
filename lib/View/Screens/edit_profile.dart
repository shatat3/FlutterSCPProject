import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/Controller/edit_profile_controller.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/textform.dart';
import 'package:s_c_p/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    EditProfileControllerImp controller = Get.put(EditProfileControllerImp());
    var media = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
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
          "Edit Profile",
          style: TextStyle(color: TColor.White, fontWeight: FontWeight.w500),
        ),
      ),
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
              SizedBox(
                height: media.height * 0.06,
              ),
              TextForm(
                mycontroller: controller.name,
                labeltext: "Edit Name",
                keyboardtype: TextInputType.text,
                secure: false,
                icon: Icon(
                  Icons.person_outlined,
                  color: TColor.Gold,
                ),
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              TextForm(
                mycontroller: controller.email,
                labeltext: "Edit Email",
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
                  labeltext: "Edit Password",
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
                height: media.height * 0.1,
              ),
              CustomButton(
                  text: "Save",
                  onpressed: () {
                    controller.edit();
                  },
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.03)
            ],
          ),
        ),
      ),
    ));
  }
}
