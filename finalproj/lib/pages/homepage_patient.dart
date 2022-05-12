import 'package:flutter/material.dart';

class patientHomeScreen extends StatefulWidget {
  // const patientHomeScreen({ Key? key }) : super(key: key);

  const patientHomeScreen(this.patientdetails);
  final Map<String,dynamic> patientdetails;

  @override
  _patientHomeScreenState createState() => _patientHomeScreenState();
}

class _patientHomeScreenState extends State<patientHomeScreen> {
  String FullName="";
  String Email="";
  String PhoneNumber="";
  String Current_Preg_Week="";
  void initState(){

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
         
          child: Column(
            children: [
              Text('Full Name: ${widget.patientdetails["data"][0]["Full_Name"]}'),
              Text('Email: ${widget.patientdetails["data"][0]["Email"]}'),
              Text('Curr_preg_Week: ${widget.patientdetails["data"][0]["Curr_Preg_Week_s"]}'),
              Text('Mobile: ${widget.patientdetails["data"][0]["Mobile"]}'),



            ],
          )),
      )
    );
      
  }
}