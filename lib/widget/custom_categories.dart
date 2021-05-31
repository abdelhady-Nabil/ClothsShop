import 'package:flutter/material.dart';
class CustomCategories extends StatelessWidget {
  final String image;
  final String title;
  final Function function;
  CustomCategories({
    this.image,
    this.title,
    this.function
  });


  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: function,
        child: Column(
          children: [
            CircleAvatar(
              radius:35 ,
              backgroundImage: AssetImage(image),

            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      );
  }
}
