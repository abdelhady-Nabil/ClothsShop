import 'package:cloths_shop/screens/women_category_screen.dart';
import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/custom_categories.dart';
import 'package:flutter/material.dart';

import 'bigsize_screen.dart';
import 'children_screen.dart';
import 'men_category_screen.dart';
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Categories'),
      ),
      body: Container(
        alignment: Alignment.topRight,
        height: 700,
        width: double.infinity,
        child: ListView(
          scrollDirection:Axis.vertical,

          children:
          [

            CustomCategories(
              image: 'images/man.jpg',
              title: 'men',
              function: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>MenCategory()));
              },
            ),
            SizedBox(
                width: 25),
            Divider(
              color: PrimaryColor,),
            CustomCategories(
              image: 'images/woman.jpg',
              title: 'women',
              function: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>WomenCategory()));
              },
            ),
            SizedBox(
                width: 25),
            Divider(
              color: PrimaryColor,),
            CustomCategories(
              image: 'images/children.jpg',
              title: 'Children',
              function: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ChildrenCategory()));
              },

            ),
            SizedBox(
                width: 25),
            Divider(
              color: PrimaryColor,),
            CustomCategories(
              image: 'images/bigsize.jpg',
              title: 'BigSize',
              function: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>BigSizeCategory()));
              },
            ),
            Divider(
              color: PrimaryColor,),


          ],
        ),
      ),
    );
  }
}
