import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class TextForm extends StatelessWidget {
  final String labeltext;
  final TextInputType keyboardtype;
  final bool secure;
  final Icon icon;
  final TextEditingController? mycontroller;
  const TextForm(
      {Key? key,
      required,
      required this.labeltext,
      required this.keyboardtype,
      required this.secure,
      required this.mycontroller,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.08,
      child: TextFormField(
        obscureText: secure,
        cursorColor: TColor.Gold,
        style: TextStyle(color: TColor.White),
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(
                vertical: media.height * 0.005, horizontal: media.width * 0.08),
            label: Text(
              labeltext,
              style: TextStyle(color: TColor.Gold),
            ),
            suffixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(media.height * 0.1),
                borderSide: BorderSide(
                    color: TColor.Gold, width: media.height * 0.0015)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(media.height * 0.1),
                borderSide: BorderSide(
                    color: TColor.Gold, width: media.height * 0.004))),
      ),
    );
  }
}
