
import 'package:flutter/material.dart';
import 'package:hi/screens/signupscreen.dart';
import 'package:hi/screens/Loginscreen.dart';
import 'package:hi/screens/splash.dart';
import 'package:hi/screens/homescreen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //my routes
      initialRoute: '/login',
      routes: {
        '/splash': (context) => Splash(),
        '/login': (context)=> Login(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
