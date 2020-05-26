import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Loginscreen.dart';

class Splash extends StatefulWidget {
  

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: 
       SplashScreen(
         seconds: 4,
          navigateAfterSeconds: new Login(),
          image: new Image.asset('assets/whatsapp.png'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 50.0,
          loaderColor: Colors.green,
         ),
    );
  }
}