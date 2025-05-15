import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, this.text, this.fontSize, this.fontWeight, this.color});

  String? text = ' write what you want';
  double? fontSize = 16;
  FontWeight? fontWeight = FontWeight.w100;
  Color? color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}
