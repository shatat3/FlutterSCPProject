import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: TColor.Green,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: TColor.Green,
          actions: [
            IconButton(
              icon: Icon(
                Icons.person_outline,
              ),
              onPressed: () {
                Get.toNamed("/profile");
              },
              color: TColor.Gold,
            ),
          ],
          title: Text(
            "Main Page",
            style: TextStyle(color: TColor.White, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: media.width * 0.01, right: media.width * 0.01),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: media.height * 0.3,
                  width: media.height * 0.3,
                  child: Image(image: AssetImage("Images/6.png")),
                ),
                SizedBox(
                  height: media.height * 0.05,
                ),
                Text(
                  "Here you can simply donate your excess meals.\n\nMany are waiting for you!\n\nWhat are you waiting for?",
                  style: TextStyle(
                      color: TColor.White, fontSize: media.height * 0.025),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: media.height * 0.08,
                ),
                CustomButton(
                  text: "Donate Now",
                  onpressed: () {
                    Get.toNamed("/donation");
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
