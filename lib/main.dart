import 'package:bregzy_vendor/screens/HomePage.dart';
import 'package:bregzy_vendor/screens/product_screen.dart';
import 'package:bregzy_vendor/screens/login_screen.dart';
import 'package:bregzy_vendor/screens/products_lists.dart';
import 'package:bregzy_vendor/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: Splash_Screen.id,
      routes: {
        Splash_Screen.id:(context)=>Splash_Screen(),
        LoginPage.id:(context)=> LoginPage(),
        // Signup_Screen.id:(context)=>Signup_Screen(),
        HomePage.id:(context)=>HomePage(),
        ProductScreen.id:(context)=>ProductScreen(),
        ProductList.id:(context)=>ProductList(),
      },
    );
  }
}
