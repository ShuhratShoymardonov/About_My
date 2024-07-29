// import 'package:flutter/material.dart';
// import 'package:shuhrat/scren/about_my.dart';
// import 'package:shuhrat/scren/my_project.dart';
// import 'package:shuhrat/scren/technal_scols.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class NavigatorBar extends StatefulWidget {
//   const NavigatorBar({super.key});

//   @override
//   State<NavigatorBar> createState() => _NavigatorBarState();
// }

// class _NavigatorBarState extends State<NavigatorBar> {
//   int _indexlist = 0;

//   List<Widget> scren_list = [
//     AboutMy(),
//     TechnalScols(),
//     MyProject(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: scren_list[_indexlist],
//       bottomNavigationBar: Container(
//         height: 90,
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 7, 57, 114),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: GNav(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             rippleColor: Color.fromARGB(255, 129, 137, 253),
//             hoverColor: Color.fromARGB(255, 113, 103, 255),
//             haptic: true,
//             tabBorderRadius: 20,
//             gap: 8,
//             color: Color.fromARGB(255, 25, 0, 255),
//             activeColor: Color.fromARGB(255, 24, 3, 255),
//             iconSize: 24,
//             tabBackgroundColor:
//                 Color.fromARGB(255, 111, 106, 255).withOpacity(0.1),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//             tabs: [
//               GButton(
//                 icon: Icons.person,
//                 text: 'About My',
//                 iconSize: 30,
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.tools,
//                 text: 'Tech Skills',
//                 iconSize: 25,
//               ),
//               GButton(
//                 icon: FontAwesomeIcons.projectDiagram,
//                 text: 'My Project',
//                 iconSize: 25,
//               ),
//             ],
//             onTabChange: (index) {
//               setState(() {
//                 _indexlist = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
