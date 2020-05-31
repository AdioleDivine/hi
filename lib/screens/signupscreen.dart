import 'package:flutter/material.dart';
import 'package:hi/widgets/myWidgets.dart';



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
          ))))),
      //End of my clipPath design

      (SizedBox(height:30.0)),

      //Text fields start here
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
      //End of Email TextField

         SizedBox(height:5.0),

      //Beginning of Password TextField
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
      //End of PassWord TextField

          SizedBox(height:5.0),

      //Beginning of ConfirmPassword TextField
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
      ),//for my border
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Confirm Password",
      suffixIcon: Icon(Icons.vpn_key),
      fillColor: Colors.white54),
        ),
      ),
      //End of ConfirmPassword TextField

         SizedBox(height:30.0),

      //Sign up Button
       MaterialButton(
            height: 50,
            minWidth: 340,
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(12)),
            onPressed: () {},
            child: Text(
              "Sign Up",
            style: TextStyle(
            fontSize: 24,
            color: Colors.white,
              ),
                ),
            color: Colors.greenAccent
              ),
        //End
                 
           SizedBox(height: 150.0),

        //For users already signed up
            GestureDetector(
              onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text("Already have an account?Sign in")
        )
      ],
        )));
     }
   }