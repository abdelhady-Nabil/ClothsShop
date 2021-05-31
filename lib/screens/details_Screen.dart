import 'package:cloths_shop/widget/constant.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String Descrip;
  final String price;


  DetailsScreen({this.name,this.image,this.Descrip,this.price});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text(
            'product Details'
        ),
      ),

      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Center(
            child: Container(
              height: 300,
              child: Image(
                image: AssetImage(image),),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0,0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    name,style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold

                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Details',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold

                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text(

                    Descrip,style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600]


                  ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:
                    [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,


                          children:
                          [
                            Text(
                              'price'
                              ,style: TextStyle(
                              fontSize: 20,




                            ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              price
                              ,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal


                            ),
                            ),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: 50,
                          width: 150,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue,
                          ),
                          child: Container(
                            color: PrimaryColor,
                            child: TextButton(

                                onPressed: (){},
                                child: Text('ADD',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      )

                    ],
                  ),

                ],
              ),
            ),
          ),





        ],
      ) ,

    );
  }
}
