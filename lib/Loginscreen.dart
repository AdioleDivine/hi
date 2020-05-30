import 'package:flutter/material.dart';
import 'package:hi/myWidgets.dart';
import 'package:hexcolor/hexcolor.dart';


class Login extends StatefulWidget {
  

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
            child: Column(
          children: <Widget>[
            SizedBox(height:90.0),
            
            Text('Welcome'
            ,style: TextStyle(
  
             color: Colors.white,
             fontWeight: FontWeight.bold,
                fontSize: 30.0,
              )),
           Padding(
           padding: EdgeInsets.fromLTRB(75, 3, 10, 20),
           child:
    Text('Sign In',style: TextStyle(
  
             color: Colors.white,
  
             fontWeight: FontWeight.bold,
  
                fontSize: 20.0,
  
                               )
  
                               ),
            
            )],),
                        )
                        ),
           ),
      (SizedBox(height:70.0)),
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
         Row(
           children:
         <Widget>[
           SizedBox(width: 295.0),
           Text("Forgot Password?")],
         ),
         SizedBox(height:70.0),
       MaterialButton(
            height: 50,
            minWidth: 340,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(12)),
            onPressed: () {

            },
            child: Text(
              "Sign In",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
                       ),
            color: Colors.greenAccent
                 ),
                 SizedBox(height: 10.0),
                 
                   
                 Text('or sign in with', style: TextStyle(
  
                     fontSize: 15.0
  
                   ),
  
                   ),
                   SizedBox(width:50.0),

                 SizedBox(height: 50.0),
                 Row(
                   children: <Widget>[

                     SizedBox(width: 65.0),
               Container(
          
                 width: 125,
  
            height: 43,
             decoration:BoxDecoration(
            color:Hexcolor('#ff0000'),
  
        border: Border.all(
        color:Hexcolor('#ff0000'),
      ),
  
      borderRadius: BorderRadius.circular(10.0),
  
    ),
            child:
            Row(
              children: <Widget>[
                CircleAvatar(
                radius: 15.0,
                backgroundImage:
            AssetImage('assets/google.png'),
            backgroundColor: Hexcolor('#ff0000'),
                ),
                SizedBox(width:9.0),
          Center(
            child:
          Text('Google', style: TextStyle(
  
        color: Colors.white,
  
             fontWeight: FontWeight.bold,
  
      ),),
   
            )
            ]
            )
          ),

          SizedBox(width:50.0),
            Container(
          
                 width: 125,
  
            height: 43,
             decoration:BoxDecoration(
            color: Hexcolor('#3c5a99'),
  
        border: Border.all(
         color: Hexcolor('#3c5a99'),
      ),
  
      borderRadius: BorderRadius.circular(10.0),
  
    ),
            child:
            Row(
              children: <Widget>[
                SizedBox(width:3.0),
                 CircleAvatar(
                radius: 13.0,
                backgroundImage:
            AssetImage('assets/facebook.png',
            ),
            backgroundColor: Hexcolor('#3c5a99'),
                 ),
            SizedBox(width:9.0),
            
          Center(
            child:
          Text('FaceBook', style: TextStyle(
  
        color: Colors.white,
  
             fontWeight: FontWeight.bold,
  
      ),),
   
            )
            ]
            )
          ),
],
                 ),
          SizedBox(height: 110.0),
         GestureDetector(
                     onTap: () {
                        Navigator.pushNamed(context, '/signup');
                     },
                   child: Text("Don't have an account?Sign Up")
                   )
         ]
       )
       )
       );
               }
             }
             

