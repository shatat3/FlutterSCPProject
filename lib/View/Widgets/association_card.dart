import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/View/Widgets/button_card.dart';
import 'package:s_c_p/colors.dart';

class AssociationCard extends StatelessWidget {
  final String name;
  final int people;
  final int foodrequest;
  final String image;
  const AssociationCard(
      {Key? key,
      required,
      required this.name,
      required this.people,
      required this.foodrequest,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(media.height * 0.01),
      height: media.height * 0.2,
      decoration: BoxDecoration(
          border: Border.all(color: TColor.Gold),
          borderRadius: BorderRadius.circular(media.height * 0.01)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: media.height * 0.08,
                width: media.width * 0.3,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: media.width * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: TColor.White,
                        fontSize: media.height * 0.03,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.groups,
                        color: TColor.White,
                        size: media.height * 0.03,
                      ),
                      Text(
                        " ${people} People",
                        style: TextStyle(
                            color: TColor.White,
                            fontSize: media.height * 0.015),
                      ),
                      SizedBox(
                        width: media.width * 0.02,
                      ),
                      Icon(
                        Icons.fastfood,
                        color: TColor.White,
                        size: media.height * 0.03,
                      ),
                      Text(
                        " ${foodrequest}% Request",
                        style: TextStyle(
                            color: TColor.White,
                            fontSize: media.height * 0.015),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: media.height * 0.045,
          ),
          Row(
            children: [
              ButtonCard(
                  text: "Know More",
                  onpressed: () {
                    Get.toNamed("/knowmore");
                  },
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Green,
                  textcolor: TColor.Gold),
              SizedBox(
                width: media.width * 0.03,
              ),
              ButtonCard(
                  text: "Donate Now",
                  onpressed: () {},
                  bordercolor: TColor.Gold,
                  buttoncolor: TColor.Gold,
                  textcolor: TColor.Green)
            ],
          )
        ],
      ),
    );
  }
}
