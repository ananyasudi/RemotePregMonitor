// import './/pages/homepage_admin.dart';
// import './/pages/homepage_doctor.dart';
import 'package:finalproj/pages/blogdisplay.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import '../pages/register.dart';
import './signin.dart';
import './homepage_patient.dart';
import './landing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var response;
  var patient_details;

  // Check box value for user (Patients, doctors, and admins)
  bool patient = false;
  bool doctor = false;
  bool admin = false;

  bool showPassword =
      true; //boolean value to track password view enable disable.

  // form key
  final _formKey = GlobalKey<FormState>();

  // Editing controllers
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.pink;
    }

    // Check box for patient role
    final userField1 = Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: patient,
          onChanged: (bool? value1) {
            if (doctor || admin) {
              setState(() {
                doctor = false;
                admin = false;
              });
            }
            setState(() {
              patient = value1!;
            });
          }),
      Text(
        'Patient ',
        style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
      ),
      SizedBox(width: 3),
    ]);

    // Check box for doctor role
    final userField2 = Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: doctor,
          onChanged: (bool? value2) {
            if (patient || admin) {
              setState(() {
                patient = false;
                admin = false;
              });
            }
            setState(() {
              doctor = value2!;
            });
          }),
      Text(
        'Doctor ',
        style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
      ),
      SizedBox(width: 3),
    ]);

    // Check box for admin role

    // Email entry
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      // Email validation
      validator: (value) {
        if (value!.isEmpty) {
          return ("Email can't be empty");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Enter a valid Email");
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

    // Password entry
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: showPassword,
      keyboardType: TextInputType.visiblePassword,

      
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Password");
        }
        return null;
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (showPassword) {
                  showPassword = false;
                } else {
                  showPassword = true;
                }
              });
            },
            icon: Icon(showPassword == false
                ? Icons.visibility
                : Icons.visibility_off)),

        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(3),
      color: Colors.pink,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          if(!_formKey.currentState!.validate()){
            return;
          }
          response = await signIn(emailController.text,passwordController.text);
          if (response == "No email found" || response=="Wrong Password") {
            print("Recheck your Email or Password");
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Recheck your Email or Password'),
                content: const Text('Check your email and try again'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          } else {
            // print(response);
            patient_details = response;
            print("login");
            print(patient_details);
            Navigator.of(context).pushReplacement(
                // MaterialPageRoute(builder: (context) => patientHomeScreen(patient_details)));
                MaterialPageRoute(builder: (context) => landing_screen(patient_details)));

          }
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ),
    );
   



    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: Image(
                          image: AssetImage("assets/logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          userField1,
                          SizedBox(
                            width: 15,
                          ),
                          userField2,
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      emailField,
                      SizedBox(
                        height: 20,
                      ),
                      passwordField,
                       SizedBox(
                        height: 45,
                      ),
                      loginButton,
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
  // Login function
