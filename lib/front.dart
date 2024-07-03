import 'package:flutter/material.dart';

class front extends StatefulWidget {
  const front({Key? key}) : super(key: key);

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.asset(
            'assets/Front.png',
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 100, width: 100),
        Container(
          padding: const EdgeInsets.only(left: 160, top: 650),
          child: CircleAvatar(
              //radius: 15,
              //backgroundColor: const Color(0xff4c505b),
              //elevation: 1.0,
              child: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: const Icon(Icons.arrow_upward),
          )),
        ),
      ],
    ));
  }
}
