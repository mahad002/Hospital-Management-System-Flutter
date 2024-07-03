import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
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
              body: Container(
                  width: 360,
                  height: 640,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 322,
                        left: 4,
                        child: Container(
                            width: 352,
                            height: 268,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 0),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 44,
                        left: 4,
                        child: Container(
                            width: 352,
                            height: 270,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 54,
                        left: 308,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 261,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 214,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 167,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 119,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 72,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    Positioned(
                        top: 54,
                        left: 25,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 241, 241, 0),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 178, 255, 1),
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(27, 27)),
                            ))),
                    const Positioned(
                        top: 84,
                        left: 25,
                        child: Text(
                          'SUN',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 310,
                        child: Text(
                          'SAT',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 72,
                        child: Text(
                          'MON',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 119,
                        child: Text(
                          'TUE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 167,
                        child: Text(
                          'WED',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 215,
                        child: Text(
                          'THU',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 266,
                        child: Text(
                          'FRI',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 115,
                        left: 112,
                        child: Text(
                          'Today, 02 Nov 2022',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 175,
                        left: 332,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              //     Positioned(
                              //   top: 4,
                              //   left: 8,
                              //   child: SvgPicture.asset(
                              //   'assets/images/vector.svg',
                              //   semanticsLabel: 'vector'
                              // );
                              // ),
                            ]))),
                    Positioned(
                        top: 175,
                        left: 5,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              //     Positioned(
                              //   top: 4,
                              //   left: 7,
                              //   child: SvgPicture.asset(
                              //   'assets/images/vector.svg',
                              //   semanticsLabel: 'vector'
                              // );
                              // ),
                            ]))),
                    Positioned(
                        top: 277,
                        left: 43,
                        child: Container(
                            width: 71,
                            height: 33,
                            child: Stack(children: <Widget>[
                              const Positioned(
                                  top: 18,
                                  left: 0,
                                  child: Text(
                                    'Carbs (55%)',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(20, 73, 209, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              const Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Text(
                                    '400',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(20, 73, 209, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 277,
                        left: 150,
                        child: Container(
                            width: 61,
                            height: 33,
                            child: Stack(children: <Widget>[
                              const Positioned(
                                  top: 18,
                                  left: 0,
                                  child: Text(
                                    'Fats (25%)',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              const Positioned(
                                  top: 0,
                                  left: 17,
                                  child: Text(
                                    '100',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 277,
                        left: 248,
                        child: Container(
                            width: 84,
                            height: 33,
                            child: Stack(children: <Widget>[
                              const Positioned(
                                  top: 18,
                                  left: 0,
                                  child: Text(
                                    'Proteins (20%)',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 179, 50, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              const Positioned(
                                  top: 0,
                                  left: 29,
                                  child: Text(
                                    '40',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 179, 50, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    const Positioned(
                        top: 331,
                        left: 16,
                        child: Text(
                          'Diet',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 366,
                        left: 12,
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
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(0, 0),
                                              blurRadius: 4)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                              Positioned(
                                  top: 9,
                                  left: 11,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(40, 40)),
                                      ))),
                              const Positioned(
                                  top: 20,
                                  left: 66,
                                  child: Text(
                                    'Breakfast',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.699999988079071),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 20,
                                  left: 302,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        //     Positioned(
                                        //   top: 3,
                                        //   left: 6,
                                        //   child: SvgPicture.asset(
                                        //   'assets/images/vector.svg',
                                        //   semanticsLabel: 'vector'
                                        // );
                                        // ),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 514,
                        left: 12,
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
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(0, 0),
                                              blurRadius: 4)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                              const Positioned(
                                  top: 20,
                                  left: 66,
                                  child: Text(
                                    'Dinner',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.699999988079071),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 9,
                                  left: 11,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(40, 40)),
                                      ))),
                              Positioned(
                                  top: 20,
                                  left: 302,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        //     Positioned(
                                        //   top: 3,
                                        //   left: 6,
                                        //   child: SvgPicture.asset(
                                        //   'assets/images/vector.svg',
                                        //   semanticsLabel: 'vector'
                                        // );
                                        // ),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 440,
                        left: 12,
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
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(0, 0),
                                              blurRadius: 4)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                              const Positioned(
                                  top: 20,
                                  left: 66,
                                  child: Text(
                                    'Lunch',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.699999988079071),
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 9,
                                  left: 11,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(40, 40)),
                                      ))),
                              Positioned(
                                  top: 20,
                                  left: 302,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        //     Positioned(
                                        //   top: 3,
                                        //   left: 6,
                                        //   child: SvgPicture.asset(
                                        //   'assets/images/vector.svg',
                                        //   semanticsLabel: 'vector'
                                        // ),
                                        // ),
                                      ]))),
                            ]))),
                    const Positioned(
                        top: 14,
                        left: 70,
                        child: Text(
                          'Meals',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 15,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 14,
                        left: 242,
                        child: Text(
                          'Water',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 15,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 33,
                        left: 24,
                        child: Container(
                            width: 136,
                            height: 3,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              color: Color.fromRGBO(0, 178, 255, 1),
                            ))),
                  ]))),
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
              //Navigator.pushNamed(context, 'diet');
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
