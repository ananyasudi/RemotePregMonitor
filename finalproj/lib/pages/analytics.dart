import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Row(children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      "Patient's trendlines",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                      ),
                    ),
                  ]),
                ),
              ),
      
    );
  }
}