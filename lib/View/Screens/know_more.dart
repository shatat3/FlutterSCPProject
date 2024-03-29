import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/custombutton.dart';
import 'package:s_c_p/colors.dart';

class KnowMore extends StatelessWidget {
  const KnowMore({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
            "Know More",
            style: TextStyle(color: TColor.White, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: media.height * 0.02,
              left: media.width * 0.02,
              right: media.width * 0.02),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Text(
                '''In our charitable organization,\nwe work to provide food for many children and people who are unable\nto provide their own food.\n
We need every meal in excess of\nyour need because it will make\nthese people happy.\n
Every day our effort to provide more meals increases in light of the increase in needy people that our association takes care of.\n
Thank you all''',
                style: TextStyle(
                    color: TColor.White, fontSize: media.height * 0.025),
              ),
              SizedBox(
                height: media.height * 0.1,
              ),
              CustomButton(
                  text: "Donate Now",
                  onpressed: () {},
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Gold,
                  textcolor: TColor.Green,
                  fontsize: media.height * 0.03)
            ],
          )),
        ),
      ),
    );
  }
}
