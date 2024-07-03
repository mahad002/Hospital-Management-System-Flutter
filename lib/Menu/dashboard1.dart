// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  

  toggleMenu([bool end = false]) {
    if (end) {
      final state = _endSideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    } else {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
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
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        background: const Color.fromARGB(255, 24, 58, 122),
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (isOpened) {
          setState(() => isOpened = isOpened);
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
                  child: Container(
                      width: 360,
                      height: 640,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 20,
                            left: 16,
                            child: Container(
                                width: 329,
                                height: 77,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 0),
                                        blurRadius: 5)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        const Positioned(
                            top: 34,
                            left: 30,
                            child: Text(
                              'Welcome back!',
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
                            top: 49,
                            left: 30,
                            child: Text(
                              'Muhammad Mahad Sheikh',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 117, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 20,
                            left: 221,
                            child: Container(
                                width: 117,
                                height: 77,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(31.5),
                                    topRight: Radius.circular(31.5),
                                    bottomLeft: Radius.circular(31.5),
                                    bottomRight: Radius.circular(31.5),
                                  ),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/Rectangle116.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                        Positioned(
                            top: 108,
                            left: 16,
                            child: Container(
                                width: 329,
                                height: 136,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
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
                            top: 136,
                            left: 28,
                            child: Container(
                                width: 300.5,
                                height: 100,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 7.5,
                                      left: 17,
                                      child: Container(
                                        width: 273,
                                        height: 72,

                                        //   child: Stack(
                                        //     children: <Widget>[
                                        //       Positioned(
                                        //     top: 72,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line1.svg',
                                        //     semanticsLabel: 'line1'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 54,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line2.svg',
                                        //     semanticsLabel: 'line2'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 36,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line3.svg',
                                        //     semanticsLabel: 'line3'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 18,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line4.svg',
                                        //     semanticsLabel: 'line4'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line5.svg',
                                        //     semanticsLabel: 'line5'
                                        //   );
                                        //   ),
                                        //     ]
                                        //   )
                                        // )
                                        //   ),Positioned(
                                        //     top: 7,
                                        //     left: 17.5,
                                        //     child: Container(
                                        //   width: 272,
                                        //   height: 73,

                                        //   child: Stack(
                                        //     children: <Widget>[
                                        //       Positioned(
                                        //     top: 0,
                                        //     left: 0,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line1.svg',
                                        //     semanticsLabel: 'line1'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 24.727279663085938,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line2.svg',
                                        //     semanticsLabel: 'line2'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 49.45454406738281,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line3.svg',
                                        //     semanticsLabel: 'line3'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 74.18181610107422,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line4.svg',
                                        //     semanticsLabel: 'line4'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 98.90908813476562,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line5.svg',
                                        //     semanticsLabel: 'line5'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 123.63636016845703,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line6.svg',
                                        //     semanticsLabel: 'line6'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 148.36363220214844,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line7.svg',
                                        //     semanticsLabel: 'line7'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 173.09091186523438,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line8.svg',
                                        //     semanticsLabel: 'line8'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 197.81817626953125,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line9.svg',
                                        //     semanticsLabel: 'line9'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 222.5454559326172,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line10.svg',
                                        //     semanticsLabel: 'line10'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 247.27273559570312,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line11.svg',
                                        //     semanticsLabel: 'line11'
                                        //   );
                                        //   ),Positioned(
                                        //     top: 0,
                                        //     left: 272,
                                        //     child: SvgPicture.asset(
                                        //     'assets/images/line12.svg',
                                        //     semanticsLabel: 'line12'
                                        //   );
                                        //   ),
                                        //     ]
                                        //   )
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 7,
                                          height: 86,
                                          child: Stack(children: const <Widget>[
                                            Positioned(
                                                top: 72,
                                                left: 0,
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 54,
                                                left: 0,
                                                child: Text(
                                                  '1',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 36,
                                                left: 0,
                                                child: Text(
                                                  '2',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 18,
                                                left: 0,
                                                child: Text(
                                                  '3',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(
                                                  '5',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ]))),
                                  Positioned(
                                      top: 86,
                                      left: 6.5,
                                      child: Container(
                                          width: 294,
                                          height: 14,
                                          child: Stack(children: const <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(
                                                  'Jan',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 24.81817626953125,
                                                child: Text(
                                                  'Feb',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 49.13636779785156,
                                                child: Text(
                                                  'Mar',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 75.95454406738281,
                                                child: Text(
                                                  'Apr',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 98.7727279663086,
                                                child: Text(
                                                  'May',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 124.09091186523438,
                                                child: Text(
                                                  'Jun',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 150.90908813476562,
                                                child: Text(
                                                  'Jul',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 172.72726440429688,
                                                child: Text(
                                                  'Aug',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 199.0454559326172,
                                                child: Text(
                                                  'Sep',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 224.36363220214844,
                                                child: Text(
                                                  'Oct',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 247.18182373046875,
                                                child: Text(
                                                  'Nov',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 0,
                                                left: 273,
                                                child: Text(
                                                  'Dec',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          51, 51, 51, 1),
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ]))),
                                  Positioned(
                                      top: 21.60009765625,
                                      left: 17,
                                      child: Container(
                                        width: 273,
                                        height: 58.400001525878906,

                                        // child: Stack(
                                        //   children: <Widget>[
                                        //     Positioned(
                                        //   top: 0,
                                        //   left: 0,
                                        //   child: SvgPicture.asset(
                                        //   'assets/images/area1.svg',
                                        //   semanticsLabel: 'area1'
                                        // );
                                        // ),Positioned(
                                        //   top: 0,
                                        //   left: 0,
                                        //   child: SvgPicture.asset(
                                        //   'assets/images/line1.svg',
                                        //   semanticsLabel: 'line1'
                                        // );
                                        // ),
                                        //   ]
                                        // )
                                      )),
                                  Positioned(
                                      top: 19.10009765625,
                                      left: 14.5,
                                      child: Container(
                                          width: 278,
                                          height: 63.39990234375,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 58.39990234375,
                                                left: 0,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 43.7998046875,
                                                left: 24.81817626953125,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 29.199951171875,
                                                left: 49.63636779785156,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 58.39990234375,
                                                left: 74.45454406738281,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 14.599853515625,
                                                left: 99.2727279663086,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 43.7998046875,
                                                left: 124.09091186523438,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 29.199951171875,
                                                left: 148.90908813476562,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 0,
                                                left: 173.72726440429688,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 29.199951171875,
                                                left: 198.5454559326172,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 14.599853515625,
                                                left: 223.36363220214844,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 43.7998046875,
                                                left: 248.18182373046875,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                            Positioned(
                                                top: 29.199951171875,
                                                left: 273,
                                                child: Container(
                                                    width: 5,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      border: Border.all(
                                                        color: const Color
                                                                .fromRGBO(
                                                            14, 156, 255, 1),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.elliptical(
                                                                  5, 5)),
                                                    ))),
                                          ]))),
                                ]))),
                        const Positioned(
                            top: 122,
                            left: 30,
                            child: Text(
                              'Your Visits this Year',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 117, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 255,
                            left: 16,
                            child: Container(
                                width: 155,
                                height: 86,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        const Positioned(
                            top: 263,
                            left: 27,
                            child: Text(
                              'Your Appointments',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 117, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 255,
                            left: 185,
                            child: Container(
                                width: 155,
                                height: 86,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        const Positioned(
                            top: 284,
                            left: 251,
                            child: Text(
                              '10',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        const Positioned(
                            top: 263,
                            left: 197,
                            child: Text(
                              'Your Reports this Year',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 117, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 310,
                            left: 35,
                            child: Container(
                                width: 118,
                                height: 27,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                ))),
                        const Positioned(
                            top: 314,
                            left: 50,
                            child: Text(
                              'Book Appo...',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 310,
                            left: 203,
                            child: Container(
                                width: 118,
                                height: 27,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                ))),
                        const Positioned(
                            top: 314,
                            left: 220,
                            child: Text(
                              'Book Report',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        const Positioned(
                            top: 284,
                            left: 82,
                            child: Text(
                              '21',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 351,
                            left: 16,
                            child: Container(
                                width: 324,
                                height: 130,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
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
                            top: 492,
                            left: 16,
                            child: Container(
                                width: 324,
                                height: 105,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        const Positioned(
                            top: 502,
                            left: 27,
                            child: Text(
                              'Appointment History',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                          top: 481,
                          left: 27,
                          child: IconButton(
                            icon: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 40.0,
                              //backgroundImage: AssetImage('assets/Profile.png'),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'appointments');
                            },
                          ),
                        ),

                        Positioned(
                            top: 383,
                            left: 28,
                            child: Container(
                                width: 304,
                                height: 73,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 304,
                                          height: 73,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.25),
                                                  offset: Offset(0, 0),
                                                  blurRadius: 4)
                                            ],
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ))),
                                  const Positioned(
                                      top: 48,
                                      left: 169,
                                      child: Text(
                                        '01 Nov 2022',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 11,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  const Positioned(
                                      top: 48,
                                      left: 65,
                                      child: Text(
                                        'Prescription Date: ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 11,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  const Positioned(
                                      top: 33,
                                      left: 176,
                                      child: Text(
                                        'Dengue',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 178, 255, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 11,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  const Positioned(
                                      top: 33,
                                      left: 65,
                                      child: Text(
                                        'Diagnosed Disease: ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 11,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 13,
                                      left: 6,
                                      child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(50, 50)),
                                          ))),
                                  const Positioned(
                                      top: 14,
                                      left: 65,
                                      child: Text(
                                        'Dr. Muhammad Bilal',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 13,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  // Positioned(
                                  //   top: 30,
                                  //   left: 286,
                                  //   child: SvgPicture.asset(
                                  //   'assets/images/vector.svg',
                                  //   semanticsLabel: 'vector'
                                  // ),
                                  // ),
                                ]))),
                        const Positioned(
                            top: 359,
                            left: 27,
                            child: Text(
                              'Prescription History',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                          top: 341,
                          left: 27,
                          child: IconButton(
                            icon: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 40.0,
                              //backgroundImage: AssetImage('assets/Profile.png'),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'prescription');
                            },
                          ),
                        ),

                        const Positioned(
                            top: 461,
                            left: 146,
                            child: Text(
                              'See more',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        const Positioned(
                            top: 574,
                            left: 146,
                            child: Text(
                              'See more',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 526,
                            left: 27,
                            child: Container(
                                width: 305,
                                height: 43,
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
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        const Positioned(
                            top: 550,
                            left: 155,
                            child: Text(
                              '07 Nov 2022, 05:00 P.M',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 132, 255, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        const Positioned(
                            top: 535,
                            left: 83,
                            child: Text(
                              'Dr. Basit Nazir',
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
                        Positioned(
                            top: 530,
                            left: 39,
                            child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(35, 35)),
                                ))),
                        const Positioned(
                            top: 550,
                            left: 83,
                            child: Text(
                              'Date & Time: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        // Positioned(
                        //   top: 584,
                        //   left: 318,
                        //   child: SvgPicture.asset(
                        //   'assets/images/vector.svg',
                        //   semanticsLabel: 'vector'
                        // ),
                        // ),
                        // const Positioned(
                        //     top: 15,
                        //     left: 53,
                        //     child: Text(
                        //       'Dashboard',
                        //       textAlign: TextAlign.left,
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(0, 132, 255, 1),
                        //           fontFamily: 'Roboto',
                        //           fontSize: 16,
                        //           letterSpacing:
                        //               0 /*percentages not used in flutter. defaulting to zero*/,
                        //           fontWeight: FontWeight.normal,
                        //           height: 1),
                        //     )),
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
              //Navigator.pushNamed(context, 'menu');
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
