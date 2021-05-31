import 'package:cloths_shop/screens/register_screen.dart';
import 'package:cloths_shop/widget/constant.dart';
import 'package:cloths_shop/widget/cusom_Text.dart';
import 'package:cloths_shop/widget/custom_textButton.dart';
import 'package:cloths_shop/widget/custom_textformfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;
  String _email,_password;
  FirebaseAuth instance = FirebaseAuth.instance;
  var loginkey = GlobalKey<ScaffoldState>(); // id with loginscreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: loginkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  CustomText(
                    text: "Welcome",
                    fontsize: 30,

                  ),
                  CustomText(
                    text: "Sign Up",
                    fontsize: 20,
                    color: PrimaryColor,
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Sing in to continue",
                fontsize: 13,
                color: Colors.grey,
              ),
              SizedBox(
                height: 40,
              ),

              CustomTextFormFiled(
                myprefixIcon: Icons.email,
                label: "Email",
                functionchange: (value){
                  setState(() {
                    this._email=value;

                  });
                },

              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormFiled(
                myprefixIcon: Icons.lock,
                label: "password",
                obscure: obscure,
                mysuffixIcon: obscure ? Icons.remove_red_eye : Icons.visibility_off,
                function: (){
                  setState(() {
                    obscure =! obscure;
                  }
                  );
                },
                functionchange: (value){
                  setState(() {
                    this._password=value;
                  });
                },

              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                text: "forgot password ?",
                fontsize: 12,
                color: Colors.grey,
                alignment: Alignment.topRight,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextButton(
                text: "Sign in",
                function: () async {
                  try{
                    UserCredential credential =
                    await instance.signInWithEmailAndPassword(
                        email: this._email,
                        password: this._password);
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context)=>HomeScreen()));
                  }on FirebaseAuthException catch(e){
                    if(e.code=='invalid-email'){
                      loginkey.currentState.showSnackBar(SnackBar(content:Text('invalid-email') ,));
                    }else if(e.code=='wrong-password'){
                      loginkey.currentState.showSnackBar(SnackBar(content:Text('Wrong password') ,));
                    }else if(e.code=='user-not-found'){
                      loginkey.currentState.showSnackBar(SnackBar(content:Text('user not found') ,));

                    }
                  }
                },


              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                text: "_OR_",
                fontsize: 20,

                alignment: Alignment.center,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextButton(
                text: "Register now",
                function: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>RegisterScreen()
                      )
                  );
                },
              ),




            ],

          ),
        ),
      ),
    );
  }
}
