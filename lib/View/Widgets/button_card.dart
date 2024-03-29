import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class ButtonCard extends StatelessWidget {
  final String text;
  final Function onpressed;
  final Color bordercolor;
  final Color buttoncolor;
  final Color textcolor;
  const ButtonCard({
    Key? key,
    required,
    required this.text,
    required this.onpressed,
    required this.bordercolor,
    required this.buttoncolor,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.05,
      width: media.width * 0.44,
      decoration: BoxDecoration(
          color: buttoncolor,
          border: Border.all(color: bordercolor, width: media.height * 0.003),
          borderRadius: BorderRadius.circular(media.height * 0.015)),
      child: MaterialButton(
        onPressed: () {
          onpressed();
        },
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
      ),
    );
  }
}
