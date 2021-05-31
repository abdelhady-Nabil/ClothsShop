import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final Alignment alignment;


  CustomText({
    this.text="",
    this.color=Colors.black,
    this.fontsize=20,
    this.alignment=Alignment.topLeft
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
        ),
      ),
    );
  }
}
