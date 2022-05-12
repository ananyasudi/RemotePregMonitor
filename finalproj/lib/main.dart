import 'package:flutter/material.dart';
import './/pages/log_reg_opt_page.dart';
// import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPM',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: logRegOptions(),
    );
  }
}


