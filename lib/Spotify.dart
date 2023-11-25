// import 'package:demo_project1/screens/constants.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int cIndex = 0;
//   List<BottomNavigationBarItem> navigationIcons() {
//     return [
//       bottomBar(
//           x: "https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/home-line-128.png",
//           y: "Home"),
//       bottomBar(
//           x: "https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/search-line-128.png",
//           y: "Search"),
//       bottomBar(
//           x: "https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/your-library-line-128.png",
//           y: "Your Library"),
//       bottomBar(
//           x: "https://www.pngitem.com/pimgs/m/521-5214417_spotify-icon-transparent-background-png-download-spotify-logo.png",
//           y: "Premium")
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     List pages = [
//       Container(
//         child: Center(
//           child: Text("Home"),
//         ),
//       ),
//       Container(
//         child: Center(
//           child: Text("Search"),
//         ),
//       ),
//       Container(
//         child: Center(
//           child: Text("Library"),
//         ),
//       ),
//       Container(
//         child: Center(
//           child: Text("Premium"),
//         ),
//       ),
//     ];
//     return Scaffold(
//       backgroundColor: black,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: cIndex,
//         selectedFontSize: 10.0,
//         unselectedFontSize: 10.0,
//         iconSize: 20.0,
//         onTap: (int val) {
//           setState(() {
//             cIndex = val;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         elevation: 50.0,
//         selectedItemColor: white,
//         unselectedItemColor: grey,
//         items: navigationIcons(),
//       ),
//       body: pages[cIndex],
//     );
//   }

//   bottomBar({required String x, required String y}) {
//     return BottomNavigationBarItem(
//       icon: Padding(
//         padding: EdgeInsets.all(0),
//         child: Image(
//           image: NetworkImage(x),
//           width: 25,
//           height: 23,
//           color: Colors.grey,
//         ),
//       ),
//       label: y,
//     );
//   }
// }
