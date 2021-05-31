import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:flutter/material.dart';
class SeeAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Best Selling'),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: 
          [
            Row(
              children:
              [
                CustomProduct(
                  image: 'images/man1.png',
                  pname: 'Orange T-Shirt',
                  pbrand: 'polo',
                  price: '450 LE',
                  decrip:'polo T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
                SizedBox(
                  width: 10,
                ),
                CustomProduct(
                  image: 'images/man2.png',
                  pname: 'black T-Shirt',
                  pbrand: 'polo',
                  price: '450 LE',
                  decrip:'polo T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children:
              [
                CustomProduct(
                  image: 'images/woman1.jpg',
                  pname: 'black dress',
                  pbrand: 'midi',
                  price: '950 LE',
                  decrip:'black dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
                SizedBox(
                  width: 10,
                ),
                CustomProduct(
                  image: 'images/ch2.jpg',
                  pname: 'blue site',
                  pbrand: 'H&M',
                  price: '1750 LE',
                  decrip:'blue site is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children:
              [
                CustomProduct(
                  image: 'images/b1.jpg',
                  pname: 'blue shirt ',
                  pbrand: 'Eagle',
                  price: '1200 LE',
                  decrip:'blue shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
                SizedBox(
                  width: 10,
                ),
                CustomProduct(
                  image: 'images/woman3.jpg',
                  pname: 'red dress',
                  pbrand: 'Turki',
                  price: '1950 LE',
                  decrip:'red dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children:
              [
                CustomProduct(
                  image: 'images/ch3.jpg',
                  pname: 'girl dress',
                  pbrand: 'midi',
                  price: '750 LE',
                  decrip:'girl dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),
                SizedBox(
                  width: 10,
                ),
                CustomProduct(
                  image: 'images/b4.jpg',
                  pname: 'black jacket',
                  pbrand: 'H&M',
                  price: '1500 LE',
                  decrip:'black jacket is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
