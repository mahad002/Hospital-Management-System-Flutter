import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:testing/ahmed.dart';

class sample1 extends StatefulWidget {
  const sample1({Key? key}) : super(key: key);

  @override
  State<sample1> createState() => _sample1State();
}

int _selectedIndex = 0;

class _sample1State extends State<sample1> {
  onTapTapped(int val) {
    setState(() {
      _selectedIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Color.fromARGB(255, 211, 47, 47),
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: new Icon(Icons.explore),
                label: 'Explore',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: new Icon(Icons.chat_bubble_outline),
                label: 'Chats',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.black),
          ],
        ),
        appBar: AppBar(
          title: Text("Mahad Sheikh"),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text("This is the Widget behind the sliding panel"),
            ),
            SlidingUpPanel(
              panel: Center(
                child: Text("This is the sliding Widget"),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, 'ahmed');
                      },
                      icon: Icon(Icons.arrow_forward),
                    ))
              ],
            )
          ],
        ));
  }
}
