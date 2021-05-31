import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloths_shop/screens/about_screen.dart';
import 'package:cloths_shop/screens/bigsize_screen.dart';
import 'package:cloths_shop/screens/cart_screen.dart';
import 'package:cloths_shop/screens/children_screen.dart';
import 'package:cloths_shop/screens/details_Screen.dart';
import 'package:cloths_shop/screens/login_screen.dart';
import 'package:cloths_shop/screens/men_category_screen.dart';
import 'package:cloths_shop/screens/see_all.dart';
import 'package:cloths_shop/screens/women_category_screen.dart';
import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/cusom_Text.dart';
import 'package:cloths_shop/widget/custom_categories.dart';
import 'package:cloths_shop/widget/custom_product.dart';
import 'package:cloths_shop/widget/custom_textButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseAuth instance  =FirebaseAuth.instance; //server auth db
  @override
  void initState() { //work when app is run
    // TODO: implement initState
    super.initState();

    //work when change in auth
    instance.authStateChanges().listen((User user) {
      if(user==null){
       print("no user");
        //don't user go to lognScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>LoginScreen())
        );

      }
      else{
        print("there is user");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Cloths App'),
        actions: 
        [
          IconButton(
              icon:Icon(Icons.shopping_cart),
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CartScreen()));
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('abdo nabil'),
              accountEmail: Text("abdelhadynabil@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),),
              decoration: BoxDecoration(
                color: PrimaryColor,
              ),

            ),
            ListTile(
              title: Text('Home page'),
              leading: Icon(Icons.home),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Category'),
              leading: Icon(Icons.category),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesScreen()));

              },
            ),
            Divider(
              color: PrimaryColor,),
            ListTile(
              title: Text('About the application'),
              leading: Icon(Icons.info_outline_rounded),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>AboutScreen()));

              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('sign out'),
              leading: Icon(Icons.exit_to_app),
              onTap: (){
                instance.signOut();

              },
            ),
          ],
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children:
          [
            Container(
              height: 300,
              width: double.infinity,
              child: Carousel(

                images: [
                  AssetImage('images/1.jpg'),
                  AssetImage('images/2.png'),
                  AssetImage('images/3.jpg'),
                  AssetImage('images/4.jpg'),
                  AssetImage('images/5.jpg'),

                ],
                dotColor: PrimaryColor,
                boxFit: BoxFit.cover,


              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  CustomText(
                    text: "Categories",
                    fontsize: 30,

                  ),
                  SizedBox(
                    height: 30,
                  ),


                  Container(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection:Axis.horizontal,

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
                        CustomCategories(
                          image: 'images/bigsize.jpg',
                          title: 'BigSize',
                          function: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context)=>BigSizeCategory()));
                          },
                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Text(
                        'Best Selling',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      ),


                      TextButton(
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAll()));
                          },
                          child: Text(
                            'see all'
                            ,style: TextStyle(fontSize: 20,color: PrimaryColor),)),

                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
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







          ],
        ),
      ),
      
    );
  }
}


