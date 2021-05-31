import 'package:cloths_shop/screens/home_screen.dart';
import 'package:cloths_shop/screens/login_screen.dart';
import 'package:cloths_shop/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

main()async{
  WidgetsFlutterBinding.ensureInitialized(); //call fire base(interact with flutter engine)
  await Firebase.initializeApp(); //return Future call native code to initialize fire base
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
