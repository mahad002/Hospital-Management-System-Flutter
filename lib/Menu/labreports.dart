import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:testing/Menu/appointments.dart';
import 'package:testing/Menu/perscription/current.dart';
import 'package:testing/Menu/perscription/history.dart';
import 'package:testing/Menu/prescription.dart';
import 'package:testing/Menu/settings.dart';

class Lab extends StatefulWidget {
  const Lab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LabState createState() => _LabState();
}

class _LabState extends State<Lab> {
  int _counter = 0;
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.green[700],
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: buildMenu(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        background: const Color.fromARGB(255, 24, 58, 122),
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: SafeArea(
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    color: const Color.fromARGB(255, 24, 58, 122),
                    onPressed: () => toggleMenu(),
                  ),
                  actions: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                    ),
                    IconButton(
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/Profile.png'),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'profile');
                      },
                    ),
                  ],
                  title: Text(
                    widget.title,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 24, 58, 122)),
                  ),
                  shadowColor: Colors.blueGrey,
                ),
                body: SingleChildScrollView(
                    child: Container(
                        width: 360,
                        height: 640,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 69,
                              left: 27,
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      const BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 4),
                                          blurRadius: 4)
                                    ],
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(30, 146, 235, 1),
                                      width: 1,
                                    ),
                                    image: const DecorationImage(
                                        image: AssetImage('assets/Profile.png'),
                                        fit: BoxFit.fitWidth),
                                    borderRadius: const BorderRadius.all(
                                        Radius.elliptical(50, 50)),
                                  ))),
                          const Positioned(
                              top: 77,
                              left: 86,
                              child: Text(
                                'Hello, Mahad',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.800000011920929),
                                    fontFamily: 'Nunito',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 99,
                              left: 86,
                              child: Text(
                                'lets check how you fell today',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(
                                        32, 40, 42, 0.8999999761581421),
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          Positioned(
                              top: 149,
                              left: 30,
                              child: Container(
                                  width: 299,
                                  height: 106,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(0, 178, 255, 1),
                                  ))),
                          Positioned(
                              top: 409,
                              left: 30,
                              child: Container(
                                  width: 299,
                                  height: 106,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 0),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(90, 103, 225, 1),
                                  ))),
                          Positioned(
                              top: 544,
                              left: 27,
                              child: Container(
                                  width: 299,
                                  height: 69,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          offset: Offset(0, 0),
                                          blurRadius: 4)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ))),
                          Positioned(
                              top: 270,
                              left: 30,
                              child: Container(
                                  width: 143,
                                  height: 126,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(0, 132, 255, 1),
                                  ))),
                          Positioned(
                              top: 270,
                              left: 186,
                              child: Container(
                                  width: 143,
                                  height: 126,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(255, 107, 0, 1),
                                  ))),
                          const Positioned(
                              top: 179,
                              left: 57,
                              child: Text(
                                'SARS - CoV - 2 ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 205,
                              left: 57,
                              child: Text(
                                '22 JUN, 2022 ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 286,
                              left: 45,
                              child: Text(
                                'Heart Rate',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 286,
                              left: 197,
                              child: Text(
                                'Lung Capacity',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 427,
                              left: 150,
                              child: Text(
                                'Height',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 473,
                              left: 150,
                              child: Text(
                                'Sleep',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 427,
                              left: 237,
                              child: Text(
                                'Weight',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 473,
                              left: 237,
                              child: Text(
                                'Age',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          Positioned(
                            top: 351,
                            left: 76,
                            child: Container(
                              margin: const EdgeInsets.all(16.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/graph-down-arrow.png',
                                    ),
                                  ]),
                            ),
                          ),
                          const Positioned(
                              top: 369,
                              left: 51,
                              child: Text(
                                '10% lower',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 8,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 369,
                              left: 197,
                              child: Text(
                                '4% Heigher',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(250, 250, 250, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 8,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 322,
                              left: 74,
                              child: Text(
                                'bpm',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 445,
                              left: 178,
                              child: Text(
                                'cm',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 445,
                              left: 255,
                              child: Text(
                                'kg',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 490,
                              left: 255,
                              child: Text(
                                'y',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 490,
                              left: 181,
                              child: Text(
                                'h',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 323,
                              left: 244,
                              child: Text(
                                'L',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 308,
                              left: 45,
                              child: Text(
                                '20',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 24,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 455,
                              left: 62,
                              child: Text(
                                '40',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(90, 104, 224, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 24,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 440,
                              left: 149,
                              child: Text(
                                '190',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 485,
                              left: 149,
                              child: Text(
                                '8:00 ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 485,
                              left: 236,
                              child: Text(
                                '40 ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 441,
                              left: 236,
                              child: Text(
                                '70',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 310,
                              left: 195,
                              child: Text(
                                '4.78',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          const Positioned(
                              top: 442,
                              left: 50,
                              child: Text(
                                'Health Score',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(90, 103, 225, 1),
                                    fontFamily: 'Nunito',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          Positioned(
                              top: 169,
                              left: 240,
                              child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                      bottomLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24),
                                    ),
                                    color: Color.fromRGBO(173, 235, 255, 1),
                                  ))),
                          Positioned(
                              top: 183,
                              left: 262,
                              child: Container(
                                width: 22,
                                height: 22,
                              )),
                          const Positioned(
                              top: 208,
                              left: 256,
                              child: Text(
                                'Negative',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 132, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 8,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                          Positioned(
                              top: 369,
                              left: 242,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(28, 27, 37, 1),
                                ),
                              )),
                          Positioned(
                              top: 561,
                              left: 58,
                              child: Container(
                                  width: 33,
                                  height: 44,
                                  child: Stack(children: <Widget>[
                                    const Positioned(
                                        top: 30,
                                        left: 0,
                                        child: Text(
                                          'reports',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1),
                                              fontFamily: 'Nunito',
                                              fontSize: 10,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 4,
                                        child: Container(
                                          width: 27,
                                          height: 27,
                                        )),
                                  ]))),
                          Positioned(
                              top: 565,
                              left: 268,
                              child: Container(
                                  width: 29,
                                  height: 40,
                                  child: Stack(children: <Widget>[
                                    const Positioned(
                                        top: 26,
                                        left: 0,
                                        child: Text(
                                          'profile',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1),
                                              fontFamily: 'Nunito',
                                              fontSize: 10,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 1,
                                        child: Container(
                                          width: 27,
                                          height: 24,
                                        )),
                                  ]))),
                          Positioned(
                              top: 561,
                              left: 158,
                              child: Container(
                                  width: 42,
                                  height: 43,
                                  child: Stack(children: <Widget>[
                                    const Positioned(
                                        top: 29,
                                        left: 0,
                                        child: Text(
                                          'book test',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1),
                                              fontFamily: 'Nunito',
                                              fontSize: 10,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 6,
                                        child: Container(
                                          width: 30,
                                          height: 27,
                                        )),
                                  ]))),
                        ]))),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 38.0,
                  backgroundImage: AssetImage('assets/Profile.png'),
                  // child: Image(
                  //   image: AssetImage('assets/Summer.png'),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Mahad",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'menu');
            },
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text("Dashboard"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
            leading: const Icon(Icons.person_outline,
                size: 20.0, color: Colors.white),
            title: const Text("Profile"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'appointments');
            },
            leading: const Icon(Icons.approval_rounded,
                size: 20.0, color: Colors.white),
            title: const Text("Appointment"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              //Navigator.pushNamed(context, 'lab');
            },
            leading: const Icon(Icons.list_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Lab Reports"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'diet');
            },
            leading:
                const Icon(Icons.food_bank, size: 20.0, color: Colors.white),
            title: const Text("Diet Plans"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'prescription');
            },
            leading: const Icon(Icons.list_alt_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Prescription"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'pharmacy');
            },
            leading: const Icon(Icons.store, size: 20.0, color: Colors.white),
            title: const Text("Pharmacy"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'chat');
            },
            leading: const Icon(Icons.chat_bubble_outline,
                size: 20.0, color: Colors.white),
            title: const Text("Chats"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'fund');
            },
            leading:
                const Icon(Icons.attach_money, size: 20.0, color: Colors.white),
            title: const Text("Funds"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'insurance');
            },
            leading: const Icon(Icons.policy, size: 20.0, color: Colors.white),
            title: const Text("Insurance"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'wallet');
            },
            leading: const Icon(Icons.wallet_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Wallet"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'notification');
            },
            leading: const Icon(Icons.notifications_rounded,
                size: 20.0, color: Colors.white),
            title: const Text("Notifications"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'setting');
            },
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'login');
            },
            leading: const Icon(Icons.logout_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Logout"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
