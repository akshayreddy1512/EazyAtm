// import 'package:case3/home/model/tutorialpage_info.dart';
// import 'package:flutter/material.dart';
// // ignore: depend_on_referenced_packages
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class MyTutorialPage extends StatefulWidget {
//   MyTutorialPage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyTutorialPage> createState() => _MyTutorialPageState();
//
// }
//
// class _MyTutorialPageState extends State<MyTutorialPage> {
//   final _pageController = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               children: <Widget>[
//                 _page1(),
//                 _page2(),
//                 _page3(),
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 padding: const EdgeInsets.all(50),
//                 child: Center(
//                   child: SmoothPageIndicator(
//                     controller: _pageController,
//                     count: 3,
//                     onDotClicked: (index) =>
//                         _pageController.animateToPage(
//                           index,
//                           duration: const Duration(seconds: 2),
//                           curve: Curves.easeInCubic,
//                         ),
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Skip',
//                   style: TextStyle(
//                     color: Colors.red,
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _page3() {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   'Eazy Atm',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.red,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Pay Your \nCredit Card Bill',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.indigo,
//                     fontSize: 25,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Fugiat nulla pariatur Nemo enim ipasm \nvoluptatem quia voluptas',
//                   textAlign: TextAlign.justify,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'images1/p2.JPG',
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _page2() {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   'Eazy Atm',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.red,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Cashout Anywhere \nNo ATM No Problem ',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.indigo,
//                     fontSize: 25,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Fugiat nulla pariatur Nemo enim ipasm \nvoluptatem quia voluptas',
//                   textAlign: TextAlign.justify,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'images1/p2.JPG',
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _page1() {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const Text(
//                   'Eazy Atm',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.red,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Send Money \nTo AnyOne',
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.indigo,
//                     fontSize: 25,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Fugiat nulla pariatur Nemo enim ipasm \nvoluptatem quia voluptas',
//                   textAlign: TextAlign.justify,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.black45,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//                 Center(
//                   child: Image.asset('images1/p1.JPG'),
//                 ),
//                 const Spacer(
//                   flex: 2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   }
//
//
//
