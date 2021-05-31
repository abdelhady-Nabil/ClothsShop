import 'package:flutter/cupertino.dart';

class product{

  final String id;
  final String cate;
  final String name;
  final String descrubtion;
  final String image;
  final String price;


  product({
    @required this.image,
   @required this.price,
  @required this.cate,
  @required this.descrubtion,
  @required this.id,
  @required this.name

  });

}

class products{
  List<product> _items = [
    product(
        image: 'images/man1.png',
        price: '250 LE',
        cate: 'men',
        descrubtion:'polo T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '1',
        name: 'polo T-Shirt'),
    product(
        image: 'images/man2.png',
        price: '250 LE',
        cate: 'men',
        descrubtion:'polo T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '2',
        name: 'polo T-Shirt'),
    product(
        image: 'images/man3.png',
        price: '250',
        cate: 'men',
        descrubtion:'polo T-shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '3',
        name: 'polo T-Shirt'),
    product(
        image: 'images/woman1.jpg',
        price: '750 LE',
        cate: 'men',
        descrubtion:'women dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '4',
        name: 'midi'),
    product(
        image: 'images/woman2.jpg',
        price: '1500 LE',
        cate: 'men',
        descrubtion:'women dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '5',
        name: 'Zara'),
    product(
        image: 'images/woman3.jpg',
        price: '250',
        cate: 'men',
        descrubtion:'women dress is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '6',
        name: 'H&M'),
    product(
        image: 'images/ch3.jpg',
        price: '1250 LE',
        cate: 'men',
        descrubtion:'children shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '7',
        name: 'polo T-Shirt'),
    product(
        image: 'images/b5.png',
        price: '250',
        cate: 'men',
        descrubtion:'big Size shirt is a polyester fabric designed to help you keep dry so you can more comfortably work harder,',

        id: '8',
        name: 'polo T-Shirt'),

  ];

}



