import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //late FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/log4.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          //body: const Center(child: Text('Your app body')),
          appBar: AppBar(
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Spacer(),
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, 'menu');
                    },
                    icon: Icon(Icons.arrow_forward),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionChip(
                    label: Text("Logout"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    labelPadding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 1,
                      bottom: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120),
            ],
          ),
        ) //child: const Text("My HOME!"),
        );
  }
}
