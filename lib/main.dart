import 'package:flutter/material.dart';
import 'package:repair_home/home/home_page.dart';
import 'package:repair_home/register/registerScreen.dart';
import 'package:repair_home/splash/splash_screen.dart';
import 'package:repair_home/login/login_screen.dart';



import 'login/login_screen.dart';void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repair Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomePage(),
    );
  }
}

