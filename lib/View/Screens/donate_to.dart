import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/association_card.dart';
import 'package:s_c_p/colors.dart';

class DonateTo extends StatelessWidget {
  const DonateTo({super.key});

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
            "Donate To",
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      height: media.height * 0.06,
                      width: media.height * 0.06,
                      decoration: BoxDecoration(
                          color: TColor.Green,
                          border: Border.all(color: TColor.Gold),
                          borderRadius:
                              BorderRadius.circular(media.height * 0.05)),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: TColor.Gold,
                        size: media.height * 0.04,
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                    Text(
                      "Near by Association",
                      style: TextStyle(
                          color: TColor.White, fontSize: media.height * 0.027),
                    )
                  ],
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                AssociationCard(
                    name: "Al-Ber",
                    people: 77,
                    foodrequest: 80,
                    image: "Images/4.jpg"),
                SizedBox(
                  height: media.height * 0.02,
                ),
                AssociationCard(
                    name: "Al-Khair",
                    people: 150,
                    foodrequest: 93,
                    image: "Images/11.jpg"),
                SizedBox(
                  height: media.height * 0.02,
                ),
                AssociationCard(
                    name: "Al-Baraka",
                    people: 122,
                    foodrequest: 75,
                    image: "Images/7.jpg"),
                SizedBox(
                  height: media.height * 0.02,
                ),
                AssociationCard(
                    name: "Aman",
                    people: 210,
                    foodrequest: 78,
                    image: "Images/9.jpg"),
                SizedBox(
                  height: media.height * 0.02,
                ),
                AssociationCard(
                    name: "New Life",
                    people: 124,
                    foodrequest: 25,
                    image: "Images/8.jpg"),
                SizedBox(
                  height: media.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
