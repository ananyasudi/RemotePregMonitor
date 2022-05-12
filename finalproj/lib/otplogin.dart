// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:gasbookingapp/homepage.dart';
// import 'package:gasbookingapp/profilepage.dart';
// import 'package:pinput/pinput.dart';
// import 'package:firebase_database/firebase_database.dart';

// enum MobileVerificationState { numberForm, otpForm }

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   MobileVerificationState currentForm = MobileVerificationState.numberForm;

//   final numberFormController = TextEditingController();
//   final otpFormController = TextEditingController();

//   FirebaseAuth auth = FirebaseAuth.instance;
//   FirebaseDatabase db = FirebaseDatabase.instance;

//   String verificationID = "";
//   bool showLoading = false;

//   void signInWithPhoneAuth(PhoneAuthCredential pAuthCredential) async {
//     setState(() {
//       showLoading = true;
//     });

//     try {
//       final authCred = await auth.signInWithCredential(pAuthCredential);
//       setState(() {
//         showLoading = false;
//       });
//       debugPrint("SIGNED INSIGNED INSIGNED INSIGNED INSIGNED INSIGNED IN");

//       if (authCred.user != null) {
//         var uid = authCred.user!.uid;
//         // check if new user
//         var dbref = db.ref().child("users/$uid");

//         final snap = await dbref.get();
//         if (snap.exists) {
//           debugPrint("OLD USER OLD USER OLD USER OLD USER OLD USER OLD USER");
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => HomePage()));
//         } else {
//           debugPrint("NEW USER NEW USER NEW USER NEW USER NEW USER NEW USER");
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => ProfilePage()));
//         }
//         debugPrint("NON NULLNON NULLNON NULLNON NULLNON NULLNON NULL");
//       }
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         showLoading = false;
//       });

//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text("Unable to Verify. OTP may have been wrong.")));
//     }
//   }

//   //-----------------------------Phone Number Form-----------------------------

//   mobileForm(context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 64,
//         ),
//         Text(
//           "Vijayshankara Gas Agency",
//           style: Theme.of(context).textTheme.displaySmall,
//         ),
//         Spacer(),
//         TextField(
//           keyboardType: TextInputType.phone,
//           decoration: InputDecoration(
//               floatingLabelBehavior: FloatingLabelBehavior.auto,
//               floatingLabelAlignment: FloatingLabelAlignment.start,
//               prefixStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               prefixText: "+91   ",
//               labelText: "Enter Phone Number",
//               border: OutlineInputBorder()),
//           controller: numberFormController,
//         ),
//         SizedBox(height: 16),
//         OutlinedButton(
//           onPressed: () async {
//             setState(() {
//               showLoading = true;
//             });
//             debugPrint("^^^^^^^^^^^^^^^^^^");
//             debugPrint("+91" + numberFormController.text);
//             await auth.verifyPhoneNumber(
//                 phoneNumber: "+91" + numberFormController.text,
//                 verificationCompleted: (phoneAuthCredential) async {
//                   setState(() {
//                     showLoading = false;
//                   });
//                 },
//                 verificationFailed: (verificationFailed) async {
//                   setState(() {
//                     showLoading = false;
//                   });
//                   debugPrint(
//                       "VERIFICATION FAILEDVERIFICATION FAILEDVERIFICATION FAILEDVERIFICATION FAILEDVERIFICATION FAILEDVERIFICATION FAILED");
//                   debugPrint(verificationFailed.message);
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Verification Failed")));
//                 },
//                 codeSent: (verificationID, resendToken) async {
//                   debugPrint(
//                       "CODECODE SENTCODE SENTCODE SENTCODE SENTCODE SENT SENT");
//                   setState(() {
//                     showLoading = false;
//                     currentForm = MobileVerificationState.otpForm;
//                     this.verificationID = verificationID;
//                   });
//                 },
//                 codeAutoRetrievalTimeout: (verificationID) async {});
//           },
//           child: Text("SEND OTP"),
//         ),
//         Spacer()
//       ],
//     );
//   }

//   //-----------------------------OTP Form-----------------------------

//   // for Pinput

//   final focusNode = FocusNode();

//   @override
//   void dispose() {
//     focusNode.dispose();
//     super.dispose();
//   }

//   final focusedBorderColor = Color.fromARGB(255, 75, 168, 245);
//   final fillColor = Color.fromARGB(0, 255, 255, 255);
//   final borderColor = Colors.blue;

//   final defaultPinTheme = PinTheme(
//     width: 56,
//     height: 56,
//     textStyle: TextStyle(
//       color: Color.fromARGB(255, 201, 201, 201),
//     ),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(19),
//       border: Border.all(color: Colors.blue),
//     ),
//   );

//   otpForm(context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: 64,
//         ),
//         Text(
//           "Vijayshankara Gas Agency",
//           style: Theme.of(context).textTheme.displaySmall,
//         ),
//         Spacer(),
//         Text(
//           "Enter OTP: ",
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         SizedBox(height: 32),
//         Pinput(
//           length: 6,
//           controller: otpFormController,
//           focusNode: focusNode,
//           defaultPinTheme: defaultPinTheme,
//           hapticFeedbackType: HapticFeedbackType.lightImpact,
//           onCompleted: print,
//           cursor: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(bottom: 9),
//                 width: 22,
//                 height: 1,
//                 color: focusedBorderColor,
//               ),
//             ],
//           ),
//           focusedPinTheme: defaultPinTheme.copyWith(
//             decoration: defaultPinTheme.decoration!.copyWith(
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: focusedBorderColor),
//             ),
//           ),
//           submittedPinTheme: defaultPinTheme.copyWith(
//             decoration: defaultPinTheme.decoration!.copyWith(
//               color: fillColor,
//               borderRadius: BorderRadius.circular(19),
//               border: Border.all(color: focusedBorderColor),
//             ),
//           ),
//         ),
//         SizedBox(height: 16),
//         OutlinedButton(
//           onPressed: () async {
//             final pAuthCredential = PhoneAuthProvider.credential(
//                 verificationId: verificationID,
//                 smsCode: otpFormController.text);
//             signInWithPhoneAuth(pAuthCredential);
//           },
//           child: Text("VERIFY"),
//         ),
//         Spacer()
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: showLoading
//             ? Center(
//                 child: CircularProgressIndicator(),
//               )
//             : ((currentForm == MobileVerificationState.numberForm)
//                 ? mobileForm(context)
//                 : otpForm(context)),
//         padding: EdgeInsets.all(32),
//       ),
//     );
//   }
// } 