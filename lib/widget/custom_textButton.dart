import 'package:flutter/material.dart';
import 'constant.dart';
import 'cusom_Text.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  final Function function;


  CustomTextButton({
    this.text="",
    this.function,
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PrimaryColor,
      ),

      child: TextButton(
          onPressed: function,
          child:CustomText(
            text: text,
            color: Colors.white,
            alignment: Alignment.center,

          )

      ),
    );
  }
}
