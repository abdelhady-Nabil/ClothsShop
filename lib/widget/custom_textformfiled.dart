import 'package:flutter/material.dart';
class CustomTextFormFiled extends StatelessWidget {

  final String label;
  final IconData myprefixIcon;
  final IconData mysuffixIcon;
  final bool obscure;
  final Function function;
  final Function functionchange;





  CustomTextFormFiled({
    this.label="Email",
    this.myprefixIcon,
    this.obscure=false,
    this.mysuffixIcon,
    this.function,
    this.functionchange,



  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: functionchange,


      obscureText: obscure,

      decoration: InputDecoration(
        labelText:label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(myprefixIcon),
        suffixIcon:
        IconButton(
          icon: Icon(mysuffixIcon),
          onPressed: function,
        ),
      )
    );
  }
}
