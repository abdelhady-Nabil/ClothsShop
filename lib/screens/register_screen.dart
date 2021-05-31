import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/cusom_Text.dart';
import 'package:cloths_shop/widget/custom_textButton.dart';
import 'package:cloths_shop/widget/custom_textformfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String name,_email,_password,_phone;
  FirebaseAuth instance =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,

      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomText(
                text: "Create your account ",
                fontsize: 40,

              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormFiled(
                label: "Enter your name",
                functionchange: (value){
                  setState(() {
                    this.name=value;
                  });

                },


              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormFiled(
                label: "Enter your password",
                functionchange: (value){
                  setState(() {
                    this._password=value;
                  });

                },

              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormFiled(
                label: "Enter your Email",
                functionchange: (value){
                  setState(() {
                    this._email=value;
                  });

                },

              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormFiled(
                label: "Enter your phone",
                functionchange: (value){
                  setState(() {
                    this._phone=value;
                  });

                },

              ),
              SizedBox(
                height: 50,
              ),
              CustomTextButton(
                text: "Register",
                function: () async {
                  try{
                    UserCredential credential =
                    await instance.createUserWithEmailAndPassword(
                        email: this._email,
                        password: this._password);
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context)=>HomeScreen()));
                  }on FirebaseAuthException catch(e){
                    print('exception');
                  }
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
