import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class SocialMedia extends StatelessWidget {
  final String image;
  final Function ontap;

  const SocialMedia(
      {Key? key, required, required this.image, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.05,
      width: media.height * 0.05,
      child: GestureDetector(
        onTap: () {},
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
