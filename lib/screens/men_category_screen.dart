import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:flutter/material.dart';
class MenCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Men Category'),
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
                    image: 'images/man3.png',
                    pname: 'blue T-Shirt',
                    pbrand: 'polo',
                    price: '350 LE',
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
                    image: 'images/man5.jpg',
                    pname: 'black Site',
                    pbrand: 'Zara',
                    price: '2500 LE',
                    decrip:'blue polo T-Shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder',

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomProduct(
                    image: 'images/man6.jpg',
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
