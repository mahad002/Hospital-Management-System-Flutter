// import 'package:anim_search_bar/anim_search_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:testing/Sample1.dart';
// import 'package:testing/home.dart';
// import 'package:testing/login.dart';
// import 'package:testing/portfolio.dart';

// class ahmed extends StatefulWidget {
//   const ahmed({Key? key}) : super(key: key);

//   @override
//   State<ahmed> createState() => _ahmedState();
// }

// TextEditingController textController = TextEditingController();
// int _selectedIndex = 0;

// class _ahmedState extends State<ahmed> {
//   changeDestination(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   Widget search() {
//     return AnimSearchBar(
//         rtl: true,
//         color: Colors.grey,
//         style: TextStyle(color: Colors.white),
//         prefixIcon: Icon(Icons.search, color: Colors.black),
//         width: 350,
//         textController: textController,
//         onSuffixTap: () {
//           setState(() {
//             textController.clear();
//           });
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.grey[500],
//         title: Container(color: Colors.grey, child: search()),
//       ),
//       body: SafeArea(
//         child: Container(
//           //padding: EdgeInsets.all(10),
//           child: Row(
//             children: <Widget>[
//               NavigationRail(
//                 selectedIndex: _selectedIndex,
//                 minWidth: 50,
//                 onDestinationSelected: changeDestination,
//                 destinations: const <NavigationRailDestination>[
//                   NavigationRailDestination(
//                       icon: Icon(Icons.house_outlined),
//                       label: Text('Home'),
//                       selectedIcon: Icon(Icons.house)),
//                   NavigationRailDestination(
//                       icon: Icon(Icons.star_border),
//                       label: Text('Favorites'),
//                       selectedIcon: Icon(Icons.star)),
//                   NavigationRailDestination(
//                       icon: Icon(Icons.account_circle_outlined),
//                       label: Text('Profile'),
//                       selectedIcon: Icon(Icons.account_circle)),
//                   NavigationRailDestination(
//                       icon: Icon(Icons.bookmark_border),
//                       selectedIcon: Icon(Icons.book),
//                       label: Text('Bookmark')),
//                   NavigationRailDestination(
//                       icon: Icon(Icons.favorite_border),
//                       selectedIcon: Icon(Icons.favorite),
//                       label: Text('Like')),
//                   //NavigationRailDestination(icon: Icon(Icons.arrow_back), label: Text('Back'), selectedIcon: Icon(Icons.arrow_back)),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.android_outlined),
//                     label: Text('About'),
//                     selectedIcon: Icon(Icons.android_outlined),
//                   ),
//                   NavigationRailDestination(
//                     icon: Icon(Icons.settings),
//                     label: Text('Setting'),
//                     selectedIcon: Icon(Icons.settings),
//                   ),
//                 ],
//                 labelType: NavigationRailLabelType.all,
//                 selectedLabelTextStyle: TextStyle(color: Colors.blue[500]),
//                 unselectedLabelTextStyle: TextStyle(color: Colors.grey[500]),
//                 elevation: 5,
//                 useIndicator: true,
//                 backgroundColor: Colors.grey[50],
//                 indicatorColor: Colors.cyan[50],
//               ),
//               Expanded(child: buildpages()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildpages() {
//     switch (_selectedIndex) {
//       case 0:
//         return MyHome();
//       case 1:
//         return MyHome1();
//       case 2:
//         return Mylogin();
//       case 3:
//         return sample1();
//       case 4:
//         return sample1();
//     }
//     return Container(
//       padding: EdgeInsets.only(left: 40, top: 0),
//       child: Text(
//         'Welcome\nBack',
//         style: TextStyle(
//           color: Colors.blue,
//           fontSize: 33,
//         ),
//       ),
//     );
//   }
// }
