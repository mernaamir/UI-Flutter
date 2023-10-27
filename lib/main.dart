import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/contactus.dart';
import 'package:untitled/homepage.dart';
import 'package:untitled/login.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/welcome.dart';
import 'customcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
      home: welcome(),
      routes: {
        "welcome": (context) => welcome(),
        "login": (context) => Login(),
        "signup": (context) => signup()
      },
    ));
  }
}
