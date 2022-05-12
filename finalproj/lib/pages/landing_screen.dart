import 'package:finalproj/pages/AppointmentScreen.dart';
import 'package:finalproj/pages/analytics.dart';
import 'package:finalproj/pages/blogdisplay.dart';
import 'package:finalproj/pages/page2.dart';
import 'package:finalproj/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './vitals.dart';
// import 'blog.dart';
// import 'Vitalinputs.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: BottomNav(),
//     theme: appTheme,
//     title: "Home",
//   ));
// }

ThemeData appTheme = ThemeData(
    primaryColor: Colors.pinkAccent,
    /* Colors.tealAccent,*/
    secondaryHeaderColor: Colors.red.shade100 /* Colors.teal*/
    // fontFamily:
    );

int sel = 0;
double? width;
double? height;
// final bodies = [home(), WishList(), Deals(), prefix0.Notification()];

class landing_screen extends StatefulWidget {
  var bodies;
  landing_screen(this.patientdetails){
  bodies = [home(patientdetails),vital_parameters_screen(),blogPage(),Analytics()];


  }
  final Map<String,dynamic> patientdetails;



  _landing_screenState createState() => _landing_screenState();
}

class _landing_screenState extends State<landing_screen> {
  List<BottomNavigationBarItem> createItems() {
    List<BottomNavigationBarItem> items = [];
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),

        label: "Home"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.favorite,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.favorite_outlined,
          color: Colors.black,
        ),
        label: "Vitals"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.note_alt,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.note_alt,
          color: Colors.black,
        ),
        label: "Blog display"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.notifications,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.analytics,
          color: Colors.black,
        ),
        label: "Analytics"));
    return items;
  }
//    Future<bool> _onWillPop() async {
//   return (await showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: new Text('Are you sure?'),
//           content: new Text('Do you want to exit an App'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
//               child: new Text('No'),
//             ),
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(true), // <-- SEE HERE
//               child: new Text('Yes'),
//             ),
//           ],
//         ),
//       )) ??
//       false;
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.bodies.elementAt(sel),
        bottomNavigationBar: BottomNavigationBar(
          items: createItems(),
          unselectedItemColor: Colors.black,
          selectedItemColor: appTheme.primaryColor,
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          currentIndex: sel,
          elevation: 1.5,
          onTap: (int index) {
            if (index != sel)
              setState(() {
                sel = index;
              });
          },
        ));
  }
}

class home extends StatelessWidget {
  @override
  home(this.patientdetails);
  final Map<String,dynamic> patientdetails;
  Widget build(BuildContext context) {
    // Navigation.selindex=0;

    width = MediaQuery.of(context).size.shortestSide;
    height = MediaQuery.of(context).size.longestSide;
    double h = 50;
    double w = 50;
    return Scaffold(
      // bottomNavigationBar: /*NavigationTest()*/Navigation(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        hoverElevation: 0,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("More Info :"),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/gmail.jpeg'),
                          onPressed: () async {},
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/instagram.jpeg'),
                          onPressed: () async {},
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/telegram.jpeg'),
                          onPressed: () async {},
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: h,
                        width: w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            onPrimary: Colors.white,
                          ),
                          child: Image.asset('assets/whatsapp.jpeg'),
                          onPressed: () async {},
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.info_outline),
        backgroundColor: appTheme.primaryColor.withOpacity(.5),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[HomeTop(patientdetails)],
        ),
      ),
    );
  }
}

class HomeTop extends StatefulWidget {
  @override
  HomeTop(this.patientdetails);
  final Map<String,dynamic> patientdetails;
  _HomeTop createState() => _HomeTop();
}

class _HomeTop extends State<HomeTop> {
  var isFlightselected = true;

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: Clipper08(),
          child: Container(
            height: height! * .65 < 450 ? height! * .65 : 500, //400
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              appTheme.primaryColor,
              appTheme.secondaryHeaderColor
            ])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height! / 16,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: width! * 0.05,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height! / 20,
                ),
                Text(
                  'Remote Pregnancy Monitor',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height! * 0.025,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      child: Choice08(
                          icon: Icons.calendar_today,
                          text: "Calendar",
                          selected: isFlightselected),
                      onTap: () {
                        setState(() {
                          isFlightselected = true;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentScreen()));
                        });
                      },
                    ),
                    SizedBox(
                      width: width! * 0.055,
                    ),
                    InkWell(
                      child: Choice08(
                          icon: Icons.people,
                          text: "Profile page",
                          selected: !isFlightselected),
                      onTap: () {
                        setState(() {
                          isFlightselected = false;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => patientHomeScreen(widget.patientdetails)));
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Clipper08 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    // ignore: non_constant_identifier_names
    var End = Offset(size.width / 2, size.height - 30.0);
    // ignore: non_constant_identifier_names
    var Control = Offset(size.width / 4, size.height - 50.0);

    path.quadraticBezierTo(Control.dx, Control.dy, End.dx, End.dy);
    // ignore: non_constant_identifier_names
    var End2 = Offset(size.width, size.height - 80.0);
    // ignore: non_constant_identifier_names
    var Control2 = Offset(size.width * .75, size.height - 10.0);

    path.quadraticBezierTo(Control2.dx, Control2.dy, End2.dx, End2.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class Choice08 extends StatefulWidget {
  final IconData? icon;
  final String? text;
  final bool? selected;
  Choice08({this.icon, this.text, this.selected});
  @override
  _Choice08State createState() => _Choice08State();
}

class _Choice08State extends State<Choice08>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: widget.selected!
          ? BoxDecoration(
              color: Colors.white.withOpacity(.30),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(
            width: width! * .025,
          ),
          Text(
            widget.text!,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
