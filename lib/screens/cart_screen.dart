import 'package:cloths_shop/widget/constant.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  @override































































  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('My Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/man1.png'),
                ),
                SizedBox(
                  width: 20,),
                Column(
                  children: [
                    Text(
                        'Orange T-Shirt'),
                    Text(
                        '450 LE'),
                  ],
                ),

              ],
            ),
            Divider(
              color: PrimaryColor,),
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/man2.png'),
                ),
                SizedBox(
                  width: 20,),
                Column(
                  children: [
                    Text(
                        'black T-Shirt'),
                    Text(
                        '450 LE'),
                  ],
                ),

              ],
            ),
            Divider(
              color: PrimaryColor,),
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/man3.png'),
                ),
                SizedBox(
                  width: 20,),
                Column(
                  children: [
                    Text(
                        'blue T-Shirt'),
                    Text(
                        '250 LE'),
                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
