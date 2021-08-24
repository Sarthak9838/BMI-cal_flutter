
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';

class IconContent extends StatelessWidget {
  IconContent(this.boxicon,this.boxtext);
  final IconData boxicon;
  final String boxtext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(boxicon,
          size: 80,
        color: Colors.white,),
        SizedBox(height: 10,),
        Text(boxtext,style: kIcontextstyle),
      ],
    );
  }
}
class Roundicon extends StatelessWidget {
  Roundicon(this.icon,this.onPressed);
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,

      backgroundColor: Color(0XFF4C4F5E),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}