import 'dart:convert';
// import 'dart:html';

import 'package:finalproj/pages/landing_screen.dart';
import 'package:finalproj/pages/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:http/http.dart' as http;

class patientHomeScreen extends StatefulWidget {
  const patientHomeScreen(this.patientdetails);
  final Map<String,dynamic> patientdetails;

  @override
  _patientHomeScreenState createState() => _patientHomeScreenState();
}

class _patientHomeScreenState extends State<patientHomeScreen> {
  String _name = "";
  String _email = "";
  String _phoneNumber = "";
 
  @override
  final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15),
        primary: Colors.pink,);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(icon:Icon(Icons.arrow_back),
        //     onPressed:() => Navigator.pop(context, false),
        //   ),
        //   backgroundColor: Colors.pink[50],
        //   shadowColor: Colors.pink[50],
        // ),


        body: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[
                      Container(
                  alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed:(){
                    Navigator.pop(context);
                  }),
                ),
              
              SizedBox(
                  height: 200.0,
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.contain,
                  )),
              Text(
                'Your Profile',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${widget.patientdetails["data"][0]["Full_Name"]}',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${widget.patientdetails["data"][0]["Mobile"]}',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${widget.patientdetails["data"][0]["Email"]}',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              ElevatedButton(
            style: style,
            onPressed: ()=>
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),

            child: const Text('Sign Out'),
          ),
             

            ],
          ),
        )),
        backgroundColor: Colors.pink[50],
      ),
    );
  }
}
