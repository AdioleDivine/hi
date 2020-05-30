import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'myWidgets.dart';


class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      
       body: SingleChildScrollView(
         child:
        Column(
         children: <Widget>[
           ClipPath(
             clipper: Myclipper(),
             child: 
             Container(
               width: 500,
          height: 200,
        decoration:BoxDecoration(
      color:Colors.greenAccent 
          ),
          child: Center(
          child: Text('Sign Up',style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
              fontSize: 30.0,
                             )
                             ),
                        )
                        ),
           ),
      (SizedBox(height:30.0)),
      Padding(
           padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
           child:
          TextField(
       decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green), 
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Email",
      suffixIcon: Icon(Icons.verified_user),
      fillColor: Colors.white54),
        ),
      ),
         SizedBox(height:5.0),
         Padding(
           padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
           child:
          TextField(
       decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green), 
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Password",
      suffixIcon: Icon(Icons.vpn_key),
      fillColor: Colors.white54),
        ),
         ),  

          SizedBox(height:5.0),
         Padding(
           padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
           child:
          TextField(
       decoration: new InputDecoration(
      border: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green), 
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Confirm Password",
      suffixIcon: Icon(Icons.vpn_key),
      fillColor: Colors.white54),
        ),
         ),  
         SizedBox(height:30.0),
       MaterialButton(
            height: 50,
            minWidth: 340,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(12)),
            onPressed: () {
              
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
                       ),
            color: Colors.greenAccent
                 ),
                 
                 
           SizedBox(height: 150.0),
            GestureDetector(
                     onTap: () {
                        Navigator.pushReplacementNamed(context, '/login');
                     },
                   child: Text("Already have an account?Sign in")
                   )
],
        ),
        
       )
       );
       
  }
}