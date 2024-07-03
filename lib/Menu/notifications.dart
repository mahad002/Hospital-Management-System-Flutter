import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                  style:
                      const TextStyle(color: Color.fromARGB(255, 24, 58, 122)),
                ),
              ),
              body: SingleChildScrollView(
                  child: // Figma Flutter Generator Androidsmall73Widget - FRAME
                      Container(
                          width: 360,
                          height: 1021,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(children: <Widget>[
                            const Positioned(
                                top: 19,
                                left: 14,
                                child: Text(
                                  'You have 2 notifications today',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            const Positioned(
                                top: 43,
                                left: 15,
                                child: Text(
                                  'Today',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            const Positioned(
                                top: 205,
                                left: 14,
                                child: Text(
                                  'This Week',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            const Positioned(
                                top: 367,
                                left: 14,
                                child: Text(
                                  'Earlier',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 76,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 26,
                                          left: 5,
                                          child: Container(
                                              width: 6,
                                              height: 6,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(6, 6)),
                                              ))),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 235,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child: Stack(
                                                  children: const <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 538,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 893,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 822,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 751,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 680,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 609,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 400,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 467,
                                left: 14,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 301,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                            Positioned(
                                top: 139,
                                left: 13,
                                child: Container(
                                    width: 333,
                                    height: 57,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 333,
                                              height: 57,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.25),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 4)
                                                ],
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ))),
                                      Positioned(
                                          top: 6,
                                          left: 16,
                                          child: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    217, 217, 217, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(45, 45)),
                                              ))),
                                      const Positioned(
                                          top: 16,
                                          left: 65,
                                          child: Text(
                                            'Dr. Muhammad Bilal',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 11,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      const Positioned(
                                          top: 17,
                                          left: 173,
                                          child: Text(
                                            'prescribed you some medicines.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 26,
                                          left: 5,
                                          child: Container(
                                              width: 6,
                                              height: 6,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    0, 132, 255, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(6, 6)),
                                              ))),
                                      const Positioned(
                                          top: 32,
                                          left: 65,
                                          child: Text(
                                            '2 hrs ago',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 10,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                          top: 42,
                                          left: 316,
                                          child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                              ),
                                              child:
                                                  Stack(children: <Widget>[]))),
                                    ]))),
                          ])))),
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
              Navigator.pushNamed(context, 'lab');
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
              //Navigator.pushNamed(context, 'notification');
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
