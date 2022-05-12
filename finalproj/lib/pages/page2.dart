import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                          radius: 30,
                        )),
                  ),
                  //SizedBox(
                  //height: size.height * 0.12,
                  //),
                  Container(
                      width: size.width * 0.8,
                      height: size.height * 0.2,
                      child: Center(
                          child: Text(
                            "APPOINTMENTS",
                            style: TextStyle(fontSize: 24),
                          )),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      )),
                  SizedBox(height: size.height * 0.014,),
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("CLINIC"),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          fixedSize: Size(
                              size.width * 0.7, size.height * 0.069))),
                  //SizedBox(height: size.height * 0.014,),
                  ElevatedButton(onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("ONLINE"),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          fixedSize: Size(
                              size.width * 0.7, size.height * 0.069))),
                  // implement ur drop down here
                ]),
          ),
        ));
  }
}