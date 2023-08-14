// // import 'package:flutter/material.dart';
// //
// // import '../modal/sliding_modal.dart';
// //
// // class Slid_manu extends StatefulWidget {
// //   final Function(int) _onMenuItemSelection;
// //
// //   Slid_manu({
// //     @required Function onMenuItemSelection,
// //   }) : _onMenuItemSelection = onMenuItemSelection;
// //
// //   @override
// //   State<Slid_manu> createState() => _Slid_manuState();
// // }
// //
// // class _Slid_manuState extends State<Slid_manu> {
// //   int _currentPage = 0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       builder: (context, constraints) {
// //         return SingleChildScrollView(
// //           child: ConstrainedBox(
// //             constraints: BoxConstraints(minHeight: constraints.maxHeight),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 SizedBox(height: 16),
// //                 Padding(
// //                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
// //                   child: Text('Account Balance'),
// //                 ),
// //                 Padding(
// //                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
// //                   child: Row(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: <Widget>[
// //                       Padding(
// //                         padding: const EdgeInsets.all(8.0),
// //                         child: Text(
// //                           '₹',
// //                           textAlign: TextAlign.start,
// //                           style: TextStyle(
// //                             color: Colors.black,
// //                             fontSize: 24,
// //                           ),
// //                         ),
// //                       ),
// //                       Text(
// //                         '299',
// //                         textAlign: TextAlign.start,
// //                         style: TextStyle(
// //                           color: Colors.black,
// //                           fontSize: 48,
// //                         ),
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: 32),
// //                 ListView.builder(
// //                   shrinkWrap: true,
// //                   physics: NeverScrollableScrollPhysics(),
// //                   itemBuilder: (context, index) {
// //                     return Padding(
// //                       padding: const EdgeInsets.all(16.0),
// //                       child: GestureDetector(
// //                         child: Row(
// //                           children: <Widget>[
// //                             Icon(
// //                               menuItems[index].menuIcon,
// //                               color: index == _currentPage
// //                                   ? Colors.blue
// //                                   : Colors.black,
// //                             ),
// //                             SizedBox(width: 16),
// //                             Text(
// //                               menuItems[index].menuName,
// //                               style: TextStyle(
// //                                 color: index == _currentPage
// //                                     ? Colors.blue
// //                                     : Colors.black,
// //                                 fontSize: 16,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         onTap: () {
// //                           widget._onMenuItemSelection(index);
// //                           setState(() {
// //                             _currentPage = index;
// //                           });
// //                         },
// //                       ),
// //                     );
// //                   },
// //                   itemCount: menuItems.length,
// //                 ),
// //                 SizedBox(height: 16),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
//
// import '../modal/sliding_modal.dart';
//
//
// class SideMenu extends StatefulWidget {
//   final Function(int) _onMenuItemSelection;
//
//   const SideMenu({super.key, required this._onMenuItemSelection});
//
//
//
//   @override
//   _SideMenuState createState() => _SideMenuState();
// }
//
// class _SideMenuState exten ds State<SideMenu> {
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return SingleChildScrollView(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(minHeight: constraints.maxHeight),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(height: 16),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//                   child: Text('Account Balance'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           '₹',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 24,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         '299',
//                         textAlign: TextAlign.start,
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 48,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 32),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: GestureDetector(
//                         child: Row(
//                           children: <Widget>[
//                             Icon(
//                               menuItems[index].menuIcon,
//                               color: index == _currentPage
//                                   ? Colors.blue
//                                   : Colors.black,
//                             ),
//                             SizedBox(width: 16),
//                             Text(
//                               menuItems[index].menuName,
//                               style: TextStyle(
//                                 color: index == _currentPage
//                                     ? Colors.blue
//                                     : Colors.black,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ],
//                         ),
//                         onTap: () {
//                           widget._onMenuItemSelection(index);
//                           setState(() {
//                             _currentPage = index;
//                           });
//                         },
//                       ),
//                     );
//                   },
//                   itemCount: menuItems.length,
//                 ),
//                 SizedBox(height: 16),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }