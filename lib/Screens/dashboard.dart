import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  State<MyHome1> createState() => _MyHome1State();
}

TextEditingController textController = TextEditingController();

class _MyHome1State extends State<MyHome1> {
  myAchiev(num, type) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Text('78',
        //  style: TextStyle(color: Colors.orange, fontSize: 30, fontWeight: FontWeight.bold),),
        // Text('Projects', style: TextStyle(color: Colors.orange)),
        Text.rich(TextSpan(
            text: num,
            style: const TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.bold),
            children: <InlineSpan>[
              TextSpan(
                text: ' ' + type,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              )
            ])),
      ],
    );
  }

  Widget search() {
    return AnimSearchBar(
        rtl: true,
        color: Colors.black,
        style: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search, color: Colors.white),
        width: 350,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        });
  }

  mySpec(icon, text) {
    return Container(
      width: 105,
      height: 115,
      color: Color.fromARGB(255, 255, 255, 255),
      margin: EdgeInsets.all(0),
      // child:
      // Card(
      //   margin: EdgeInsets.all(0),
      //   color: Color(0xff252525),
      //   shape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(context, text);
        //   },
        // ),

        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, text);
          },
          icon: Icon(icon),
          color: Colors.black,
        ),
        // Icon(
        //   icon,
        //   color: Colors.white,
        // ),
        const SizedBox(
          height: 10,
        ),
        Text(text,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 16))
      ]),
    );
    //);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 219, 219),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(color: Colors.transparent, child: search()),
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Stack(
          children: [
            // Text('This widget is below the SlidingSheet',
            //     style: TextStyle(
            //       color: Colors.orange,
            //     )),
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              // child: Image.asset(
              //   'assets/log4.png',
              //   fit: BoxFit.fill,
              // ),
            ),
          ],
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(

              // decoration: BoxDecoration(
              //   image: DecorationImage(image: AssetImage('assets/MyfirstApp.png'),fit: BoxFit.cover)
              // ),
              // margin: EdgeInsets.only(left: 20, right:20, top:30),
              height: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/log41.png'), fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     //   Expanded(child: myAchiev('08', 'Projects')),
                    //     //   Expanded(child: myAchiev('08', 'Projects')),
                    //     //   Expanded(child: myAchiev('08', 'Projects')),
                    //     myAchiev('08', 'Projects'),
                    //     myAchiev('02', 'Clients'),
                    //     myAchiev('12', 'Messages'),
                    //   ],
                    // ),
                    const SizedBox(height: 10),
                    const Text('Speacialized In',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(Icons.photo, 'Gallery'),
                            mySpec(Icons.audiotrack, 'Music'),
                            mySpec(Icons.camera, 'Camera'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(Icons.message, 'Message'),
                            mySpec(Icons.gamepad, 'Game Mod'),
                            mySpec(Icons.call, 'Call'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(Icons.settings, 'Settings'),
                            mySpec(Icons.keyboard, 'Keyboard'),
                            mySpec(Icons.search, 'Search'),
                            //SizedBox(width:),
                            // CircleAvatar(
                            //     radius: 30,
                            //     backgroundColor: Color(0xff4c505b),
                            //     child: IconButton(
                            //       color: Colors.white,
                            //       onPressed: () {
                            //         Navigator.pushNamed(context, 'sample1');
                            //       },
                            //       icon: Icon(Icons.arrow_forward),
                            //     ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
