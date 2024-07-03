import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        type: SideMenuType.shrinkNSlide,
        background: const Color.fromARGB(255, 24, 58, 122),
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
                    //Navigator.pushNamed(context, 'profile');
                  },
                ),
              ],
              title: Text(
                widget.title,
                style: const TextStyle(color: Color.fromARGB(255, 24, 58, 122)),
              ),
            ),
            body: Center(
              child: ListView(
                reverse: false,
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 24, 58, 122),
                    radius: 70,
                    child: CircleAvatar(
                      radius: 67,
                      backgroundImage: AssetImage("assets/Profile.png"),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Muhammad Mahad Sheikh",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 24, 58, 122),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "mahad082002@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 24, 58, 122),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 217, 243),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 30,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     Personel Information",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 24, 58, 122),
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 150,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "    Name:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  "    Father Name:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "    Gender:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "    Date of Birth:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Muhammad Mahad Sheikh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Muhammad Yaqoob",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "08/11/2002",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 217, 243),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 30,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     Education",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 24, 58, 122),
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "    Latest Degree:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Alevels                                   ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 217, 243),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 30,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     Allergies",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 24, 58, 122),
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "    Dust Allergy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 217, 243),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 30,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     Diseases Recovered",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 24, 58, 122),
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 150,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "     Dengue:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "     Typhoid:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "     Malaria:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "     Covid:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "02/11/22  to  15/11/22",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "17/07/22  to  03/08/22",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "23/05/21  to  01/06/21",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                                Text(
                                  "02/01/22  to  05/02/22",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 24, 58, 122),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 217, 243),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 30,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "     Disabilities",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 24, 58, 122),
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 150,
                    width: double.infinity,
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "     None",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 19, 108, 150),
                                  ),
                                  //textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      // Text(
                      //   "     Elergies",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w900,
                      //     fontSize: 15.0,
                      //     color: Color.fromARGB(255, 24, 58, 122),
                      //   ),
                      //   //textAlign: TextAlign.left,
                      // ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
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
              //Navigator.pushNamed(context, 'profile');
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
