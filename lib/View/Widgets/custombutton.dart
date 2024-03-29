import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_c_p/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onpressed;
  final Color bordercolor;
  final Color buttoncolor;
  final Color textcolor;
  final double fontsize;
  const CustomButton({
    Key? key,
    required,
    required this.text,
    required this.onpressed,
    required this.bordercolor,
    required this.buttoncolor,
    required this.textcolor,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.075,
      decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(media.height * 0.1),
          border: Border.all(color: bordercolor)),
      child: MaterialButton(
        onPressed: () {
          onpressed();
        },
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
