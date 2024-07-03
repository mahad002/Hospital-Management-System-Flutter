import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
        menu: buildMenu(),
        background: const Color.fromARGB(255, 24, 58, 122),
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
                style: const TextStyle(color: Color.fromARGB(255, 24, 58, 122)),
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
                    width: 360,
                    height: 1057,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 5,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 70,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 194,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 442,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 380,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 318,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 256,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 504,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 752,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 690,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 628,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 566,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 1000,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 938,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 876,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 814,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 132,
                          left: 17,
                          child: Container(
                              width: 326,
                              height: 55,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 326,
                                        height: 55,
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
                                                    204, 204, 204, 1),
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ))),
                                Positioned(
                                    top: 9,
                                    left: 10,
                                    child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Profile.png'),
                                              fit: BoxFit.fitWidth),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(38, 38)),
                                        ))),
                                const Positioned(
                                    top: 12,
                                    left: 59,
                                    child: Text(
                                      'Dr. Mahad Sheikh',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 30,
                                    left: 59,
                                    child: Text(
                                      'tab regix, paracetamol, cefixime, cetrizine, dosage m...',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 27,
                                    left: 301,
                                    child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                        ))),
                                const Positioned(
                                    top: 31,
                                    left: 307,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                const Positioned(
                                    top: 15,
                                    left: 280,
                                    child: Text(
                                      '9:57 PM',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                    ]))),
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
              //Navigator.pushNamed(context, 'chat');
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
