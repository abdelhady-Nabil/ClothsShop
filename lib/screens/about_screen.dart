import 'package:cloths_shop/widget/constant.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('About the application'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Text('the AI multi-agent Cloths shopping system is a shopping assistant, more like a recommendation engine. First, the system is fed with the details of a wide range of products. When a user registers in the system and searches for a specific product, the system returns the result of the most relevant items that match the search keywords entered by the user. Since the system is designed to study the search patterns of the user and based on the previous search and purchase history, it will also provide a curated suggestion of a list of items that are a close match to the searched item. The AI shopping system allows usersto register and log in using an ID and password. After logging in, users can search for products online, perform a custom search across various product categories, add items to cart, and choose the preferred payment option.'),

        ),
      ),
    );
  }
}
