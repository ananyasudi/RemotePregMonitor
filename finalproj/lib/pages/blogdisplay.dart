// import 'package:easy_sidemenu/easy_sidemenu.dart';
// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'web_view_container.dart';

class blogPage extends StatefulWidget {
  const blogPage({Key? key}) : super(key: key);

  @override
  _blogPageState createState() => _blogPageState();
}

class _blogPageState extends State<blogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
    
      appBar: AppBar(
        title: Text('Blogs :)'),
      ),
      key: Key('123'),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
            SizedBox(
              height: 10,
            ),
            
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(
                          context, 'https://www.askmydoctor.in/week-5/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            
            
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 9a - Acidity',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-9a-acidity/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 9b - Sleepnessness',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-9b-sleeplessness/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 9c - Headaches',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-9c-headaches/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 10a - Pregnancy tests',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/elementor-2185/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 10b - Sleeping',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-10b-sleeping/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 11a - Vaginal discharge',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-11a/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 11b - exercise',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-11b-exercise/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 12a - Kegel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-12-kegel/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 12b - Second Trimester checkups',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/second-trimester-checkups/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 13 - Weight gain',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/weight-gain/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 14 - Seconf trimester',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/2nd-trimester/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 15 - Dental treatment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/dental-treatment/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 16 - Early contractions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-16-early-contractions/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 17 - Digestion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-17-digestion/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 18 - Backache',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/backache/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 19 - Nails and Hair',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/nails-hairs/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 20 - Headaches',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-20-headaches/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 21 - Cramps',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-21-cramps/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 22 - Nausea in second trimester',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-22-nausea-in-second/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 23 - Nosebleeds',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/nose-bleeds/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 24 - Baby movements',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-24-baby-movements/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 25 - Red Flag',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/redflag/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 26 - Skin and pregnancy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-26-skinpregnancy/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 27 - Urine Infections',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/week-27-urine-infections/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 29a - What to expect?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/what-to-expect/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 29b - Baby movements',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/baby-movements/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 30 - Breast enlargement',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/breast-enlarge/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 31 - Clumsiness',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/clumsiness/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 32 - Nightmares',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/nightmares/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 33 - Stretch marks',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/stretch-marks/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 34a - Vaginal discharge',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/vaginal-discharge/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 34b - Am I in labour?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/am-in-labour/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 35a - False labor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/false-labor/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 35b - TrueVSfalse',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/truevsfalse/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 35c - Contractions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/contractions/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 36a - Normal Delivery',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/stages-of-labour-preparation/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 36b - Normal Delivery 2nd stage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/stages-of-labour-birth-of-bay/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 36c - Normal Delivery 2nd stage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/stages-of-labour-birth-of-bay/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 36c - Normal Delivery 3rd stage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/normal-3rd-stage/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 37 - Cesarian section',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/cesarian-section-2/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                    Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Week 38 - Painless delivery epidural',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, 'https://www.askmydoctor.in/painless-delivery-epidural/'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
          ]))),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
