import 'package:flutter/material.dart';

class send extends StatefulWidget {
  @override
  _sendState createState() => _sendState();
}

class _sendState extends State<send> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 640,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              color: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,
                  color: Color.fromARGB(255, 24, 58, 122)),
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(children: <Widget>[
              Positioned(
                  top: 211,
                  left: 30,
                  child: Container(
                      width: 296,
                      height: 40,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 296,
                                height: 40,
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
                                        offset: Offset(0, 1),
                                        blurRadius: 5)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        Positioned(
                            top: 10,
                            left: 252,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            )),
                        const Positioned(
                            top: 14,
                            left: 19,
                            child: Text(
                              'Search Bank by Name',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(121, 121, 121, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]))),
              Positioned(
                  top: 74,
                  left: 4,
                  child: Container(
                      width: 352,
                      height: 25,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color: Color.fromRGBO(173, 235, 255, 1),
                      ))),
              Positioned(
                  top: 179,
                  left: 148,
                  child: Container(
                      width: 60,
                      height: 20,
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
                  top: 79,
                  left: 19,
                  child: Text(
                    'Your Favourites',
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
                  top: 111,
                  left: 33,
                  child: Container(
                      width: 63,
                      height: 59,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 7,
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(42, 42)),
                                ))),
                        const Positioned(
                            top: 44,
                            left: 0,
                            child: Text(
                              'Basit Nazir',
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
                      ]))),
              Positioned(
                  top: 111,
                  left: 249,
                  child: Container(
                      width: 83,
                      height: 59,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 19,
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(42, 42)),
                                ))),
                        const Positioned(
                            top: 44,
                            left: 0,
                            child: Text(
                              'Mahad Sheikh',
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
                      ]))),
              Positioned(
                  top: 111,
                  left: 132,
                  child: Container(
                      width: 96,
                      height: 59,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 22,
                            child: Container(
                                width: 42,
                                height: 42,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(42, 42)),
                                ))),
                        const Positioned(
                            top: 44,
                            left: 0,
                            child: Text(
                              'Muhammad Bilal',
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
                      ]))),
              const Positioned(
                  top: 181,
                  left: 158,
                  child: Text(
                    'See all',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Inter',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 266,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        const Positioned(
                            top: 17,
                            left: 69,
                            child: Text(
                              'Habib Metro Bank',
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
                            top: 16,
                            left: 297,
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
                  top: 591,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        const Positioned(
                            top: 17,
                            left: 69,
                            child: Text(
                              'Habib Metro Bank',
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
                            top: 16,
                            left: 297,
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
                  top: 526,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        const Positioned(
                            top: 17,
                            left: 69,
                            child: Text(
                              'Habib Metro Bank',
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
                            top: 16,
                            left: 297,
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
                  top: 461,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        // Positioned(
                        //   top: 17,
                        //   left: 69,
                        //   child: Text('Habib Metro Bank', textAlign: TextAlign.left, style: TextStyle(
                        //   color: Color.fromRGBO(0, 0, 0, 1),
                        //   fontFamily: 'Inter',
                        //   fontSize: 12,
                        //   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        //   fontWeight: FontWeight.normal,
                        //   height: 1
                        // ),)
                        // ),
                        Positioned(
                            top: 16,
                            left: 297,
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
                  top: 396,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        const Positioned(
                            top: 17,
                            left: 69,
                            child: Text(
                              'Habib Metro Bank',
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
                            top: 16,
                            left: 297,
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
                  top: 331,
                  left: 13,
                  child: Container(
                      width: 333,
                      height: 50,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 333,
                                height: 50,
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
                                        offset: Offset(0, 0),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                        // Positioned(
                        //   top: 5,
                        //   left: 12,
                        //   child: SvgPicture.asset(
                        //   'assets/images/ellipse10.svg',
                        //   semanticsLabel: 'ellipse10'
                        // );
                        // ),
                        const Positioned(
                            top: 17,
                            left: 69,
                            child: Text(
                              'Habib Metro Bank',
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
                            top: 16,
                            left: 297,
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
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 47,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ))),
              Positioned(
                  top: 17,
                  left: 18,
                  child: Container(
                      width: 19.503992080688477,
                      height: 14,
                      child: Stack(children: <Widget>[
                        //     Positioned(
                        //   top: 0,
                        //   left: 0,
                        //   child: SvgPicture.asset(
                        //   'assets/images/vector.svg',
                        //   semanticsLabel: 'vector'
                        // );
                        // ),
                      ]))),
              Positioned(
                  top: 8,
                  left: 323,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Ellipse56.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ))),
              const Positioned(
                  top: 15,
                  left: 53,
                  child: Text(
                    'Send Money',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 132, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 47,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ))),
              Positioned(
                  top: 17,
                  left: 18,
                  child: Container(
                      width: 19.503992080688477,
                      height: 14,
                      child: Stack(children: <Widget>[
                        //     Positioned(
                        //   top: 0,
                        //   left: 0,
                        //   child: SvgPicture.asset(
                        //   'assets/images/vector.svg',
                        //   semanticsLabel: 'vector'
                        // );
                        // ),
                      ]))),
              Positioned(
                  top: 8,
                  left: 323,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Ellipse56.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ))),
              const Positioned(
                  top: 15,
                  left: 53,
                  child: Text(
                    'Send Money',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 132, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
            ]),
          )),
    );
  }
}
