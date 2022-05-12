import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class vital_parameters_screen extends StatefulWidget {
  const vital_parameters_screen({Key? key}) : super(key: key);

  @override
  State<vital_parameters_screen> createState() => _vital_parameters_screenState();
}

class _vital_parameters_screenState extends State<vital_parameters_screen> {
  String _email="";

  final TextEditingController emailController = new TextEditingController();
  final ScrollController _firstController = ScrollController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation,deviceType){
      final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      // Email validation
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
      ),
    );
   
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,  
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 248, 122, 164),
            title: Text("Mother's Vitals Upload"),
          ),
          body: SafeArea(
            child: Center(
              // child:ListView(
                child: Column(
                children:<Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 75.w,
                    child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        labelText: "Patient's Email",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 43, 121, 160),
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Icon(Icons.mail_outline),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                ),

                  ),
                SizedBox(
                    height: 10,
                  ),
                Container(
                   width: 75.w,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "First Name   Last Name",
                        labelText: "Enter Your Name",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 43, 121, 160),
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(
                    height: 10,
                  ),
                Container(
                   width: 75.w,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: null,
                        labelText: "Current Week of Pregnancy",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 43, 121, 160),
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                    height: 10,
                  ),
                Container(
                   width: 75.w,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "dd-MMM-yyyy HH:mm:ss",
                        labelText: "Your Expected Delivery Date",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 43, 121, 160),
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Icon(Icons.date_range_outlined),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(
                    height: 10,
                  ),
                Container(
                   width: 75.w,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "dd-MMM-yyyy",
                        labelText: "Your last Visit to Clinic",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 43, 121, 160),
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Icon(Icons.date_range_outlined),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                   
                  
                            
                  
                            
                ])
          ),
          )
    ));

    });
     
  }
}