import 'package:flutter/material.dart';
import 'package:plantapp/cratscreen.dart';
import 'package:plantapp/datascreen.dart';
import 'package:plantapp/homescreen.dart';
import 'package:plantapp/productdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>home(),
        '/cart':(context)=>cart(),
        '/char':(context)=>char(),
        '/data':(context)=>data(),



        // '/data':(context)=>data(),
      },
    );
  }
}