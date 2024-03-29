import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: TColor.Green,
        appBar: AppBar(
          backgroundColor: TColor.Green,
          elevation: 1,
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
            "My Profile",
            style: TextStyle(color: TColor.White, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: media.height * 0.05,
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
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: TColor.White,
                    size: media.height * 0.06,
                  ),
                  title: Text(
                    "Name",
                    style: TextStyle(
                        color: TColor.White, fontSize: media.height * 0.025),
                  ),
                  subtitle: Text(
                    "Your Name",
                    style: TextStyle(
                        color: TColor.Gold, fontSize: media.height * 0.015),
                  ),
                ),
                Divider(
                  color: TColor.Gold,
                  height: media.height * 0.01,
                  thickness: media.height * 0.0005,
                ),
                ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: TColor.White,
                    size: media.height * 0.06,
                  ),
                  title: Text(
                    "Email",
                    style: TextStyle(
                        color: TColor.White, fontSize: media.height * 0.025),
                  ),
                  subtitle: Text(
                    "Your Email",
                    style: TextStyle(
                        color: TColor.Gold, fontSize: media.height * 0.015),
                  ),
                ),
                Divider(
                  color: TColor.Gold,
                  height: media.height * 0.01,
                  thickness: media.height * 0.0005,
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: TColor.White,
                    size: media.height * 0.06,
                  ),
                  title: Text(
                    "Location",
                    style: TextStyle(
                        color: TColor.White, fontSize: media.height * 0.025),
                  ),
                  subtitle: Text(
                    "Your Location",
                    style: TextStyle(
                        color: TColor.Gold, fontSize: media.height * 0.015),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.15,
                ),
                CustomButton(
                    text: "Edit Profile",
                    onpressed: () {
                      Get.toNamed("/editprofile");
                    },
                    bordercolor: TColor.Gold,
                    buttoncolor: TColor.Gold,
                    textcolor: TColor.Green,
                    fontsize: media.height * 0.03)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
