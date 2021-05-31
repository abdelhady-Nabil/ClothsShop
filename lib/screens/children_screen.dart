import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:flutter/material.dart';
class ChildrenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Children Category'),
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
                    image: 'images/ch2.jpg',
                    pname: 'blue site',
                    pbrand: 'Zara',
                    price: '1750 LE',
                    decrip:'blue site is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/ch1.webp',
                    pname: 'Red T-Shirt',
                    pbrand: 'H&M',
                    price: '1500 LE',
                    decrip:'Red T-Shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',
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
                    image: 'images/ch4.webp',
                    pname: 'White dress',
                    pbrand: 'zara',
                    price: '2950 LE',
                    decrip:'White dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

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
                    image: 'images/ch5.png',
                    pname: 'black t-shirt ',
                    pbrand: 'Zara',
                    price: '1400 LE',
                    decrip:'black t-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/ch6.webp',
                    pname: 'blue T-shirt',
                    pbrand: 'midi',
                    price: '1500 LE',
                    decrip:'blue T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

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
                    image: 'images/children.jpg',
                    pname: 'green site ',
                    pbrand: 'Zara',
                    price: '1850 LE',
                    decrip:'green site is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/4.jpg',
                    pname: 'dress and site',
                    pbrand: 'midi',
                    price: '7500 LE',
                    decrip:'dress and site is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

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