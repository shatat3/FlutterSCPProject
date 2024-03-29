import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class CounterButton extends StatelessWidget {
  final Icon iconoperation;
  final Function onpressed;
  const CounterButton(
      {Key? key,
      required,
      required this.iconoperation,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () {
          onpressed();
        },
        icon: iconoperation,
        iconSize: media.height * 0.02,
      ),
      height: media.height * 0.05,
      width: media.height * 0.05,
      decoration: BoxDecoration(
          border: Border.all(
            color: TColor.Gold,
          ),
          borderRadius: BorderRadius.circular(media.height * 0.1)),
    );
  }
}
