import 'package:cloths_shop/screens/details_Screen.dart';
import 'package:flutter/material.dart';
class CustomProduct extends StatelessWidget {
  final String image;
  final String pname;
  final String pbrand;
  final String price;

  final String decrip;

  CustomProduct({
    this.image='images/man1.png',
    this.pname='Orange T-Shirt',
    this.pbrand='polo',
    this.price='450 LE',
    this.decrip='polo shirt dhydfh hdsd'
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>
                  DetailsScreen(
                    name:pname,
                    image: image,
                    price: price,
                    Descrip: decrip,



                  )));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 200,
                height: 200,
                child:
                Image(image: AssetImage(image),fit: BoxFit.cover,)),
            SizedBox(
              height: 5,
            ),
            Text(
              pname,style: TextStyle(
              fontSize: 20,

            ),
            ),
            Text(
              pbrand,style: TextStyle(
              fontSize: 15,

            ),
            ),
            Text(
              price,style: TextStyle(
                fontSize: 15,
                color: Colors.teal

            ),
            ),






          ],
        ),
      ),
    );
  }
}
