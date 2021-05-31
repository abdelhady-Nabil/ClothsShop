import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:flutter/material.dart';
class WomenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Women Category'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
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
                    image: 'images/woman2.jpg',
                    pname: 'black dress',
                    pbrand: 'H&M',
                    price: '1750 LE',
                    decrip:'black dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',
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
                    image: 'images/woman3.jpg',
                    pname: 'red dress',
                    pbrand: 'Turki',
                    price: '1950 LE',
                    decrip:'red dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/woman4.png',
                    pname: 'jeans and t-shirt',
                    pbrand: 'H&M',
                    price: '2950 LE',
                    decrip:'jeans and t-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

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
                    image: 'images/woman5.png',
                    pname: 'black t-shirt ',
                    pbrand: 'Zara',
                    price: '1600 LE',
                    decrip:'black t-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/woman.jpg',
                    pname: 'yellow jacket',
                    pbrand: 'midi',
                    price: '1500 LE',
                    decrip:'yellow jacket is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
