import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:flutter/material.dart';
class BigSizeCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,

        title: Text('BigSize Category'),
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
                    image: 'images/b1.jpg',
                    pname: 'blue T-Shirt',
                    pbrand: 'polo',
                    price: '950 LE',
                    decrip:'blue T-Shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/b2.jpg',
                    pname: 'blur site',
                    pbrand: 'zara',
                    price: '1950 LE',
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
                    image: 'images/bigsize.jpg',
                    pname: 'blue T-Shirt',
                    pbrand: 'zara',
                    price: '2750 LE',
                    decrip:'blue polo T-Shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/man4.jpg',
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
                    image: 'images/b3.jpg',
                    pname: 'black Site',
                    pbrand: 'Zara',
                    price: '2500 LE',
                    decrip:'black site is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/b4.jpg',
                    pname: 'black shirt',
                    pbrand: 'H&M',
                    price: '1500 LE',
                    decrip:'black shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

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