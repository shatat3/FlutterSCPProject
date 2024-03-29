import 'package:flutter/material.dart';
import 'package:s_c_p/colors.dart';

class ProfListTile extends StatelessWidget {
  final String text;
  final Icon leading;
  final Icon trealling;
  final Function onpressed;
  final Color textcolor;
  const ProfListTile({
    Key? key,
    required,
    required this.text,
    required this.leading,
    required this.trealling,
    required this.onpressed,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return ListTile(
        leading: leading,
        title: Text(
          text,
          style: TextStyle(color: textcolor, fontSize: media.height * 0.025),
        ),
        trailing: IconButton(
          onPressed: () {
            onpressed();
          },
          icon: trealling,
        ));
  }
}
