import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/View/Widgets/list_tile.dart';
import 'package:s_c_p/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                ProfListTile(
                  text: "My Profile",
                  leading: Icon(
                    Icons.person_outline,
                    color: TColor.White,
                    size: media.height * 0.045,
                  ),
                  trealling: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.White,
                  ),
                  onpressed: () {
                    Get.toNamed("/myprofile");
                  },
                  textcolor: TColor.White,
                ),
                Divider(
                  color: TColor.Gold,
                  height: media.height * 0.01,
                  thickness: media.height * 0.0005,
                ),
                ProfListTile(
                  text: "Donation",
                  leading: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: TColor.White,
                    size: media.height * 0.045,
                  ),
                  trealling: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.White,
                  ),
                  onpressed: () {
                    Get.toNamed("/donation");
                  },
                  textcolor: TColor.White,
                ),
                Divider(
                  color: TColor.Gold,
                  height: media.height * 0.01,
                  thickness: media.height * 0.0005,
                ),
                ProfListTile(
                  text: "Address",
                  leading: Icon(
                    Icons.location_on,
                    color: TColor.White,
                    size: media.height * 0.045,
                  ),
                  trealling: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.White,
                  ),
                  onpressed: () {
                    Get.toNamed("/manual");
                  },
                  textcolor: TColor.White,
                ),
                Divider(
                  color: TColor.Gold,
                  height: media.height * 0.01,
                  thickness: media.height * 0.0005,
                ),
                ProfListTile(
                  text: "Logout",
                  leading: Icon(
                    Icons.logout_outlined,
                    color: TColor.Gold,
                    size: media.height * 0.045,
                  ),
                  trealling: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: TColor.Gold,
                  ),
                  onpressed: () {},
                  textcolor: TColor.Gold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
