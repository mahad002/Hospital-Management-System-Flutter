// import 'package:flutter/material.dart';
// import 'package:sliding_sheet/sliding_sheet.dart';

// class MyHome1 extends StatefulWidget {
//   const MyHome1({Key? key}) : super(key: key);

//   @override
//   State<MyHome1> createState() => _MyHome1State();
// }

// class _MyHome1State extends State<MyHome1> {
//   myAchiev(num, type) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         // Text('78',
//         //  style: TextStyle(color: Colors.orange, fontSize: 30, fontWeight: FontWeight.bold),),
//         // Text('Projects', style: TextStyle(color: Colors.orange)),
//         Text.rich(TextSpan(
//             text: num,
//             style: TextStyle(
//                 color: Colors.orange,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold),
//             children: <InlineSpan>[
//               TextSpan(
//                 text: ' ' + type,
//                 style: TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.orange,
//                 ),
//               )
//             ])),
//       ],
//     );
//   }

//   mySpec(icon, text) {
//     return Container(
//         width: 105,
//         height: 115,
//         child: Card(
//           margin: EdgeInsets.all(0),
//           color: Color(0xff252525),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//           child: Container(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Icon(
//                 icon,
//                 color: Colors.white,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(text, style: TextStyle(color: Colors.white, fontSize: 16))
//             ]),
//           ),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         //leading: IconButton(color: Colors.black, onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),
//       ),
//       body: SlidingSheet(
//         elevation: 8,
//         cornerRadius: 50,
//         snapSpec: const SnapSpec(
//           // Enable snapping. This is true by default.
//           snap: true,
//           // Set custom snapping points.
//           snappings: [0.38, 0.7, 1.0],
//           // Define to what the snappings relate to. In this case,
//           // the total available space that the sheet can expand to.
//           positioning: SnapPositioning.relativeToAvailableSpace,
//         ),
//         // The body widget will be displayed under the SlidingSheet
//         // and a parallax effect can be applied to it.
//         body: const Center(
//             child: Text('This widget is below the SlidingSheet',
//                 style: TextStyle(
//                   color: Colors.orange,
//                 ))),
//         builder: (context, state) {
//           // This is the content of the sheet that will get
//           // scrolled, if the content is bigger than the available
//           // height of the sheet.
//           return Container(

//               // decoration: BoxDecoration(
//               //   image: DecorationImage(image: AssetImage('assets/MyfirstApp.png'),fit: BoxFit.cover)
//               // ),
//               // margin: EdgeInsets.only(left: 20, right:20, top:30),
//               height: 500,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         //   Expanded(child: myAchiev('08', 'Projects')),
//                         //   Expanded(child: myAchiev('08', 'Projects')),
//                         //   Expanded(child: myAchiev('08', 'Projects')),
//                         myAchiev('08', 'Projects'),
//                         myAchiev('02', 'Clients'),
//                         myAchiev('12', 'Messages'),
//                       ],
//                     ),
//                     SizedBox(height: 30),
//                     Text('Speacialized In',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         )),
//                     SizedBox(height: 20),
//                     Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             mySpec(Icons.android, 'Android'),
//                             mySpec(Icons.android, 'Android'),
//                             mySpec(Icons.android, 'Android'),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             mySpec(Icons.android, 'Android'),
//                             mySpec(Icons.android, 'Android'),
//                             mySpec(Icons.android, 'Android'),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             mySpec(Icons.android, 'Android'),
//                             mySpec(Icons.android, 'Android'),
//                             //SizedBox(width:),
//                             CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: Color(0xff4c505b),
//                                 child: IconButton(
//                                   color: Colors.white,
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, 'sample1');
//                                   },
//                                   icon: Icon(Icons.arrow_forward),
//                                 ))
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ));
//         },
//       ),
//     );
//   }
// }
