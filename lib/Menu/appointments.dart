import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int _counter = 0;
  bool isOpened = false;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController searchController = TextEditingController();
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
    final searchField = TextFormField(
      autofocus: false,
      controller: searchController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: 'Search Category',
        contentPadding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: const Color.fromARGB(255, 40, 78, 160),
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
                style: const TextStyle(color: Color.fromARGB(255, 24, 58, 122)),
              ),
            ),
            body: Center(
              child: Stack(children: [
                Positioned(
                    top: 64,
                    left: 102,
                    child: SizedBox(
                        width: 143,
                        height: 59,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 13,
                              left: 0,
                              child: Container(
                                width: 140,
                                height: 31,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(2, 3),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(0, 176, 255, 1),
                                ),
                                child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Dermatologist',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              )),
                        ]))),
                Positioned(
                    top: 134,
                    left: 102,
                    child: SizedBox(
                        width: 140,
                        height: 31,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 31,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Cardiologists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 191,
                    left: 104,
                    child: SizedBox(
                        width: 140,
                        height: 31,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 31,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(61, 0, 0, 0),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Endocrinologists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 248,
                    left: 104,
                    child: SizedBox(
                        width: 140,
                        height: 30,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 30,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Urologists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 304,
                    left: 105,
                    child: SizedBox(
                        width: 140,
                        height: 31,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 31,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Neurologists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 361,
                    left: 105,
                    child: SizedBox(
                        width: 140,
                        height: 31,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 31,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Psychiatrists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 418,
                    left: 105,
                    child: SizedBox(
                        width: 140,
                        height: 31,
                        child: Stack(children: <Widget>[
                          Container(
                            width: 140,
                            height: 31,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(2, 3),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 176, 255, 1),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Radiologists',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ),
                        ]))),
                Positioned(
                    top: 526,
                    left: 83,
                    child: SizedBox(
                        width: 183,
                        height: 41.86274337768555,
                        child: Stack(children: <Widget>[
                          InkWell(
                            child: Container(
                              width: 183,
                              height: 41.86274337768555,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(2, 3),
                                      blurRadius: 4)
                                ],
                                color: Color.fromRGBO(0, 132, 255, 1),
                              ),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Confirm',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ),
                            onTap: () {
                              print("Click event on Container");
                            },
                          )
                        ]))),
                Positioned(
                    top: 0,
                    left: 30,
                    child: SizedBox(
                        width: 296,
                        height: 48,
                        child: Stack(children: <Widget>[
                          Form(
                              key: _formKey,
                              child: Column(children: <Widget>[
                                searchField,
                                const SizedBox(
                                  height: 0,
                                ),
                              ])),
                        ]))),
              ]),
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
              //Navigator.pushNamed(context, 'appointments');
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
