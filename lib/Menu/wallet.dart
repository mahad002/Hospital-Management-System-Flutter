import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:testing/Menu/wallet/my_button.dart';
import 'package:testing/Menu/wallet/my_card.dart';
import 'package:testing/Menu/wallet/my_list-tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _counter = 0;
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  final _controller = PageController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                style: const TextStyle(color: Color.fromARGB(255, 24, 58, 122)),
              ),
            ),
            body: Scaffold(
              backgroundColor: const Color.fromARGB(255, 241, 241, 241),
              body: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 198,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      children: const [
                        MyCard(
                          balance: 10564.45,
                          cardNumber: 123456789,
                          expiryMonth: 10,
                          expiryYear: 24,
                          color: Colors.blue,
                          name: 'Muhammad Mahad Sheikh',
                        ),
                        MyCard(
                          balance: 534.20,
                          cardNumber: 567891234,
                          expiryMonth: 12,
                          expiryYear: 23,
                          name: 'Basit Nazir',
                          color: Color.fromARGB(255, 250, 136, 6),
                        ),
                        MyCard(
                          balance: 333.20,
                          cardNumber: 987654321,
                          expiryMonth: 12,
                          expiryYear: 25,
                          color: Color.fromARGB(255, 75, 214, 82),
                          name: 'Muhammad Bilal',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          iconImagePath: 'icons/send.png',
                          buttonText: 'Send',
                          routeName: 'send',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          iconImagePath: 'icons/credit-card.png',
                          buttonText: 'Add Cash',
                          routeName: 'send',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          iconImagePath: 'icons/bill.png',
                          buttonText: 'Bill Payment',
                          routeName: 'send',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          iconImagePath: 'icons/save-money.png',
                          buttonText: 'Transactions',
                          routeName: 'send',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Column(children: const [
                      MyListTile(
                        iconImagePath: 'icons/transactions.png',
                        tileTitle: 'History',
                        tileSubtitle: 'Recent Transactions',
                      ),
                      MyListTile(
                        iconImagePath: 'icons/graph-file.png',
                        tileTitle: 'Payments',
                        tileSubtitle: 'Statistics on Payment',
                      ),
                    ]),
                  )
                ]),
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
              //Navigator.pushNamed(context, 'wallet');
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
