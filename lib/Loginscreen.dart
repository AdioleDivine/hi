import 'package:flutter/material.dart';
import 'package:hi/myWidgets.dart';



class Login extends StatefulWidget {
  

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
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
          child: Text('LOGIN',style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
              fontSize: 30.0,
                             )
                             ),
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
      labelText: "Username",
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
         SizedBox(height:70.0),
       MaterialButton(
            height: 50,
            minWidth: 340,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(12)),
            onPressed: () {},
            child: Text(
              "LOG IN",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
                       ),
            color: Colors.greenAccent
                 )
         ]
       )
       );
               }
             }
             

