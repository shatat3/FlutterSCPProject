import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class TitleDonation extends StatelessWidget {
  final String title;
  const TitleDonation({
    Key? key,
    required,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
          color: TColor.White,
          fontSize: media.height * 0.025,
          fontWeight: FontWeight.w500),
    );
  }
}
